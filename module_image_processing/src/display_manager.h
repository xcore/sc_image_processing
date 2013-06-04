
#ifndef DISPLAY_MANAGER_H_
#define DISPLAY_MANAGER_H_

enum disp_mngr_cmd{
	REG_IMG,
	IMG_RD_LINE,
	RD_WAIT,
	RD_OVER,
	IMG_WR_LINE,
	LCD_IMG_WR,
	FB_INIT,
	FB_COMMIT
};

void display_manager(chanend c_dm[], chanend c_dc);

#endif /* DISPLAY_MANAGER_H_ */
