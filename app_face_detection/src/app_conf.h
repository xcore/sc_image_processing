
#ifndef APP_CONF_H_
#define APP_CONF_H_

// Images with bright objects on a dark background
#define IMAGE_COUNT 4
static char images[IMAGE_COUNT][40] = {"image/face1.tga","image/face3.tga","image/face6.tga","image/face8.tga"};
#define BOX_COLOUR 0x07E0	// RGB565 for Green colour
#define SIZE_THRESHOLD 50   // For removing unwanted connected components
#endif /* APP_CONF_H_ */
