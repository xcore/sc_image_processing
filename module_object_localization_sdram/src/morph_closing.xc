/**************************************************************
 * Morphological closing operation with mxm structuring element
 **************************************************************/

#include <stdint.h>

#include "morph_conf.h"
#include "sdram.h"
#include "image_sensor_defines.h"

void object_localization_morphological_closing(chanend c_sdram, unsigned binImgSDRAMbank, unsigned binImgSDRAMrow, unsigned imgHeight, unsigned imgWidth)
{
	unsigned rowBuffer[OBJECT_LOCALIZATION_STRUC_ELMNT_SIZE][MAX_WIDTH/2], buffer[MAX_WIDTH/2];
	intptr_t rowBufferPtr[OBJECT_LOCALIZATION_STRUC_ELMNT_SIZE], bufferPtr;
	unsigned startRow;

    unsigned short halfStrucElmnt = OBJECT_LOCALIZATION_STRUC_ELMNT_SIZE>>1;
    unsigned short index = OBJECT_LOCALIZATION_STRUC_ELMNT_SIZE-1;

    unsigned widthWords = imgWidth/2;
    unsigned rowIncrement = ((imgWidth-1)/SDRAM_COL_COUNT)+1;


	// Initialize buffer pointers
	for (int i=1; i<OBJECT_LOCALIZATION_STRUC_ELMNT_SIZE; i++)
		asm("mov %0, %1" : "=r"(rowBufferPtr[i]) : "r"(rowBuffer[i]));
	asm("mov %0, %1" : "=r"(bufferPtr) : "r"(buffer));

	for (int c=0; c<halfStrucElmnt; c++)
		(buffer,unsigned short[])[c] = 0;
	for (int c=imgWidth-halfStrucElmnt; c<imgWidth; c++)
		(buffer,unsigned short[])[c] = 0;
	for (int c=imgWidth; c<MAX_WIDTH; c++)	//Remaining columns of LCD when image size is less
		(buffer,unsigned short[])[c] = 0;


	// Iterative dilation
	for (int i=0; i<OBJECT_LOCALIZATION_NUM_DILATE; i++){

		// Read first 4 rows
		for (int j=1; j<OBJECT_LOCALIZATION_STRUC_ELMNT_SIZE; j++){
	        startRow = binImgSDRAMrow + (j-1)*rowIncrement;
	        sdram_buffer_read_p(c_sdram, binImgSDRAMbank, startRow, 0, widthWords, rowBufferPtr[j]);
	        sdram_wait_until_idle_p(c_sdram,rowBufferPtr[j]);
		}

		// Read remaining rows for dilation
		for (int r=halfStrucElmnt; r<imgHeight-halfStrucElmnt; r++){

			// Moving the rows
			for (int c=0; c<imgWidth/2; c++)
				for (int j=1; j<OBJECT_LOCALIZATION_STRUC_ELMNT_SIZE; j++)
					rowBuffer[j-1][c] = rowBuffer[j][c];

            startRow = binImgSDRAMrow + (r+halfStrucElmnt)*rowIncrement;
            sdram_buffer_read_p(c_sdram, binImgSDRAMbank, startRow, 0, widthWords, rowBufferPtr[index]);
            sdram_wait_until_idle_p(c_sdram,rowBufferPtr[index]);


			// check for 1-pixel in the neighbourhood
			// First compute the OR of vertical neighbours
			for (int c=halfStrucElmnt; c<imgWidth-halfStrucElmnt; c++)
				for (int j=1; j<OBJECT_LOCALIZATION_STRUC_ELMNT_SIZE; j++) // Use oldest row for storing vertical OR
					(rowBuffer[0],unsigned short[])[c] |= (rowBuffer[j],unsigned short[])[c];


			// Then compute the OR of horizontal neighbours
			for (int c=halfStrucElmnt; c<imgWidth-halfStrucElmnt; c++){
				(buffer,unsigned short[])[c] = 0;
				for (int j=c-halfStrucElmnt; j<=c+halfStrucElmnt; j++)
					(buffer,unsigned short[])[c] |= (rowBuffer[0],unsigned short[])[j];
			}


			// write the dilated row
            startRow = binImgSDRAMrow + r*rowIncrement;
            sdram_buffer_write_p(c_sdram, binImgSDRAMbank, startRow, 0, widthWords, bufferPtr);
            sdram_wait_until_idle_p(c_sdram,bufferPtr);

		}

	}


	// Iterative erosion
	for (int i=0; i<OBJECT_LOCALIZATION_NUM_ERODE; i++){

		// Read first 4 rows
		for (int j=1; j<OBJECT_LOCALIZATION_STRUC_ELMNT_SIZE; j++){
            unsigned startRow = binImgSDRAMrow + (j-1)*rowIncrement;
            sdram_buffer_read_p(c_sdram, binImgSDRAMbank, startRow, 0, widthWords, rowBufferPtr[j]);
            sdram_wait_until_idle_p(c_sdram,rowBufferPtr[j]);
		}

		// Read remaining rows for erosion
		for (int r=halfStrucElmnt; r<imgHeight-halfStrucElmnt; r++){

			// Moving the rows
			for (int c=0; c<imgWidth/2; c++)
				for (int j=1; j<OBJECT_LOCALIZATION_STRUC_ELMNT_SIZE; j++)
					rowBuffer[j-1][c] = rowBuffer[j][c];

            startRow = binImgSDRAMrow + (r+halfStrucElmnt)*rowIncrement;
            sdram_buffer_read_p(c_sdram, binImgSDRAMbank, startRow, 0, widthWords, rowBufferPtr[index]);
            sdram_wait_until_idle_p(c_sdram,rowBufferPtr[index]);


			// check for 1-pixel in the neighbourhood
			// First compute the AND of vertical neighbours
			for (int c=halfStrucElmnt; c<imgWidth-halfStrucElmnt; c++)
				for (int j=1; j<OBJECT_LOCALIZATION_STRUC_ELMNT_SIZE; j++) // Use oldest row for storing vertical AND
					(rowBuffer[0],unsigned short[])[c] &= (rowBuffer[j],unsigned short[])[c];


			// Then compute the AND of horizontal neighbours
			for (int c=halfStrucElmnt; c<imgWidth-halfStrucElmnt; c++){
				(buffer,unsigned short[])[c] = 0xffff;
				for (int j=c-halfStrucElmnt; j<=c+halfStrucElmnt; j++)
					(buffer,unsigned short[])[c] &= (rowBuffer[0],unsigned short[])[j];
			}


			// write the dilated row
            startRow = binImgSDRAMrow + r*rowIncrement;
            sdram_buffer_write_p(c_sdram, binImgSDRAMbank, startRow, 0, widthWords, bufferPtr);
            sdram_wait_until_idle_p(c_sdram,bufferPtr);


		}

	}


}


