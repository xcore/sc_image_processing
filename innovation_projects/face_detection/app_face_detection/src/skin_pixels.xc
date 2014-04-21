
#include <stdint.h>
#include "skin_pixels.h"
#include "lcd.h"
#include "display_controller.h"

#define min(X,Y) ((X) < (Y) ? (X) : (Y))
#define max(X,Y) ((X) > (Y) ? (X) : (Y))

void skin_pixels(chanend c, unsigned imgHandle, unsigned binImgHandle)
{
	unsigned buffer[LCD_ROW_WORDS],m1,m11,m2,m22;	//Buffer to store current row

	for (int line=0; line<LCD_HEIGHT; line++){
display_controller_image_read_line(c,line,imgHandle,buffer);
display_controller_wait_until_idle(c,buffer);

		// Find rgb component of pixels and binarise
		for (int c=0; c<LCD_ROW_WORDS*2; c++){
			unsigned short rgb565 = (buffer,unsigned short[])[c];
			unsigned char b = (rgb565 & 0xf800) >> 8; //Red component
			unsigned char g = (rgb565 & 0x7E0) >> 3; //Green component
			unsigned char r = (rgb565 & 0x001f) << 3; //Blue component
			 m1 = max(r,g);
			 m11 = max(m1,b);
			 m2 = min(r,g);
			 m22 = min(m2,b);
			         // Rules for skin pixel detection
			    	  if (r>95 && g>40 && b>20 && r>g && g>b && ((m22-m11)>15) && ((m1-m2)>15))
			    		  (buffer,unsigned short[])[c]  = 0xffff;

			    	  			else
			    	  				(buffer,unsigned short[])[c]  = 0x0000;
		}

		display_controller_image_write_line(c,line,binImgHandle,buffer);
		display_controller_wait_until_idle(c,buffer);

	}
}


