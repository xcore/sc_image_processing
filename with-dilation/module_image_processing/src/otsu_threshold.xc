/**********************************************************
 * Otsu's threshold computation for color and gray images
 * having bi-modal histogram of luminance values.
 **********************************************************/

#include <stdint.h>
#include <print.h>
#include <assert.h>

#include "otsu_threshold.h"
#include "display_manager.h"
#include "lcd.h"


int image_processing_otsu_threshold(chanend c_dm, unsigned imgHandle, unsigned imgHeight, unsigned imgWidth)
{
	int hist_range,min,max;
	long long binSum;							// Sum of bin values of normalised histogram
	long long MG;								// Global Intensity Mean equivalent
	long long P[256],m1_diff[256],m2[256],m_var[256];	// Class means and Between-class variance
	short i,j,k,warn=0;
	int kStar=0;							// Otsu's threshold
	long long count,maxVar=0;
	long long Hist[256];
	unsigned buffer[LCD_ROW_WORDS];
	intptr_t bufferPtr;

	// Init Histogram values
	for (k=0; k<256; k++) Hist[k]=0;

	// Read image from SDRAM through display manager and find histogram
	asm("mov %0, %1" : "=r"(bufferPtr) : "r"(buffer));

	for (int line=0; line<imgHeight; line++){

		c_dm <: IMG_RD_LINE;
		master {
			c_dm <: imgHandle;
			c_dm <: line;
			c_dm <: bufferPtr;
		}
		c_dm :> unsigned;

		for (int c=0; c<imgWidth; c++){
			unsigned short rgb565 = (buffer,unsigned short[])[c];
			unsigned char green = (rgb565 & 0x7E0) >> 3; //Green component
			Hist[green]++;
		}

	}


	// Do histogram normalisation to avoid large values. The shape of the histogram is still preserved.

	// Find min & max of histogram values
	min = max = Hist[0];
	for(k=1;k<256;k++)
	{
		if (Hist[k]<min) min=Hist[k];
		if (Hist[k]>max) max=Hist[k];
	}


	// Initial histogram normalised to the range [0,HIST_RANGE].

	for (k=0;k<256;k++)
		Hist[k] = (Hist[k]-min)*OTSU_THRESHOLD_HIST_RANGE/(max-min);
	hist_range = OTSU_THRESHOLD_HIST_RANGE;


	// Compute cumulative sum and mean for all k

	P[0]=Hist[0]; m_var[0]=0;
	for (k=1;k<256;k++)
	{
		P[k]=P[k-1]+Hist[k];				// Cumulative sum
		m_var[k]=m_var[k-1]+(k*Hist[k]);	// Cumulative mean
	}

	binSum = P[255]; // Sum of all bin values of histogram
	MG=m_var[255];	// Equivalent of global intensity mean

	// Find class means m1 and m2
	for (k=0;k<256;k++){
		if (P[k] && (binSum-P[k])){	// Test for zero denominator
			m1_diff[k]=m_var[k]/P[k];
			m2[k]=(MG-m_var[k])/(binSum-P[k]);
			m1_diff[k]=m1_diff[k]-m2[k];
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

		for (k=0;k<256;k++) P[k]/=2; // as histogram range halved
		warn=0; kStar=0; count=0; maxVar=0;	// Reset variables for the next loop
		hist_range/=2;

	}


	if (hist_range<5) {
		printstrln("Could not find Otsu's threshold due to negative variance");
		assert(0);
	}

	kStar/=count;
	return (kStar);

}

