/**********************************************************
 * Otsu's threshold computation for color and gray images
 * having bi-modal histogram of luminance values.
 **********************************************************/

#include <stdint.h>
#include <print.h>
#include <xassert.h>

#include "otsu_threshold.h"
#include "sdram.h"
#include "image_sensor_defines.h"


int object_localization_otsu_threshold(chanend c_sdram, unsigned imgSDRAMbank, unsigned imgSDRAMrow, unsigned imgHeight, unsigned imgWidth)
{
	unsigned hist_range,min,max;
	unsigned P[256];		// Cumulative sum
	unsigned binSum;		// Sum of bin values of normalised histogram
	unsigned MG;			// Global Intensity Mean equivalent
	int m_var[256];			// Between-class variance
	int maxVar=0;
	int m1_diff[256],m2_hist[256];		// Class means and histogram. Variables reused
	short i,j,k,warn=0;
	unsigned kStar=0, count;			// Otsu's threshold
	unsigned buffer[MAX_WIDTH/2];		// Buffer for storing an image row
	intptr_t bufferPtr;

	// Init Histogram values
	for (k=0; k<256; k++) m2_hist[k]=0;

	// Init buffer pointer
	asm("mov %0, %1" : "=r"(bufferPtr) : "r"(buffer));

    unsigned widthWords = imgWidth/2;
    unsigned rowIncrement = (imgWidth/SDRAM_COL_COUNT)+1;

	// Read image from SDRAM through display manager and find histogram
	for (int line=0; line<imgHeight; line++){

        unsigned startRow = imgSDRAMrow + line*rowIncrement;
        sdram_buffer_read_p(c_sdram, imgSDRAMbank, startRow, 0, widthWords, bufferPtr);
        sdram_wait_until_idle_p(c_sdram,bufferPtr);

		for (int c=0; c<imgWidth; c++){
			unsigned short rgb565 = (buffer,unsigned short[])[c];
			unsigned char green = (rgb565 & 0x7E0) >> 3; //Green component
			m2_hist[green]++;
		}

	}


	// Do histogram normalisation to avoid large values. The shape of the histogram is still preserved.

	// Find min & max of histogram values
	min = max = m2_hist[0];
	for(k=1;k<256;k++)
	{
		if (m2_hist[k]<min) min=m2_hist[k];
		if (m2_hist[k]>max) max=m2_hist[k];
	}


	// Initial histogram normalised to the range [0,HIST_RANGE].

	for (k=0;k<256;k++)
		m2_hist[k] = (m2_hist[k]-min)*OTSU_THRESHOLD_HIST_RANGE/(max-min);
	hist_range = OTSU_THRESHOLD_HIST_RANGE;


	// Compute cumulative sum and mean for all k

	P[0]=m2_hist[0]; m_var[0]=0;
	for (k=1;k<256;k++)
	{
		P[k]=P[k-1]+m2_hist[k];				// Cumulative sum
		m_var[k]=m_var[k-1]+(k*m2_hist[k]);	// Cumulative mean
	}

	binSum = P[255]; // Sum of all bin values of histogram
	MG=m_var[255];	// Equivalent of global intensity mean

	// Find class means m1 and m2
	for (k=0;k<256;k++){
		if (P[k] && (binSum-P[k])){	// Test for zero denominator
			m1_diff[k] = m_var[k]/P[k];
			m2_hist[k] = (MG-m_var[k])/(binSum-P[k]);
			m1_diff[k]=m1_diff[k]-m2_hist[k];
		}
	}


	while (hist_range >5){	// Lower limit for hist_range

		// Find variance and determine the threshold
		for(k=0;k<256;k++){
			if (P[k] && (binSum-P[k])){	// compute for valid m1 and m2

				m_var[k]=P[k]*(binSum-P[k])*m1_diff[k]*m1_diff[k];	// '1' is replaced with 'binSum' as we are not considering a different normalized histogram

				if (m_var[k]<0)	{	// Negative variance value means out of size of 'int'. Do fresh computations with reduced hist_range.
					warn = 1;
					break;
				}

				if(m_var[k]>maxVar) {maxVar=m_var[k]; kStar=k; count=1;}
				if(m_var[k]==maxVar) {kStar+=k; count++;}
			}
		}

		if (warn==0) 	// Successfully found variance with the current hist_range
			break;		// Come out of while loop


		// Update the variables for the next iteration

		for (k=0;k<256;k++) P[k] = P[k] >> 1; // as histogram range halved
		warn=0; kStar=0; count=0; maxVar=0;	// Reset variables for the next loop
		hist_range = hist_range >> 1; binSum = binSum >> 1;

	}

	assert((hist_range>=5) && msg("Could not find Otsu's threshold due to negative variance"));

	kStar /= count;
	return (kStar);

}

