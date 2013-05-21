
#ifndef DISPLAY_MANAGER_H_
#define DISPLAY_MANAGER_H_

enum disp_mngr_cmd{
	REG_IMG = 1,
	IMG_RD_LINE = 2,
	RD_OVER = 3,		
	IMG_WR_LINE = 4,
	LCD_IMG_WR = 5,
	FB_INIT = 6,
	FB_COMMIT = 7	
};

void display_manager(chanend c_dm[], chanend c_dc);

#endif /* DISPLAY_MANAGER_H_ */
