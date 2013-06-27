
#ifndef OBJECT_LOCALISATION_H_
#define OBJECT_LOCALISATION_H_

enum disp_mngr_cmd{
	REG_IMG,
	IMG_RD_LINE,
	RD_OVER,
	IMG_WR_LINE,
	LCD_IMG_WR,
	FB_INIT,
	FB_COMMIT
};

/** \brief Display manager for display controller.
 *  It receives commands from different clients and passes on to display controller for processing.
 *
 * \param c_dm The channels connecting clients.
 * \param c_dc The channel connecting display controller.
 */
void object_localisation_display_manager(chanend c_dm[], chanend c_dc);

#endif /* OBJECT_LOCALISATION_H_ */
