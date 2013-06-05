
#ifndef APP_CONF_H_
#define APP_CONF_H_

// Images with bright objects on a dark background
#define IMAGE_COUNT 4
static char images[IMAGE_COUNT][30] = {"images/car.tga","images/coins.tga","images/horse.tga","images/gold.tga"};

// Images with dark objects on a bright background
//#define IMAGE_COUNT 3
//static char images[IMAGE_COUNT][30] = {"images/birds2.tga","images/birds3.tga","images/birds4.tga"};


#define SIZE_THRESHOLD 200	// For removing unwanted connected components
#define BOX_COLOR 0x07E0	// RGB565 for Green color

#endif /* APP_CONF_H_ */
