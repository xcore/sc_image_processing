/**************************************************************
 * Morphological closing operation with 5x5 structuring element
 **************************************************************/

#include <stdint.h>

#include "morph_conf.h"
#include "lcd_defines.h"
#include "display_manager.h"

void image_processing_morphological_closing(chanend c_dm, unsigned binImgHandle, unsigned imgHeight, unsigned imgWidth)
{
	unsigned prevRow[LCD_ROW_WORDS], nextRow[LCD_ROW_WORDS], presentRow[LCD_ROW_WORDS]; 	//Buffers to store 5 rows for dilation and erosion
	unsigned prevPrevRow[LCD_ROW_WORDS], nextNextRow[LCD_ROW_WORDS], buffer[LCD_ROW_WORDS];
	intptr_t prevRowPtr, presentRowPtr, nextRowPtr, nextNextRowPtr, bufferPtr;

	// Initialize buffer pointers
	asm("mov %0, %1" : "=r"(prevRowPtr) : "r"(prevRow));
	asm("mov %0, %1" : "=r"(presentRowPtr) : "r"(presentRow));
	asm("mov %0, %1" : "=r"(nextRowPtr) : "r"(nextRow));
	asm("mov %0, %1" : "=r"(nextNextRowPtr) : "r"(nextNextRow));
	asm("mov %0, %1" : "=r"(bufferPtr) : "r"(buffer));

	// Iterative dilation
	for (int i=0; i<NUM_DILATE; i++){

		// Read first 4 rows
		c_dm <: IMG_RD_LINE;
		master {
			c_dm <: binImgHandle;
			c_dm <: 0;
			c_dm <: prevRowPtr;
		}
		c_dm :> unsigned;

		c_dm <: IMG_RD_LINE;
		master {
			c_dm <: binImgHandle;
			c_dm <: 1;
			c_dm <: presentRowPtr;
		}
		c_dm :> unsigned;

		c_dm <: IMG_RD_LINE;
		master {
			c_dm <: binImgHandle;
			c_dm <: 2;
			c_dm <: nextRowPtr;
		}
		c_dm :> unsigned;

		c_dm <: IMG_RD_LINE;
		master {
			c_dm <: binImgHandle;
			c_dm <: 3;
			c_dm <: nextNextRowPtr;
		}
		c_dm :> unsigned;


		// Read remaining rows for dilation
		for (int r=2; r<imgHeight-2; r++){

			for (unsigned c=0; c<LCD_ROW_WORDS; c++){
				prevPrevRow[c] = prevRow[c];
				prevRow[c] = presentRow[c];
				presentRow[c] = nextRow[c];
				nextRow[c] = nextNextRow[c];
			}

			c_dm <: IMG_RD_LINE;
			master {
				c_dm <: binImgHandle;
				c_dm <: r+2;
				c_dm <: nextNextRowPtr;
			}
			c_dm :> unsigned;

			(buffer,unsigned short[])[0] = (presentRow,unsigned short[])[0];
			(buffer,unsigned short[])[1] = (presentRow,unsigned short[])[1];
			(buffer,unsigned short[])[imgWidth-1] = (presentRow,unsigned short[])[imgWidth-1];
			(buffer,unsigned short[])[imgWidth-2] = (presentRow,unsigned short[])[imgWidth-2];


			// check for 1-pixel in the neighbourhood
			for (int c=2; c<imgWidth-2; c++){
				(prevPrevRow,unsigned short[])[c] |= (prevRow,unsigned short[])[c] |
				                                     (presentRow,unsigned short[])[c] |
				                                     (nextRow,unsigned short[])[c] |
				                                     (nextNextRow,unsigned short[])[c];
/*
				(buffer,unsigned short[])[c] = 0;
				for (int j=c-2; j<=c+2; j++)
					(buffer,unsigned short[])[c] |= (prevPrevRow,unsigned short[])[j];
*/
				(buffer,unsigned short[])[c] = (prevPrevRow,unsigned short[])[c-2] |
						(prevPrevRow,unsigned short[])[c-1] | (prevPrevRow,unsigned short[])[c] |
						(prevPrevRow,unsigned short[])[c+1] | (prevPrevRow,unsigned short[])[c+2];
			}

			for (int c=imgWidth; c<2*LCD_ROW_WORDS; c++)	//Remaining columns of LCD when image size is less
				(buffer,unsigned short[])[c] = 0;

			// write the dilated row
			c_dm <: IMG_WR_LINE;
			master {
				c_dm <: binImgHandle;
				c_dm <: r;
				c_dm <: bufferPtr;
			}

		}

	}

	// Iterative erosion
	for (int i=0; i<NUM_ERODE; i++){

		// Read first 4 rows
		c_dm <: IMG_RD_LINE;
		master {
			c_dm <: binImgHandle;
			c_dm <: 0;
			c_dm <: prevRowPtr;
		}
		c_dm :> unsigned;

		c_dm <: IMG_RD_LINE;
		master {
			c_dm <: binImgHandle;
			c_dm <: 1;
			c_dm <: presentRowPtr;
		}
		c_dm :> unsigned;

		c_dm <: IMG_RD_LINE;
		master {
			c_dm <: binImgHandle;
			c_dm <: 2;
			c_dm <: nextRowPtr;
		}
		c_dm :> unsigned;

		c_dm <: IMG_RD_LINE;
		master {
			c_dm <: binImgHandle;
			c_dm <: 3;
			c_dm <: nextNextRowPtr;
		}
		c_dm :> unsigned;


		// Read remaining rows for erosion
		for (int r=2; r<imgHeight-2; r++){

			for (unsigned c=0; c<LCD_ROW_WORDS; c++){
				prevPrevRow[c] = prevRow[c];
				prevRow[c] = presentRow[c];
				presentRow[c] = nextRow[c];
				nextRow[c] = nextNextRow[c];
			}

			c_dm <: IMG_RD_LINE;
			master {
				c_dm <: binImgHandle;
				c_dm <: r+2;
				c_dm <: nextNextRowPtr;
			}
			c_dm :> unsigned;

			(buffer,unsigned short[])[0] = (presentRow,unsigned short[])[0];
			(buffer,unsigned short[])[1] = (presentRow,unsigned short[])[1];
			(buffer,unsigned short[])[imgWidth-1] = (presentRow,unsigned short[])[imgWidth-1];
			(buffer,unsigned short[])[imgWidth-2] = (presentRow,unsigned short[])[imgWidth-2];


			// check for 1-pixel in the neighbourhood
			for (int c=2; c<imgWidth-2; c++){
				(prevPrevRow,unsigned short[])[c] &= (prevRow,unsigned short[])[c] &
				                                     (presentRow,unsigned short[])[c] &
				                                     (nextRow,unsigned short[])[c] &
				                                     (nextNextRow,unsigned short[])[c];
/*				(buffer,unsigned short[])[c] = 0xffff;
				for (int j=c-2; j<=c+2; j++)
					(buffer,unsigned short[])[c] &= (prevPrevRow,unsigned short[])[j];
*/
				(buffer,unsigned short[])[c] = (prevPrevRow,unsigned short[])[c-2] &
						(prevPrevRow,unsigned short[])[c-1] & (prevPrevRow,unsigned short[])[c] &
						(prevPrevRow,unsigned short[])[c+1] & (prevPrevRow,unsigned short[])[c+2];
			}

			for (int c=imgWidth; c<2*LCD_ROW_WORDS; c++)	//Remaining columns of LCD when image size is less
				(buffer,unsigned short[])[c] = 0;

			// write the eroded row
			c_dm <: IMG_WR_LINE;
			master {
				c_dm <: binImgHandle;
				c_dm <: r;
				c_dm <: bufferPtr;
			}

		}

	}


}


