/**************************************************************
 * Morphological erosion operation with 3x3 structuring element
 **************************************************************/

#include <stdint.h>

#include "morph_conf.h"
#include "lcd.h"
#include "display_manager.h"

void image_processing_morphological_erosion3x3(chanend c_dm, unsigned binImgHandle, unsigned imgHeight, unsigned imgWidth)
{
	unsigned prevRow[LCD_ROW_WORDS], nextRow[LCD_ROW_WORDS], presentRow[LCD_ROW_WORDS], buffer[LCD_ROW_WORDS];	//Buffers to store 3 rows for dilation and erosion
	intptr_t presentRowPtr, nextRowPtr, bufferPtr;

	// Initialize buffer pointers
	asm("mov %0, %1" : "=r"(presentRowPtr) : "r"(presentRow));
	asm("mov %0, %1" : "=r"(nextRowPtr) : "r"(nextRow));
	asm("mov %0, %1" : "=r"(bufferPtr) : "r"(buffer));


	// Iterative erosion
	for (int i=0; i<NUM_ERODE; i++){

		// Read first 2 rows
		c_dm <: IMG_RD_LINE;
		master {
			c_dm <: binImgHandle;
			c_dm <: 0;
			c_dm <: presentRowPtr;
		}
		c_dm :> unsigned;

		c_dm <: IMG_RD_LINE;
		master {
			c_dm <: binImgHandle;
			c_dm <: 1;
			c_dm <: nextRowPtr;
		}
		c_dm :> unsigned;

		(buffer,unsigned short[])[0] = (presentRow,unsigned short[])[0];
		(buffer,unsigned short[])[imgWidth-1] = (presentRow,unsigned short[])[imgWidth-1];

		// Read remaining rows for erosion
		for (int r=1; r<imgHeight-1; r++){

			for (unsigned j=0; j<LCD_ROW_WORDS; j++){
					prevRow[j] = presentRow[j];
					presentRow[j] = nextRow[j];
			}

			c_dm <: IMG_RD_LINE;
			master {
				c_dm <: binImgHandle;
				c_dm <: r+1;
				c_dm <: nextRowPtr;
			}
			c_dm :> unsigned;

			// check for 0-pixel in the neighbourhood
			for (int c=1; c<imgWidth-1; c++){
				(buffer,unsigned short[])[c] = ((prevRow,unsigned short[])[c-1]) &
						((prevRow,unsigned short[])[c]) &
						((prevRow,unsigned short[])[c+1]) &
						((presentRow,unsigned short[])[c-1]) &
						((presentRow,unsigned short[])[c]) &
						((presentRow,unsigned short[])[c+1]) &
						((nextRow,unsigned short[])[c-1]) &
						((nextRow,unsigned short[])[c]) &
						((nextRow,unsigned short[])[c+1]);
			}
			for (int c=imgWidth; c<2*LCD_ROW_WORDS; c++)
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


