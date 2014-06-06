/***************************************************
 * frame_substraction_binarisation of green component of color image
 ***************************************************/

#include <stdint.h>

#include "frame_substraction_binarisation_conf.h"
#include "lcd.h"
#include "display_manager.h"
void image_processing_frame_substraction_binarisation(chanend c_dm, unsigned imgHandle, unsigned imgHeight, unsigned imgHandle1, unsigned binImgHandle1, unsigned imgHeight1,int binThreshold)
{
	unsigned buffer[LCD_ROW_WORDS];	//Buffer to store current row
	intptr_t bufferPtr;
	unsigned row_img1[LCD_ROW_WORDS];
	unsigned row_img2[LCD_ROW_WORDS];
	char diff1,diff2;
	int grn_pix1_img1,grn_pix2_img1,grn_pix1_img2,grn_pix2_img2;
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
		for (int c=0; c<LCD_ROW_WORDS; c++){
			row_img1[c]=buffer[c];

		}
		c_dm <: IMG_RD_LINE;
		        master {
		            c_dm <: imgHandle1;
		            c_dm <: r;
		            c_dm <: bufferPtr;
		        }
		        c_dm :> unsigned;

		        // Find green component of pixels and binarise
            for (int c=0; c<LCD_ROW_WORDS; c++){
                        row_img2[c]=buffer[c];

                    }

            for(int c=0;c<LCD_ROW_WORDS;c++)// FRAME SUBTRACTION
            {
              grn_pix1_img1 = (0x000007E0 & row_img1[c])>>5;
              grn_pix2_img1 = (0x07E007E0 & row_img1[c])>>21;
              grn_pix1_img2 = (0x000007E0 & row_img2[c])>>5;
              grn_pix2_img2 = (0x07E007E0 & row_img2[c])>>21;
              if(grn_pix1_img1>grn_pix1_img2){
                  diff1 = grn_pix1_img1-grn_pix1_img2;
              }
              else
                  diff1 = grn_pix1_img2-grn_pix1_img1;

              if(grn_pix2_img1>grn_pix2_img2){
                  diff2 = grn_pix2_img1-grn_pix2_img2;
              }
              else
                  diff2 = grn_pix2_img2-grn_pix2_img1;


              if (IMAGE_PROCESSING_BRIGHT_OBJ_DARK_BG)// BINERISATION
                  buffer[c] = (((diff1)>binThreshold) && ((diff2)>binThreshold))? 0xFFFFFFFF:0;
              else
                  buffer[c] = (((diff1)>binThreshold) && ((diff2)>binThreshold))? 0xFFFFFFFF:0;

           }
		// Write row
		c_dm <: IMG_WR_LINE;
		master {
			c_dm <: binImgHandle1;
			c_dm <: r;
			c_dm <: bufferPtr;
		}

	}
}


