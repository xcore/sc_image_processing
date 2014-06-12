/***************************************************
 * Binarisation of green component of color image
 ***************************************************/

#include <stdint.h>

#include "binarization.h"
#include "binarization_conf.h"
#include "sdram.h"
#include "image_sensor_defines.h"

void object_localization_binarization(chanend c_sdram, unsigned imgSDRAMbank, unsigned imgSDRAMrow, unsigned binImgSDRAMbank, unsigned binImgSDRAMrow, unsigned imgHeight, unsigned imgWidth, int binThreshold)
{
	unsigned buffer[MAX_WIDTH/2];	//Buffer to store current row
	intptr_t bufferPtr;
	unsigned startRow;

	// Initialize buffer pointer
	asm("mov %0, %1" : "=r"(bufferPtr) : "r"(buffer));

	unsigned widthWords = imgWidth/2;
    unsigned rowIncrement = ((imgWidth-1)/SDRAM_COL_COUNT)+1;

	for (int r=0; r<imgHeight; r++){

		// Read a row
        startRow = imgSDRAMrow + r*rowIncrement;
        sdram_buffer_read_p(c_sdram, imgSDRAMbank, startRow, 0, widthWords, bufferPtr);
        sdram_wait_until_idle_p(c_sdram,bufferPtr);

		// Find green component of pixels and binarise
		for (int c=0; c<imgWidth; c++){
			unsigned short rgb565 = (buffer,unsigned short[])[c];
			unsigned char green = (rgb565 & 0x7E0) >> 3; //Green component
			if (OBJECT_LOCALIZATION_BRIGHT_OBJ_DARK_BG)
				(buffer,unsigned short[])[c] = (green > binThreshold)? 0xffff:0;
			else
				(buffer,unsigned short[])[c] = (green <= binThreshold)? 0xffff:0;
		}

		// Write row
        startRow = binImgSDRAMrow + r*rowIncrement;
        sdram_buffer_write_p(c_sdram, binImgSDRAMbank, startRow, 0, widthWords, bufferPtr);
        sdram_wait_until_idle_p(c_sdram,bufferPtr);

	}
}


