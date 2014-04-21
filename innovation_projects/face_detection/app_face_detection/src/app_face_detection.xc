#include <platform.h>
#include "sdram.h"
#include "lcd.h"
#include "display_controller.h"
#include "loader.h"
#include <print.h>
#include "skin_pixels.h"
#include "CCA.h"
#include "CCA_conf.h"
#include <stdio.h>

on tile[0] : lcd_ports lcdports = {
  XS1_PORT_1I, XS1_PORT_1L, XS1_PORT_16B, XS1_PORT_1J, XS1_PORT_1K, XS1_CLKBLK_1 };
on tile[0] : sdram_ports sdramports = {
  XS1_PORT_16A, XS1_PORT_1B, XS1_PORT_1G, XS1_PORT_1C, XS1_PORT_1F, XS1_CLKBLK_2 };


#define IMAGE_COUNT (1)     //no.of images as input
#define BOX_COLOUR 0x07E0	// RGB565 for Green colour

char images[IMAGE_COUNT][15] = { "face2.tga"};  //enter name of the image files with .tga extension

static void load_image(chanend c_c_server, streaming chanend c_loader, unsigned image_no) {
  unsigned buffer[LCD_ROW_WORDS];
  for (unsigned line = 0; line < LCD_HEIGHT; line++){
    for(unsigned i=0;i<LCD_ROW_WORDS*2;i++)
      c_loader :> (buffer, short[])[i];
    display_controller_image_write_line(c_c_server, line, image_no, buffer);
    display_controller_wait_until_idle(c_c_server,buffer);
  }
}

void app(chanend c_server, streaming chanend c_loader){
  unsigned image,binImage;
  int area[OBJECT_LOCALIZATION_CCA_MAX_LABEL+1], nCC = 0,ccr;
     	boundBox_struct boundBox[OBJECT_LOCALIZATION_CCA_MAX_LABEL+1];
      	cog_struct cog[OBJECT_LOCALIZATION_CCA_MAX_LABEL+1];
  unsigned xw, m=0;


    image = display_controller_register_image(c_server, LCD_ROW_WORDS, LCD_HEIGHT);
    binImage=display_controller_register_image(c_server, LCD_ROW_WORDS, LCD_HEIGHT);
    load_image(c_server, c_loader, image);
    skin_pixels(c_server,image,binImage);
   // display_controller_frame_buffer_init(c_server,binImage);
        nCC=object_localization_CCA(c_server,binImage,boundBox,area,cog);

        //checks for the connected component with maximum area
          for (int cc=1; cc<=nCC; cc++){
       	   if (area[cc]>m)
       	   {
       		   m=area[cc];
       		   ccr=cc;
       	   }
          }


       //drawing the green box for the face
       unsigned buffer[LCD_ROW_WORDS];
          	int c;
     	display_controller_image_read_line(c_server,boundBox[ccr].xMin,image,buffer);
          display_controller_wait_until_idle(c_server,buffer);

        for (c=boundBox[ccr].yMin; c<= boundBox[ccr].yMax; c++)
       (buffer, unsigned short[])[c] = BOX_COLOUR;

      display_controller_image_write_line(c_server,boundBox[ccr].xMin,image,buffer);
       display_controller_wait_until_idle(c_server,buffer);

       for (int line=boundBox[ccr].xMin+1; line<boundBox[ccr].xMax; line++){
          display_controller_image_read_line(c_server,line,image,buffer);
          display_controller_wait_until_idle(c_server,buffer);

          c = boundBox[ccr].yMin;
          (buffer, unsigned short[])[c] = BOX_COLOUR;
          	c = boundBox[ccr].yMax;
          	(buffer, unsigned short[])[c] = BOX_COLOUR;

          	 display_controller_image_write_line(c_server,line,image,buffer);
          	 display_controller_wait_until_idle(c_server,buffer);
    }

        display_controller_image_read_line(c_server,boundBox[ccr].xMax,image,buffer);
        display_controller_wait_until_idle(c_server,buffer);

        for (c=boundBox[ccr].yMin; c<= boundBox[ccr].yMax; c++)
        (buffer, unsigned short[])[c] = BOX_COLOUR;

       display_controller_image_write_line(c_server,boundBox[ccr].xMax,image,buffer);
        display_controller_wait_until_idle(c_server,buffer);

  display_controller_frame_buffer_init(c_server,image);

}


void main() {
  chan c_sdram, c_lcd, c_client;
  streaming chan c_loader;
  par {
	  on tile[0]:app(c_client, c_loader);
	  on tile[0]:display_controller(c_client, c_lcd, c_sdram);
	  on tile[0]:sdram_server(c_sdram, sdramports);
	  on tile[0]:lcd_server(c_lcd, lcdports);
	  on tile[1]:loader(c_loader, images, IMAGE_COUNT);
  }
}

