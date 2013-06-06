#include <platform.h>
#include <stdint.h>
#include <print.h>

#include "loader.h"
#include "sdram.h"
#include "lcd.h"
#include "display_controller.h"
#include "display_manager.h"
#include "touch_controller_lib.h"
#include "touch_controller_impl.h"
#include "otsu_threshold.h"
#include "CCA.h"

#include "app_conf.h"
#include "CCA_conf.h"
#include "display_manager_conf.h"

#define TIMER_FREQ 100000000	// Timer frequency in Hz

on tile[0] : lcd_ports lcdports = {
  XS1_PORT_1I, XS1_PORT_1L, XS1_PORT_16B, XS1_PORT_1J, XS1_PORT_1K, XS1_CLKBLK_1 };
on tile[0] : sdram_ports sdramports = {
  XS1_PORT_16A, XS1_PORT_1B, XS1_PORT_1G, XS1_PORT_1C, XS1_PORT_1F, XS1_CLKBLK_2 };
on tile[0] : touch_controller_ports touchports = {
  XS1_PORT_1E, XS1_PORT_1H, 1000, XS1_PORT_1D };



// Load images from PC to SDRAM
static void load_image(chanend c_dm, streaming chanend c_load, unsigned image[], unsigned short imgHt[], unsigned short imgWd[])
{
	unsigned buffer[LCD_ROW_WORDS];
	intptr_t bufferPtr;

	asm("mov %0, %1" : "=r"(bufferPtr) : "r"(buffer));
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


void annotate_image(chanend c_dm, unsigned imgHandle, unsigned short imgHt, unsigned short imgWd, int nCC, boundBox_struct boundBox[], int area[])
{
	unsigned buffer[LCD_ROW_WORDS];
	intptr_t bufferPtr;
	int c;

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

}


void app(chanend c_dispMan[])
{
	streaming chan c_loader;
	unsigned image[IMAGE_COUNT], image_no=0;
	unsigned short imgHeight[IMAGE_COUNT], imgWidth[IMAGE_COUNT];
	int area[IMAGE_PROCESSING_CCA_MAX_LABEL+1], area_old[IMAGE_PROCESSING_CCA_MAX_LABEL+1];
	boundBox_struct boundBox[IMAGE_PROCESSING_CCA_MAX_LABEL+1], boundBox_old[IMAGE_PROCESSING_CCA_MAX_LABEL+1];
	cog_struct cog[IMAGE_PROCESSING_CCA_MAX_LABEL+1];
	int threshold=0, threshold_old=0, nCC=0, nCC_old=0;
	timer t;
	unsigned time1, time2, maxTime=0;
	unsigned entryTime[IMAGE_COUNT], exitTime[IMAGE_COUNT], cycles, frameRate;

	// Load images to SDRAM
	printstrln("Loading images. Please wait ........");
	par{
		load_image(c_dispMan[0], c_loader, image, imgHeight, imgWidth);
		loader(c_loader);
	  }

	// Connected component analysis in pipeline
	for (int i=0; i<IMAGE_COUNT+2; i++){

		t :> time1;
		if (i<IMAGE_COUNT) entryTime[i] = time1;

		par{
			if (i<IMAGE_COUNT)
				threshold = image_processing_otsu_threshold(c_dispMan[1], image[i], imgHeight[i], imgWidth[i]);
			if ((i-1)>=0 && (i-1)<IMAGE_COUNT)
				nCC = image_processing_CCA(c_dispMan[2], image[i-1], imgHeight[i-1], imgWidth[i-1], threshold_old, boundBox, area, cog);
			if ((i-2)>=0)
				annotate_image(c_dispMan[3], image[i-2],imgHeight[i-2], imgWidth[i-2], nCC_old, boundBox_old, area_old);
		}

		threshold_old = threshold;
		nCC_old = nCC;

		for (int i=1; i<=nCC; i++){
			boundBox_old[i].xMin = boundBox[i].xMin;
			boundBox_old[i].yMin = boundBox[i].yMin;
			boundBox_old[i].xMax = boundBox[i].xMax;
			boundBox_old[i].yMax = boundBox[i].yMax;
			area_old[i] = area[i];
		}

		t :> time2;
		if ((time2-time1)>maxTime) maxTime = time2-time1;
		if ((i-2)>=0) exitTime[i-2] = time2;
	}

	printstr ("\nImage		Processing time (ms)\n");
	for (int i=0; i<IMAGE_COUNT; i++){
		printint(i+1);
		cycles = exitTime[i]-entryTime[i];
		printstr("\t\t"); printint(cycles/100000);
		printstr("\n");
	}
	printstr ("\nMaximum time taken by the pipeline stages: ");
	printint(maxTime/100000);
	printstrln (" ms");
	frameRate = TIMER_FREQ/maxTime;
	printstr ("Frame rate: ");
	printint (frameRate);
	printstr("\n");


	// Display images for touch events
	c_dispMan[0] <: FB_INIT;
	c_dispMan[0] <: image[0];
	touch_lib_init(touchports);
	printstrln("\n****** Please touch the LCD screen   ******");
	printstrln("****** to display processed images   ******");

	while(1){
		unsigned x=0,y=0;
	    touch_lib_req_next_coord(touchports,x,y);
	    image_no = (image_no+1)%IMAGE_COUNT;

	    c_dispMan[0] <: FB_COMMIT;
	    c_dispMan[0] <: image[image_no];
	}

}


void main(){
	chan c_dc,c_lcd,c_sdram;
	chan c_dm[DISPLAY_MANAGER_CHANNELS];

	par{
		on tile[0]: app(c_dm);
		on tile[0]: display_manager(c_dm, c_dc);
		on tile[0]: display_controller(c_dc,c_lcd,c_sdram);
		on tile[0]: lcd_server(c_lcd,lcdports);
		on tile[0]: sdram_server(c_sdram,sdramports);
	}

}
