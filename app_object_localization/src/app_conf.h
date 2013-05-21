
#ifndef APP_CONF_H_
#define APP_CONF_H_

#define IMAGE_COUNT 5
static char images[IMAGE_COUNT][30] = {"images/microbes.tga","images/coins.tga","images/plus.tga","images/patterns.tga","images/paper_bits.tga"};

#define SIZE_THRESHOLD 25	// For removing unwanted connected components
#define BOX_COLOR 0x07E0	// RGB565 for Green color

#endif /* APP_CONF_H_ */
