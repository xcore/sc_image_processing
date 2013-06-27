/**************************************************************
 * Morphological closing operation with mxm structuring element
 **************************************************************/

#include <stdint.h>

#include "morph_conf.h"
#include "lcd_defines.h"
#include "display_manager.h"


void object_localisation_morphological_closing(chanend c_dm, unsigned binImgHandle, unsigned imgHeight, unsigned imgWidth)
{
	unsigned rowBuffer[OBJECT_LOCALISATION_STRUC_ELMNT_SIZE][LCD_ROW_WORDS], buffer[LCD_ROW_WORDS];
	intptr_t rowBufferPtr[OBJECT_LOCALISATION_STRUC_ELMNT_SIZE], bufferPtr;
	unsigned short index, halfStrucElmnt;


	// Initialize buffer pointers
	for (int i=1; i<OBJECT_LOCALISATION_STRUC_ELMNT_SIZE; i++)
		asm("mov %0, %1" : "=r"(rowBufferPtr[i]) : "r"(rowBuffer[i]));
	asm("mov %0, %1" : "=r"(bufferPtr) : "r"(buffer));
	for (int c=0; c<halfStrucElmnt; c++)
		(buffer,unsigned short[])[c] = 0;
	for (int c=imgWidth-halfStrucElmnt; c<imgWidth; c++)
		(buffer,unsigned short[])[c] = 0;
	for (int c=imgWidth; c<(LCD_ROW_WORDS<<1); c++)	//Remaining columns of LCD when image size is less
		(buffer,unsigned short[])[c] = 0;

	halfStrucElmnt = OBJECT_LOCALISATION_STRUC_ELMNT_SIZE>>1;
	index = OBJECT_LOCALISATION_STRUC_ELMNT_SIZE-1;


	// Iterative dilation
	for (int i=0; i<OBJECT_LOCALISATION_NUM_DILATE; i++){

		// Read first 4 rows
		for (int j=1; j<OBJECT_LOCALISATION_STRUC_ELMNT_SIZE; j++){
			c_dm <: IMG_RD_LINE;
			master {
				c_dm <: binImgHandle;
				c_dm <: j-1;
				c_dm <: rowBufferPtr[j];
			}
			c_dm :> unsigned;
		}

		// Read remaining rows for dilation
		for (int r=halfStrucElmnt; r<imgHeight-halfStrucElmnt; r++){

			// Moving the rows
			for (int c=0; c<LCD_ROW_WORDS; c++)
				for (int j=1; j<OBJECT_LOCALISATION_STRUC_ELMNT_SIZE; j++)
					rowBuffer[j-1][c] = rowBuffer[j][c];

			c_dm <: IMG_RD_LINE;
			master {
				c_dm <: binImgHandle;
				c_dm <: r+halfStrucElmnt;
				c_dm <: rowBufferPtr[index];
			}
			c_dm :> unsigned;


			// check for 1-pixel in the neighbourhood
			// First compute the OR of vertical neighbours
			for (int c=halfStrucElmnt; c<imgWidth-halfStrucElmnt; c++)
				for (int j=1; j<OBJECT_LOCALISATION_STRUC_ELMNT_SIZE; j++) // Use oldest row for storing vertical OR
					(rowBuffer[0],unsigned short[])[c] |= (rowBuffer[j],unsigned short[])[c];


			// Then compute the OR of horizontal neighbours
			for (int c=halfStrucElmnt; c<imgWidth-halfStrucElmnt; c++){
				(buffer,unsigned short[])[c] = 0;
				for (int j=c-halfStrucElmnt; j<=c+halfStrucElmnt; j++)
					(buffer,unsigned short[])[c] |= (rowBuffer[0],unsigned short[])[j];
			}


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
	for (int i=0; i<OBJECT_LOCALISATION_NUM_ERODE; i++){

		// Read first 4 rows
		for (int j=1; j<OBJECT_LOCALISATION_STRUC_ELMNT_SIZE; j++){
			c_dm <: IMG_RD_LINE;
			master {
				c_dm <: binImgHandle;
				c_dm <: j-1;
				c_dm <: rowBufferPtr[j];
			}
			c_dm :> unsigned;
		}

		// Read remaining rows for erosion
		for (int r=halfStrucElmnt; r<imgHeight-halfStrucElmnt; r++){

			// Moving the rows
			for (int c=0; c<LCD_ROW_WORDS; c++)
				for (int j=1; j<OBJECT_LOCALISATION_STRUC_ELMNT_SIZE; j++)
					rowBuffer[j-1][c] = rowBuffer[j][c];

			c_dm <: IMG_RD_LINE;
			master {
				c_dm <: binImgHandle;
				c_dm <: r+halfStrucElmnt;
				c_dm <: rowBufferPtr[index];
			}
			c_dm :> unsigned;


			// check for 1-pixel in the neighbourhood
			// First compute the AND of vertical neighbours
			for (int c=halfStrucElmnt; c<imgWidth-halfStrucElmnt; c++)
				for (int j=1; j<OBJECT_LOCALISATION_STRUC_ELMNT_SIZE; j++) // Use oldest row for storing vertical AND
					(rowBuffer[0],unsigned short[])[c] &= (rowBuffer[j],unsigned short[])[c];


			// Then compute the AND of horizontal neighbours
			for (int c=halfStrucElmnt; c<imgWidth-halfStrucElmnt; c++){
				(buffer,unsigned short[])[c] = 0xffff;
				for (int j=c-halfStrucElmnt; j<=c+halfStrucElmnt; j++)
					(buffer,unsigned short[])[c] &= (rowBuffer[0],unsigned short[])[j];
			}


			// write the dilated row
			c_dm <: IMG_WR_LINE;
			master {
				c_dm <: binImgHandle;
				c_dm <: r;
				c_dm <: bufferPtr;
			}

		}

	}


}


