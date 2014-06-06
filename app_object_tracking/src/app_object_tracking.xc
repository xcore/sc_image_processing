
#include <platform.h>
#include <stdint.h>
#include <print.h>

#include "sdram.h"
#include "lcd.h"
#include "display_controller.h"
#include "display_manager.h"
#include "otsu_threshold.h"
#include "binarization.h"
#include "morph_closing.h"
#include "CCA.h"
#include "app_conf.h"
#include "CCA_conf.h"
#include "display_manager_conf.h"
#include "image_sensor.h"

//Port declaration
on tile[0] : lcd_ports lcdports = {  //triangle slot
  XS1_PORT_1I, XS1_PORT_1L, XS1_PORT_16B, XS1_PORT_1J, XS1_PORT_1K, XS1_CLKBLK_1 };
on tile[0] : sdram_ports sdramports = {  //star slot
  XS1_PORT_16A, XS1_PORT_1B, XS1_PORT_1G, XS1_PORT_1C, XS1_PORT_1F, XS1_CLKBLK_2 };
on tile[1] : image_sensor_ports imgports = { //circle slot
   XS1_PORT_1J, XS1_PORT_1K, XS1_PORT_1L, XS1_PORT_16B,
   {XS1_PORT_1H, XS1_PORT_1I, 1000}, XS1_CLKBLK_1
};

#define N_STAGES 4
void allocate_image_space(chanend c_dm, unsigned image[], unsigned binImage[])
{
    for (int i=0; i<=N_STAGES; i++){

        // Register image space
        c_dm <: REG_IMG;
        master{
            c_dm <: (unsigned)LCD_ROW_WORDS;
            c_dm <: (unsigned)LCD_HEIGHT;
        }
        c_dm :> image[i];

        // Register binary image space
        c_dm <: REG_IMG;
        master{
            c_dm <: (unsigned)LCD_ROW_WORDS;
            c_dm <: (unsigned)LCD_HEIGHT;
        }
        c_dm :> binImage[i];

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
				(buffer, unsigned short[])[c] = BOX_COLOUR;

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
				(buffer, unsigned short[])[c] = BOX_COLOUR;
				c = boundBox[cc].yMax;
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
				c_dm <: boundBox[cc].xMax;
				c_dm <: bufferPtr;
			}
			c_dm :> unsigned;

			for (c=boundBox[cc].yMin; c<= boundBox[cc].yMax; c++)
				(buffer, unsigned short[])[c] = BOX_COLOUR;

			c_dm <: IMG_WR_LINE;
			master{
				c_dm <: imgHandle;
				c_dm <: boundBox[cc].xMax;
				c_dm <: bufferPtr;
			}
		}
	}

}


void app(chanend c_dispMan[], streaming chanend c_img)
{
	unsigned image[N_STAGES+1], binImage[N_STAGES+1];
	int area[OBJECT_LOCALIZATION_CCA_MAX_LABEL+1], area_old[OBJECT_LOCALIZATION_CCA_MAX_LABEL+1];
	boundBox_struct boundBox[OBJECT_LOCALIZATION_CCA_MAX_LABEL+1], boundBox_old[OBJECT_LOCALIZATION_CCA_MAX_LABEL+1];
	cog_struct cog[OBJECT_LOCALIZATION_CCA_MAX_LABEL+1];
	int threshold=0, nCC=0, nCC_old=0, i=0;
	timer t; unsigned t1,t2,t3;

	// Allocate space on SDRAM for images
	allocate_image_space(c_dispMan[0], image, binImage);

	// Init image sensor - Set capture window size
    image_sensor_set_capture_window(c_img, LCD_HEIGHT, LCD_WIDTH);

    // Init display
    c_dispMan[0] <: FB_INIT;
    c_dispMan[0] <: image[N_STAGES];

	// Connected component analysis in pipeline
	while (1){
//    for (unsigned n=0; n<100; n++){

//        t :> t1;
        image_sensor_get_frame(c_img, c_dispMan[0], image[i%(N_STAGES+1)], LCD_HEIGHT, LCD_WIDTH);
//        delay_milliseconds(10);
//        t :> t2;

/*		par{
			{
				threshold = object_localization_otsu_threshold(c_dispMan[0], image[i%(N_STAGES+1)], LCD_HEIGHT, LCD_WIDTH);
				object_localization_binarization(c_dispMan[0], image[i%(N_STAGES+1)], binImage[i%(N_STAGES+1)], LCD_HEIGHT, LCD_WIDTH, threshold);
			}
			if ((i-1)>=0)
				object_localization_morphological_closing(c_dispMan[1], binImage[(i-1)%(N_STAGES+1)], LCD_HEIGHT, LCD_WIDTH);

			if ((i-2)>=0)
				nCC = object_localization_CCA(c_dispMan[2], binImage[(i-2)%(N_STAGES+1)], LCD_HEIGHT, LCD_WIDTH, boundBox, area, cog);

			if ((i-3)>=0){
				annotate_image(c_dispMan[3], image[(i-3)%(N_STAGES+1)], LCD_HEIGHT, LCD_WIDTH, nCC_old, boundBox_old, area_old);
		        c_dispMan[3] <: FB_COMMIT;  // Display the annotated image
		        c_dispMan[3] <: image[(i-3)%(N_STAGES+1)];
			}
		}
//		t :> t3;
*/

        threshold = object_localization_otsu_threshold(c_dispMan[0], image[i%(N_STAGES+1)], LCD_HEIGHT, LCD_WIDTH);
        object_localization_binarization(c_dispMan[0], image[i%(N_STAGES+1)], binImage[i%(N_STAGES+1)], LCD_HEIGHT, LCD_WIDTH, threshold);
        object_localization_morphological_closing(c_dispMan[1], binImage[(i)%(N_STAGES+1)], LCD_HEIGHT, LCD_WIDTH);
        nCC = object_localization_CCA(c_dispMan[2], binImage[(i)%(N_STAGES+1)], LCD_HEIGHT, LCD_WIDTH, boundBox, area, cog);
        annotate_image(c_dispMan[3], image[(i)%(N_STAGES+1)], LCD_HEIGHT, LCD_WIDTH, nCC_old, boundBox_old, area_old);
        c_dispMan[3] <: FB_COMMIT;  // Display the annotated image
        c_dispMan[3] <: image[(i)%(N_STAGES+1)];



		nCC_old = nCC;
		for (int j=1; j<=nCC; j++){
			boundBox_old[j].xMin = boundBox[j].xMin;
			boundBox_old[j].yMin = boundBox[j].yMin;
			boundBox_old[j].xMax = boundBox[j].xMax;
			boundBox_old[j].yMax = boundBox[j].yMax;
			area_old[j] = area[j];
		}
		i++;
//        delay_milliseconds(10);   // To remove flicker. image quality is still the same.

	}

    printintln(t2-t1); printintln(t3-t2);

}




int main(){
	chan c_dc,c_lcd,c_sdram;
	streaming chan c_img_sen;
	chan c_dm[OBJECT_LOCALIZATION_CHANNELS];

	par{
		on tile[0]: app(c_dm,c_img_sen);
        on tile[1]: image_sensor_server(imgports, c_img_sen);
		on tile[1]: object_localization_display_manager(c_dm, c_dc);
		on tile[0]: display_controller(c_dc,c_lcd,c_sdram);
		on tile[0]: lcd_server(c_lcd,lcdports);
		on tile[0]: sdram_server(c_sdram,sdramports);
	}

	return 0;

}

