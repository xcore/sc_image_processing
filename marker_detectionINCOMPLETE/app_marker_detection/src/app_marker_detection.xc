
#include <platform.h>
#include <stdint.h>
#include <print.h>
#include <xscope.h>
#include <stdlib.h>

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
        int cornerORcenterX[5];
        int cornerORcenterY[5];
    };
    struct rect_region rect;
    int markerX, markerY;
    int marker_found=0, i=0;
    unsigned buffer[LCD_ROW_WORDS];
    intptr_t bufferPtr;
    unsigned length, breadth;

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

            // Test for the yellow marker
            if ((r>150)&&(g>150)&&(b<100)){
                if (marker_found) return {0,0};
                marker_found = 1;
                markerX = cog[cc].x;
                markerY = cog[cc].y;
            }

            // Test for the corners and center of rectangular region
            if ((r>150)&&(g>150)&&(b>150)){
                if (i==5) return {0,0};
                rect.cornerORcenterX[i] = cog[cc].x;
                rect.cornerORcenterY[i] = cog[cc].y;
                i++;
            }

        }
    }

    // Identify the center of the rect region
    for (unsigned i=4; i>=1; i--)   // Bubble sort to arrange center and corners in ascending order
        for (unsigned j=0; j<i; j++){
            if (rect.cornerORcenterX[j]>rect.cornerORcenterX[j+1]){
                int temp = rect.cornerORcenterX[j];
                rect.cornerORcenterX[j] = rect.cornerORcenterX[j+1];
                rect.cornerORcenterX[j+1] = temp;
            }
            if (rect.cornerORcenterY[j]>rect.cornerORcenterY[j+1]){
                int temp = rect.cornerORcenterY[j];
                rect.cornerORcenterY[j] = rect.cornerORcenterY[j+1];
                rect.cornerORcenterY[j+1] = temp;
            }
        }

    // Find the actual coordinates; center is (rect.cornerORcenterX[2], rect.cornerORcenterY[2])
    breadth = abs(rect.cornerORcenterX[3]-rect.cornerORcenterX[0]);
    length = abs(rect.cornerORcenterY[3]-rect.cornerORcenterY[0]);

    return { ((markerY-rect.cornerORcenterY[2])*RECT_LENGTH/length), ((markerX-rect.cornerORcenterX[2])*RECT_BREADTH/breadth) };

}


#define TOLERANCE 5
void app(chanend c_dispMan[], streaming chanend c_img)
{
	unsigned image[N_STAGES], binImage[N_STAGES];
	int area[OBJECT_LOCALIZATION_CCA_MAX_LABEL+1];
	boundBox_struct boundBox[OBJECT_LOCALIZATION_CCA_MAX_LABEL+1];
	cog_struct cog[OBJECT_LOCALIZATION_CCA_MAX_LABEL+1];
	int threshold=0, nCC=0, i=0;
	int x=0,y=0,xOld=0,yOld=0;

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

		par{
			{
				threshold = object_localization_otsu_threshold(c_dispMan[0], image[i%N_STAGES], LCD_HEIGHT, LCD_WIDTH);
printintln(threshold);
				object_localization_binarization(c_dispMan[0], image[i%N_STAGES], binImage[i%N_STAGES], LCD_HEIGHT, LCD_WIDTH, threshold);
c_dispMan[0] <: FB_COMMIT;  // Display the annotated image
c_dispMan[0] <: binImage[i%N_STAGES];
			}
			if ((i-1)>=0)
				object_localization_morphological_closing(c_dispMan[1], binImage[(i-1)%N_STAGES], LCD_HEIGHT, LCD_WIDTH);

			if ((i-2)>=0)
				nCC = object_localization_CCA(c_dispMan[2], binImage[(i-2)%N_STAGES], LCD_HEIGHT, LCD_WIDTH, boundBox, area, cog);

		}

printintln(nCC);
        if ((i-2)>=0){
            {x,y} = locate_marker(c_dispMan[2], nCC, area, cog, image[(i-2)%N_STAGES]);
            if (x && y)
                if (abs(x-xOld)>TOLERANCE && abs(y-yOld)>TOLERANCE){
                    printstr("Marker located at (");
                    printint(x); printstr(","); printint(y);printstrln(")");
                }
            xOld = x; yOld = y;
        }

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

