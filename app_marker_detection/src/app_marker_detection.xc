
#include <platform.h>
#include <stdint.h>
#include <print.h>
#include <xscope.h>
#include <stdlib.h>

#include "app_conf.h"
#include "sdram.h"
#include "otsu_threshold.h"
#include "binarization.h"
#include "morph_closing.h"
#include "CCA.h"
#include "CCA_conf.h"
#include "image_sensor.h"

//Port declaration
on tile[0] : sdram_ports sdramports = {  //star slot
  XS1_PORT_16A, XS1_PORT_1B, XS1_PORT_1G, XS1_PORT_1C, XS1_PORT_1F, XS1_CLKBLK_2 };
on tile[1] : image_sensor_ports imgports = { //circle slot
   XS1_PORT_1J, XS1_PORT_1K, XS1_PORT_1L, XS1_PORT_8C,
   {XS1_PORT_1H, XS1_PORT_1I, 1000}, XS1_CLKBLK_1
};

#define N_STAGES 3
typedef struct imgHandle{
    unsigned sdramBank;
    unsigned sdramRow;
}imgHandle;

void allocate_image_space(chanend c_dm, imgHandle image[], imgHandle binImage[])
{
    unsigned rowIncrement = (IMG_WIDTH/SDRAM_COL_COUNT)+1;
    for (int i=0; i<N_STAGES; i++){
            image[i].sdramBank = 0;
            binImage[i].sdramBank = 1;
            image[i].sdramRow = binImage[i].sdramRow = i*IMG_HEIGHT*rowIncrement;
    }

}


{int,int,int}  locate_marker(int nCC, int area[], cog_struct cog[], boundBox_struct boundBox[]){
    int markerX, markerY, centerX, centerY;
    unsigned valid_nCC=0, markerArea=IMG_HEIGHT*IMG_WIDTH, rectBoundArea=0;
    int length, breadth;

    // Identify marker and the center of rectangular region
    for (int cc=1; cc<=nCC; cc++)
        if (area[cc]>SIZE_THRESHOLD) {
            valid_nCC++;
            if (area[cc]<markerArea) {
                markerArea = area[cc];
                markerX = cog[cc].x;
                markerY = cog[cc].y;
            }
            if (area[cc]>rectBoundArea) {
                rectBoundArea = area[cc];
                length = boundBox[cc].yMax-boundBox[cc].yMin;
                breadth = boundBox[cc].xMax-boundBox[cc].xMin;
                centerX = breadth/2 + boundBox[cc].xMin;
                centerY = length/2 + boundBox[cc].yMin;
            }
        }

    if (valid_nCC !=2) return {0,0,0};

    // Return the actual coordinates
    return { ((centerY-markerY)*RECT_LENGTH/length), ((markerX-centerX)*RECT_BREADTH/breadth), 1 };

}


#define TOLERANCE 3
void app(chanend c_sdram[], streaming chanend c_img)
{
	imgHandle image[N_STAGES], binImage[N_STAGES];
	int area[OBJECT_LOCALIZATION_CCA_MAX_LABEL+1];
	boundBox_struct boundBox[OBJECT_LOCALIZATION_CCA_MAX_LABEL+1];
	cog_struct cog[OBJECT_LOCALIZATION_CCA_MAX_LABEL+1];
	int threshold=0, nCC=0, i=0;
	int x,y,xOld=RECT_LENGTH,yOld=RECT_BREADTH,valid_xy;

	// Allocate space on SDRAM for images
	allocate_image_space(c_sdram[0], image, binImage);

	// Init image sensor - Set capture window size
    image_sensor_set_capture_window(c_img, IMG_HEIGHT, IMG_WIDTH);

	// Connected component analysis in pipeline
	while (1){

        image_sensor_get_frame(c_img, c_sdram[0], image[i%N_STAGES].sdramBank, image[i%N_STAGES].sdramRow, IMG_HEIGHT, IMG_WIDTH);

		par{
			{
				threshold = object_localization_otsu_threshold(c_sdram[1], image[i%N_STAGES].sdramBank, image[i%N_STAGES].sdramRow, IMG_HEIGHT, IMG_WIDTH);
				object_localization_binarization(c_sdram[1], image[i%N_STAGES].sdramBank, image[i%N_STAGES].sdramRow, binImage[i%N_STAGES].sdramBank, binImage[i%N_STAGES].sdramRow, IMG_HEIGHT, IMG_WIDTH, threshold);
			}
			if ((i-1)>=0)
				object_localization_morphological_closing(c_sdram[2], binImage[(i-1)%N_STAGES].sdramBank, binImage[(i-1)%N_STAGES].sdramRow, IMG_HEIGHT, IMG_WIDTH);

			if ((i-2)>=0)
				nCC = object_localization_CCA(c_sdram[3], binImage[(i-2)%N_STAGES].sdramBank, binImage[(i-2)%N_STAGES].sdramRow, IMG_HEIGHT, IMG_WIDTH, boundBox, area, cog);

		}

		delay_milliseconds(100);    // delay needed for correct functionality

		// Marker coordinates computation
//		if ((i-2)>=0){
		if ((i-2)>=0 && nCC==2){
            {x,y,valid_xy} = locate_marker(nCC, area, cog, boundBox);
            if (valid_xy){
                if (abs(x-xOld)>TOLERANCE || abs(y-yOld)>TOLERANCE){
                    printstr("Marker located at (");
                    if (x<0) printstr("-");
                    printint(abs(x)/10); printstr("."); printint(abs(x)%10); printstr(" cm, ");
                    if (y<0) printstr("-");
                    printint(abs(y)/10); printstr("."); printint(abs(y)%10); printstrln(" cm)");
                }
                xOld = x; yOld = y;
            }
        }

		i++;

	}


}



int main(){
	chan c_dc,c_sdram[SDRAM_CLIENT_COUNT];
	streaming chan c_img_sen;

	par{
		on tile[0]: app(c_sdram,c_img_sen);
        on tile[1]: image_sensor_server(imgports, c_img_sen);
		on tile[0]: sdram_server(c_sdram,sdramports);
	}

	return 0;

}

