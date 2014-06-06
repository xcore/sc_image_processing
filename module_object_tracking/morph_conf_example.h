
#ifndef MORPH_CONF_H_
#define MORPH_CONF_H_

#define IMAGE_PROCESSING_NUM_DILATE	1	// Number of times dilation is performed
#define IMAGE_PROCESSING_NUM_ERODE	1	// Number of times erosion is performed
// Note: If erosion is more than dilation, then small spurious components are eroded

#define IMAGE_PROCESSING_STRUC_ELMNT_SIZE 5	//For mxm structuring element, it is m; m is odd; max m is 9;
// Note: m row buffers needed

#endif /* MORPH_CONF_H_ */
