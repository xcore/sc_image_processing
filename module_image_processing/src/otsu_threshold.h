
#ifndef OTSU_THRESHOLD_H_
#define OTSU_THRESHOLD_H_

#define OTSU_THRESHOLD_HIST_RANGE 100 // Histogram initially normalised to [0,100]

int image_processing_otsu_threshold(chanend c_dm, unsigned imgHandle, unsigned imgHeight, unsigned imgWidth);

#endif /* OTSU_THRESHOLD_H_ */
