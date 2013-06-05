#include <syscall.h>
#include <stdio.h>
#include <print.h>
#include "loader.h"
#include "app_conf.h"
#include "lcd.h"


unsigned short rgb888_to_rgb565(char b, char g, char r) {
  return (unsigned short)((r >> 3) & 0x1F) | ((unsigned short)((g >> 2) & 0x3F) << 5)
		  | ((unsigned short)((b >> 3) & 0x1F) << 11);
}


void loader(streaming chanend c){
	char buf[3*LCD_WIDTH], width_height[4];
	unsigned short  Width=0, Height=0, Size;
	unsigned short rgb;
	unsigned k=0;

	while(k<IMAGE_COUNT){
		int fp =_open(images[k], O_RDONLY | O_BINARY, 0644);
	  	if(fp < 0){
	  		iprintf("Error: Couldn't open %s\n", images[k]);
	  	}

	  	_lseek(fp,12,SEEK_SET);
	  	_read(fp, width_height, 4);
	  	Width = (width_height[0]) | (width_height[1]<<8);
	  	Height = (width_height[2]) | (width_height[3]<<8);
	  	c <: Height;
	  	c <: Width;

	  	_lseek(fp, 18, SEEK_SET);
	  	for (unsigned line=0; line<Height; line++){
	  		_read(fp, buf, Width*3);
	  		for (unsigned l=0; l<Width*3; l+=3){
	  			rgb = rgb888_to_rgb565(buf[l], buf[l+1], buf[l+2]);
	  			c <: rgb;
	  		}
	  	}

	  	_close(fp);
	  	k++;
	  	printstr("Loading image "); printintln(k);
	}

}

