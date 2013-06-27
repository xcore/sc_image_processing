
#ifndef APP_CONF_H_
#define APP_CONF_H_

// Images with bright objects on a dark background
#define IMAGE_COUNT 5
static char images[IMAGE_COUNT][30] = {"images/car.tga","images/coins.tga","images/horse.tga","images/cheetah.tga","images/gold.tga"};

#define SIZE_THRESHOLD 50	// For removing unwanted connected components
#define BOX_COLOR 0x07E0	// RGB565 for Green color

#endif /* APP_CONF_H_ */
