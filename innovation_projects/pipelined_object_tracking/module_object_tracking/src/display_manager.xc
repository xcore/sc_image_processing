#include <stdint.h>

#include "display_manager_conf.h"
#include "display_manager.h"
#include "display_controller.h"
#include "lcd_defines.h"
// TODO: change to lcd.h if necessary

static void process_command(unsigned cmd, chanend c_dm, chanend c_dc)
{
	unsigned imgHandle, line, fbHandle, imgWidthWords, imgHeight;
	intptr_t buffer_ptr;
	//unsigned buffer[LCD_ROW_WORDS];

		switch (cmd){
		case REG_IMG:
			slave {
				c_dm :> imgWidthWords;
				c_dm :> imgHeight;
			}
			imgHandle = display_controller_register_image(c_dc, imgWidthWords, imgHeight);
			c_dm <: imgHandle;
			break;

		case IMG_RD_LINE:
			slave {
				c_dm :> imgHandle;
				c_dm :> line;
				c_dm :> buffer_ptr;
			}
			display_controller_image_read_line_p(c_dc, line, imgHandle, buffer_ptr);
			display_controller_wait_until_idle_p(c_dc, buffer_ptr);
			c_dm <: (unsigned)RD_OVER;
			break;

		case IMG_WR_LINE:
			slave {
				c_dm :> imgHandle;
				c_dm :> line;
				c_dm :> buffer_ptr;	
			}
			display_controller_image_write_line_p(c_dc, line, imgHandle, buffer_ptr);
			display_controller_wait_until_idle_p(c_dc, buffer_ptr);
			break;

		case LCD_IMG_WR:
			c_dm :> imgHandle;

			for (unsigned line=0; line<LCD_HEIGHT; line++){
				c_dm :> buffer_ptr;
				display_controller_image_write_line_p(c_dc, line, imgHandle, buffer_ptr);
				display_controller_wait_until_idle_p(c_dc, buffer_ptr);
			}
			break;

		case FB_INIT:
			c_dm :> fbHandle;
			display_controller_frame_buffer_init(c_dc, fbHandle);
			break;

		case FB_COMMIT:
			c_dm :> fbHandle;
			display_controller_frame_buffer_commit(c_dc, fbHandle);
			break;

		default:
			break;
		}

}



void display_manager(chanend c_dm[], chanend c_dc){
	unsigned cmd;

	while (1){

		for (int c=0; c<DISPLAY_MANAGER_CHANNELS; c++){
			select {
			case c_dm[c] :> cmd:
				process_command(cmd, c_dm[c], c_dc);
				break;
			default:
				break;
			}
		}

	}
}


