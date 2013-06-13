/***************************************************
 * Binarisation of green component of color image
 ***************************************************/

#include <stdint.h>

#include "binarisation_conf.h"
#include "lcd.h"
#include "display_manager.h"

void image_processing_binarisation(chanend c_dm, unsigned imgHandle, unsigned binImgHandle, unsigned imgHeight, unsigned imgWidth, int binThreshold)
{
	unsigned buffer[LCD_ROW_WORDS];	//Buffer to store current row
	intptr_t bufferPtr;

	// Initialize buffer pointer
	asm("mov %0, %1" : "=r"(bufferPtr) : "r"(buffer));

	for (int r=0; r<imgHeight; r++){

		// Read a row
		c_dm <: IMG_RD_LINE;
		master {
			c_dm <: imgHandle;
			c_dm <: r;
			c_dm <: bufferPtr;
		}
		c_dm :> unsigned;

		// Find green component of pixels and binarise
		for (int c=0; c<imgWidth; c++){
			unsigned short rgb565 = (buffer,unsigned short[])[c];
			unsigned char green = (rgb565 & 0x7E0) >> 3; //Green component
			if (BRIGHT_OBJ_DARK_BG)
				(buffer,unsigned short[])[c] = (green > binThreshold)? 0xffff:0;
			else
				(buffer,unsigned short[])[c] = (green <= binThreshold)? 0xffff:0;
		}

		// Write row
		c_dm <: IMG_WR_LINE;
		master {
			c_dm <: binImgHandle;
			c_dm <: r;
			c_dm <: bufferPtr;
		}

	}
}


