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
#include "binarization.h"
#include "morph_closing.h"
#include "CCA.h"
#include"skin_pixels.h"
#include "chan.h"


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
static void load_image(chanend c_dm, streaming chanend c_load, unsigned image[], unsigned binImage[], unsigned short imgHt[], unsigned short imgWd[])
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
}


void annotate_image(chanend c_dm, unsigned imgHandle, unsigned short imgHeight, unsigned short imgWidth, int nCC, boundBox_struct boundBox[], int area[])
{
	unsigned buffer[LCD_ROW_WORDS];
	intptr_t bufferPtr;
	int c;
    asm("mov %0, %1" : "=r"(bufferPtr) : "r"(buffer));
	int ccr=0;
	unsigned m=0;

    //checks for the connected component with maximum area
	for (int cc=1; cc<=nCC; cc++){
       if (area[cc]>m){

		    {
		        m= area[cc];
		    ccr=cc;
		}
       }
	}

       //drawing the green box for the face
			c_dm <: IMG_RD_LINE;
			master{
				c_dm <: imgHandle;
				c_dm <: boundBox[ccr].xMin;
				c_dm <: bufferPtr;
			}
			c_dm :> unsigned;

			for (c=boundBox[ccr].yMin; c<= boundBox[ccr].yMax; c++)
				(buffer, unsigned short[])[c] = BOX_COLOUR;

			c_dm <: IMG_WR_LINE;
			master{
				c_dm <: imgHandle;
				c_dm <: boundBox[ccr].xMin;
				c_dm <: bufferPtr;
			}

			for (int line=boundBox[ccr].xMin+1; line<boundBox[ccr].xMax; line++){
				c_dm <: IMG_RD_LINE;
				master{
					c_dm <: imgHandle;
					c_dm <: line;
					c_dm <: bufferPtr;
				}
				c_dm :> unsigned;

				c = boundBox[ccr].yMin;
				(buffer, unsigned short[])[c] = BOX_COLOUR;
				c = boundBox[ccr].yMax;
				(buffer, unsigned short[])[c] = BOX_COLOUR;

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
				c_dm <: boundBox[ccr].xMax;
				c_dm <: bufferPtr;
			}
			c_dm :> unsigned;

			for (c=boundBox[ccr].yMin; c<= boundBox[ccr].yMax; c++)
				(buffer, unsigned short[])[c] = BOX_COLOUR;

			c_dm <: IMG_WR_LINE;
			master{
				c_dm <: imgHandle;
				c_dm <: boundBox[ccr].xMax;
				c_dm <: bufferPtr;
			}


	}



#define	N_STAGES 4
void app(chanend c_dispMan[])
{
	streaming chan c_loader;
	unsigned image[IMAGE_COUNT], binImage[IMAGE_COUNT], image_no=0;
	unsigned short imgHeight[IMAGE_COUNT], imgWidth[IMAGE_COUNT];
	int area[OBJECT_LOCALIZATION_CCA_MAX_LABEL+1], area_old[OBJECT_LOCALIZATION_CCA_MAX_LABEL+1];
	boundBox_struct boundBox[OBJECT_LOCALIZATION_CCA_MAX_LABEL+1], boundBox_old[OBJECT_LOCALIZATION_CCA_MAX_LABEL+1];
	cog_struct cog[OBJECT_LOCALIZATION_CCA_MAX_LABEL+1];
	int threshold=0, nCC=0, nCC_old=0;
	timer t;
	unsigned time1, time2, maxTime=0;
	unsigned entryTime[IMAGE_COUNT], exitTime[IMAGE_COUNT], cycles, frameRate;

	// Load images to SDRAM
	printstrln("Loading images. Please wait ........");
	par{
		load_image(c_dispMan[0], c_loader, image, binImage, imgHeight, imgWidth);
		loader(c_loader);
	  }


	// Connected component analysis in pipeline
	for (int i=0; i<IMAGE_COUNT+(N_STAGES-1); i++){

		t :> time1;
		if (i<IMAGE_COUNT) entryTime[i] = time1;

		par{
			if (i<IMAGE_COUNT){
				threshold = object_localization_otsu_threshold(c_dispMan[0], image[i], imgHeight[i], imgWidth[i]);
				object_localization_binarization(c_dispMan[0], image[i], binImage[i], imgHeight[i], imgWidth[i], threshold);
			}
			if ((i-1)>=0 && (i-1)<IMAGE_COUNT)
				object_localization_morphological_closing(c_dispMan[1], binImage[i-1], imgHeight[i-1], imgWidth[i-1]);

			if ((i-2)>=0 && (i-2)<IMAGE_COUNT)
				nCC = object_localization_CCA(c_dispMan[2], binImage[i-2], imgHeight[i-2], imgWidth[i-2], boundBox, area, cog);

			if ((i-3)>=0 && (i-3)<IMAGE_COUNT)
				annotate_image(c_dispMan[3], image[i-3], imgHeight[i-3], imgWidth[i-3], nCC_old, boundBox_old, area_old);
		}


		nCC_old = nCC-1;
		for (int j=1; j<=nCC; j++){
			boundBox_old[j].xMin = boundBox[j].xMin;
			boundBox_old[j].yMin = boundBox[j].yMin;
			boundBox_old[j].xMax = boundBox[j].xMax;
			boundBox_old[j].yMax = boundBox[j].yMax;
			area_old[j] = area[j];
		}

		t :> time2;
		if ((time2-time1)>maxTime) maxTime = time2-time1;
		if ((i-(N_STAGES-1))>=0) exitTime[i-(N_STAGES-1)] = time2;

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
		unsigned x=0, y=0, time;
	    touch_lib_get_next_coord(touchports,x,y);
	    t :> time;
	    t when timerafter(time+TIMER_FREQ/2) :> void;	//introduce delay
	    c_dispMan[0] <: FB_COMMIT;
	    c_dispMan[0] <: binImage[image_no];

	    image_no = (image_no+1)%IMAGE_COUNT;

	    touch_lib_get_next_coord(touchports,x,y);
	    t :> time;
	    t when timerafter(time+TIMER_FREQ/2) :> void;	//introduce delay
	    c_dispMan[0] <: FB_COMMIT;
	    c_dispMan[0] <: image[image_no];
	}

}


int main(){
	chan c_dc,c_lcd,c_sdram;
	chan c_dm[OBJECT_LOCALIZATION_CHANNELS];

	par{
		on tile[0]: app(c_dm);
		on tile[1]: object_localization_display_manager(c_dm, c_dc);
		on tile[0]: display_controller(c_dc,c_lcd,c_sdram);
		on tile[0]: lcd_server(c_lcd,lcdports);
		on tile[0]: sdram_server(c_sdram,sdramports);
	}

}
