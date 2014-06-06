#include <platform.h>
#include <stdint.h>
#include <print.h>

#include "loader.h"
#include "sdram.h"
#include "lcd.h"
#include "display_controller.h"
#include "display_manager.h"
#include "frame_substraction_binarisation.h"
#include "CCA.h"

#include "app_conf.h"
#include "CCA_conf.h"
#include "display_manager_conf.h"

#define TIMER_FREQ 100000000	// Timer frequency in Hz

on tile[0] : lcd_ports lcdports = {
  XS1_PORT_1I, XS1_PORT_1L, XS1_PORT_16B, XS1_PORT_1J, XS1_PORT_1K, XS1_CLKBLK_1 };
on tile[0] : sdram_ports sdramports = {
  XS1_PORT_16A, XS1_PORT_1B, XS1_PORT_1G, XS1_PORT_1C, XS1_PORT_1F, XS1_CLKBLK_2 };




// Load images from PC to SDRAM
static void load_image(chanend c_dm, streaming chanend c_load, unsigned image[], unsigned binImage[], unsigned short imgHt[], unsigned short imgWd[])
{
	unsigned buffer[LCD_ROW_WORDS];
	intptr_t bufferPtr;

	asm("mov %0, %1" : "=r"(bufferPtr) : "r"(buffer));

	for (int i=0; i<=1; i++){
	// Allocate space for binary image in SDRAM and init
	        c_dm <: REG_IMG;
	        master{
	            c_dm <: (unsigned)LCD_ROW_WORDS;
	            c_dm <: (unsigned)LCD_HEIGHT;
	        }
	        c_dm :> binImage[i];

	        c_dm <: LCD_IMG_WR;
	        c_dm <: binImage[i];

	        for (unsigned line = 0; line < LCD_HEIGHT; line++)
	            c_dm <: bufferPtr;
	}

	for (int i=0; i<IMAGE_COUNT; i++){
		c_load :> imgHt[i];
		c_load :> imgWd[i];

		// Register image
		c_dm <: REG_IMG;
		master{
			c_dm <: (unsigned)LCD_ROW_WORDS;
			c_dm <: (unsigned)LCD_HEIGHT;
		}
		c_dm :> image[i];


		// Load image to SDRAM frame buffer and init background
		c_dm <: LCD_IMG_WR;
		c_dm <: image[i];

		for (unsigned line = 0; line < imgHt[i]; line++){
		    for(unsigned c=0;c<imgWd[i];c++)
		    	c_load :> (buffer, unsigned short[])[c];
		    for (unsigned c=imgWd[i]; c<2*LCD_ROW_WORDS; c++)
		    	(buffer, unsigned short[])[c] = 0;
		    c_dm <: bufferPtr;	// for buffer ptr
		}

		for (unsigned c=0; c<LCD_ROW_WORDS; c++)
			buffer[c] = 0;
		for (unsigned line=imgHt[i]; line<LCD_HEIGHT; line++)
			c_dm <: bufferPtr;

	}
}


void annotate_image(chanend c_dispMan,chanend c_dm, unsigned imgHandle, unsigned short imgHt, unsigned short imgWd, int nCC, boundBox_struct boundBox[], int area[])
{
	unsigned buffer[LCD_ROW_WORDS];
	intptr_t bufferPtr;
	int c;
    timer t;
	unsigned time;

	asm("mov %0, %1" : "=r"(bufferPtr) : "r"(buffer));

	// Draw bounding box for each connected component
	for (int cc=1; cc<=nCC; cc++){
		if (area[cc]>SIZE_THRESHOLD){

			c_dm <: IMG_RD_LINE;
			master{
				c_dm <: imgHandle;
				c_dm <: boundBox[cc].xMin;
				c_dm <: bufferPtr;
			}
			c_dm :> unsigned;

			for (c=boundBox[cc].yMin; c<= boundBox[cc].yMax; c++)
				(buffer, unsigned short[])[c] = BOX_COLOR;

			c_dm <: IMG_WR_LINE;
			master{
				c_dm <: imgHandle;
				c_dm <: boundBox[cc].xMin;
				c_dm <: bufferPtr;
			}

			for (int line=boundBox[cc].xMin+1; line<boundBox[cc].xMax; line++){
				c_dm <: IMG_RD_LINE;
				master{
					c_dm <: imgHandle;
					c_dm <: line;
					c_dm <: bufferPtr;
				}
				c_dm :> unsigned;

				c = boundBox[cc].yMin;
				(buffer, unsigned short[])[c] = BOX_COLOR;
				c = boundBox[cc].yMax;
				(buffer, unsigned short[])[c] = BOX_COLOR;

				c_dm <: IMG_WR_LINE;
				master{
					c_dm <: imgHandle;
					c_dm <: line;
					c_dm <: bufferPtr;
				}
			}

			c_dm <: IMG_RD_LINE;
			master{
				c_dm <: imgHandle;
				c_dm <: boundBox[cc].xMax;
				c_dm <: bufferPtr;
			}
			c_dm :> unsigned;

			for (c=boundBox[cc].yMin; c<= boundBox[cc].yMax; c++)
				(buffer, unsigned short[])[c] = BOX_COLOR;

			c_dm <: IMG_WR_LINE;
			master{
				c_dm <: imgHandle;
				c_dm <: boundBox[cc].xMax;
				c_dm <: bufferPtr;
			}
		}
	}
    t :> time;
    t when timerafter(time+TIMER_FREQ/2) :> void;   //introduce delay

	//Displaying Annotated image on LCD screen
            c_dispMan <: FB_COMMIT;
	        c_dispMan <: imgHandle;

}

#define	N_STAGES 3
void app(chanend c_dispMan[])
{
	streaming chan c_loader;
	unsigned image[IMAGE_COUNT], binImage[IMAGE_COUNT], image_no=0;
	unsigned short imgHeight[IMAGE_COUNT], imgWidth[IMAGE_COUNT];
	timer t;
	int area[IMAGE_PROCESSING_CCA_MAX_LABEL+1], area_old[IMAGE_PROCESSING_CCA_MAX_LABEL+1];
	boundBox_struct boundBox[IMAGE_PROCESSING_CCA_MAX_LABEL+1], boundBox_old[IMAGE_PROCESSING_CCA_MAX_LABEL+1];
	cog_struct cog[IMAGE_PROCESSING_CCA_MAX_LABEL+1];
	int nCC=0, nCC_old=0;
	// Load images to SDRAM
	printstrln("Loading images. Please wait ........");
	par{
		load_image(c_dispMan[0], c_loader, image, binImage, imgHeight, imgWidth);
		loader(c_loader);
	  }

    c_dispMan[0] <: FB_INIT;
    c_dispMan[0] <: image[0];

	// Connected component analysis in pipeline
	for (int i=0; i<IMAGE_COUNT+(N_STAGES-1)-1; i++){

		par{
			if (i<IMAGE_COUNT-1)
			    image_processing_frame_substraction_binarisation(c_dispMan[1], image[i], imgHeight[i], image[i+1], binImage[(i+1)%2], imgHeight[i+1],THRESHOLD);
			if ((i-1)>=0 && (i-1)<IMAGE_COUNT-1)
				nCC = image_processing_CCA(c_dispMan[2], binImage[i%2], imgHeight[i], imgWidth[i], boundBox, area, cog);

			if ((i-2)>=0 && (i-2)<IMAGE_COUNT-1)
				annotate_image(c_dispMan[0],c_dispMan[3], image[i-1], imgHeight[i-1], imgWidth[i-1], nCC_old, boundBox_old, area_old);
		}


		nCC_old = nCC;
		for (int j=1; j<=nCC; j++){
			boundBox_old[j].xMin = boundBox[j].xMin;
			boundBox_old[j].yMin = boundBox[j].yMin;
			boundBox_old[j].xMax = boundBox[j].xMax;
			boundBox_old[j].yMax = boundBox[j].yMax;
			area_old[j] = area[j];
		}
	}


	while(1){
		unsigned time;

	    image_no = (image_no+1)%IMAGE_COUNT;

	    t :> time;
	    t when timerafter(time+TIMER_FREQ/2) :> void;	//introduce delay
	    c_dispMan[0] <: FB_COMMIT;
	    c_dispMan[0] <: image[image_no];
	}

}


void main(){
	chan c_dc,c_lcd,c_sdram;
	chan c_dm[DISPLAY_MANAGER_CHANNELS];

	par{
		on tile[0]: app(c_dm);
		on tile[1]: display_manager(c_dm, c_dc);
		on tile[0]: display_controller(c_dc,c_lcd,c_sdram);
		on tile[0]: lcd_server(c_lcd,lcdports);
		on tile[0]: sdram_server(c_sdram,sdramports);
	}

}
