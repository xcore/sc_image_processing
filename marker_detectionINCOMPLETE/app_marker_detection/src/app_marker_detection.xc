
#include <platform.h>
#include <stdint.h>
#include <print.h>
#include <xscope.h>

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

#define N_STAGES 3
void allocate_image_space(chanend c_dm, unsigned image[], unsigned binImage[])
{
    for (int i=0; i<N_STAGES; i++){

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


{int,int}  locate_marker(chanend c_dm, int nCC, int area[], cog_struct cog[], unsigned image){
    struct rect_region {
        int cornerX[4];
        int cornerY[4];
        int centerX;
        int centerY;
    };
    struct rect_region rect;
    int markerX, markerY;
    int center_found=0, marker_found=0, i=0;
    unsigned buffer[LCD_ROW_WORDS];
    intptr_t bufferPtr;

    asm("mov %0, %1" : "=r"(bufferPtr) : "r"(buffer));

    for (int cc=1; cc<=nCC; cc++){
        if (area[cc]>SIZE_THRESHOLD){

            // Get R,G,B values of cog of connected components
            c_dm <: IMG_RD_LINE;
            master{
                c_dm <: image;
                c_dm <: cog[cc].x;
                c_dm <: bufferPtr;
            }
            c_dm :> unsigned;

            unsigned short temp = (buffer, unsigned short[])[cog[cc].y];
            unsigned char r = temp & 0x1f; r = r<<3;
            unsigned char g = (temp>>5) & 0x3f; g = g<<2;
            unsigned char b = (temp>>11) & 0x1f; b = b<<3;

            // Test for the center of rectangular region
            if ((b>r)&&(b>>g)){
                if (center_found) return {0,0};
                center_found = 1;
                rect.centerX = cog[cc].x;
                rect.centerY = cog[cc].y;
            }

            // Test for the marker
            if ((g>r)&&(g>b)){
                if (marker_found) return {0,0};
                marker_found = 1;
                markerX = cog[cc].x;
                markerY = cog[cc].y;
            }

            // Test for the corner of rectangular region
            if ((b>r)&&(b>g)){
                if (i=4) return {0,0};
                rect.cornerX[i] = cog[cc].x;
                rect.cornerY[i] = cog[cc].y;
                i++;
            }

        }
    }

    // Find the actual coordinates

}


#define TOLERANCE 5
void app(chanend c_dispMan[], streaming chanend c_img)
{
	unsigned image[N_STAGES], binImage[N_STAGES];
	int area[OBJECT_LOCALIZATION_CCA_MAX_LABEL+1];
	boundBox_struct boundBox[OBJECT_LOCALIZATION_CCA_MAX_LABEL+1];
	cog_struct cog[OBJECT_LOCALIZATION_CCA_MAX_LABEL+1];
	int threshold=0, nCC=0, i=0;
	int x,y,xOld=0,yOld=0;

	// Allocate space on SDRAM for images
	allocate_image_space(c_dispMan[0], image, binImage);

	// Init image sensor - Set capture window size
    image_sensor_set_capture_window(c_img, LCD_HEIGHT, LCD_WIDTH);

    // Init display
    c_dispMan[0] <: FB_INIT;
    c_dispMan[0] <: image[N_STAGES-1];

	// Connected component analysis in pipeline
	while (1){

        image_sensor_get_frame(c_img, c_dispMan[0], image[i%N_STAGES], LCD_HEIGHT, LCD_WIDTH);

//        c_dispMan[0] <: FB_COMMIT;  // Display the annotated image
//        c_dispMan[0] <: image[i%N_STAGES];


		par{
			{
				threshold = object_localization_otsu_threshold(c_dispMan[0], image[i%N_STAGES], LCD_HEIGHT, LCD_WIDTH);
				object_localization_binarization(c_dispMan[0], image[i%N_STAGES], binImage[i%N_STAGES], LCD_HEIGHT, LCD_WIDTH, threshold);
//                c_dispMan[0] <: FB_COMMIT;  // Display the annotated image
//                c_dispMan[0] <: image[i%N_STAGES];
			}
			if ((i-1)>=0)
				object_localization_morphological_closing(c_dispMan[1], binImage[(i-1)%N_STAGES], LCD_HEIGHT, LCD_WIDTH);

			if ((i-2)>=0)
				nCC = object_localization_CCA(c_dispMan[2], binImage[(i-2)%N_STAGES], LCD_HEIGHT, LCD_WIDTH, boundBox, area, cog);

		}

//printintln(nCC);
        {x,y} = locate_marker(c_dispMan[2], nCC, area, cog, image[i-2]);
        if (x && y)
            if (abs(x-xOld)>TOLERANCE && abs(y-yOld)>TOLERANCE){
                printstr("Marker located at (");
                printint(x); printstr(","); printintln(y);
            }
        xOld = x; yOld = y;
		i++;
        delay_seconds(1);   // To wait for the move.

	}

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

