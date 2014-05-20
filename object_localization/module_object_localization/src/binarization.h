
#ifndef BINARIZATION_H_
#define BINARIZATION_H_

/** \brief Binarisation of a colour image using a given threshold.
 *
 * \param c_dm The channel connecting display manager.
 * \param imgHandle The colour image handle.
 * \param binImgHandle The binary image handle.
 * \param imgHeight The image height.
 * \param imgWidth The image width.
 * \param binThreshold The binary threshold value.
 */
void object_localization_binarization(chanend c_dm, unsigned imgHandle, unsigned binImgHandle, unsigned imgHeight, unsigned imgWidth, int binThreshold);

#endif /* BINARIZATION_H_ */
