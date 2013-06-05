
#ifndef SINGLE_PASS_CCA_CONF_H_
#define SINGLE_PASS_CCA_CONF_H_

#define BRIGHT_OBJ_DARK_BG	1	// 1 for bright objects on dark background; 0 otherwise
#define IMAGE_PROCESSING_CCA_MAX_LABEL	200		// Maximum number of labels
#define IMAGE_PROCESSING_DILATION	1		// Dilate before CCA to fuse disconnected components
#define IMAGE_PROCESSING_STRUC_ELMT	5	// 3 for 3x3 structuring element and 5 for 5x5

#endif /* SINGLE_PASS_CCA_CONF_H_ */
