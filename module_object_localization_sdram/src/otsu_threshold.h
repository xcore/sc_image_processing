
#ifndef OTSU_THRESHOLD_H_
#define OTSU_THRESHOLD_H_

#define OTSU_THRESHOLD_HIST_RANGE 100 // Histogram initially normalised to [0,100]

/** \brief Otsu's threshold computation.
 *
 * \param c_dm The channel connecting display manager.
 * \param imgHandle The colour image handle.
 * \param imgHeight The image height.
 * \param imgWidth The image width.
 * \return Threshold value.
 */
int object_localization_otsu_threshold(chanend c_sdram, unsigned imgSDRAMbank, unsigned imgSDRAMrow, unsigned imgHeight, unsigned imgWidth);

#endif /* OTSU_THRESHOLD_H_ */
