
#ifndef APP_CONF_H_
#define APP_CONF_H_

// Images with bright objects on a dark background
#define THRESHOLD 3
#define IMAGE_COUNT 10
//static char images[IMAGE_COUNT][30] = { {"images/audio2.tga"}, {"images/audio.tga"},{"images/audio3.tga"},{"images/deck.tga"},{"images/sofas.tga"},{"images/usb-chips.tga"}};
//static char images[IMAGE_COUNT][30] = { {"images/4001-tif.tga"}, {"images/4010-tif.tga"},{"images/4019-tif.tga"},{"images/4037-tif.tga"},{"images/4046-tif.tga"},{"images/4055-tif.tga"},
//      {"images/4064-tif.tga"}, {"images/4073-tif.tga"},{"images/4082-tif.tga"},{"images/4091-tif.tga"},{"images/4100-tif.tga"},{"images/4109-tif.tga"}};
//static char images[IMAGE_COUNT][30] = { {"images/4001-tif.tga"}, {"images/4010-tif.tga"},{"images/4019-tif.tga"},{"images/4046-tif.tga"},{"images/4037-tif.tga"},{"images/4055-tif.tga"},{"images/4064-tif.tga"},
//      {"images/4073-tif.tga"},{"images/4082-tif.tga"},{"images/4091-tif.tga"},{"images/4100-tif.tga"},{"images/4109-tif.tga"}};
static char images[IMAGE_COUNT][30] = { {"images/2001-tif.tga"}, {"images/2011-tif.tga"},{"images/2021-tif.tga"},{"images/2031-tif.tga"},{"images/2041-tif.tga"},{"images/2051-tif.tga"},{"images/2061-tif.tga"},
        {"images/2071-tif.tga"},{"images/2081-tif.tga"},{"images/2091-tif.tga"}/*,{"images/2101-tif.tga"},{"images/2111-tif.tga"},{"images/2121-tif.tga"}*/};
#define SIZE_THRESHOLD 50   // For removing unwanted connected components
#define BOX_COLOR 0x07E0    // RGB565 for Green color

#endif /* APP_CONF_H_ */
