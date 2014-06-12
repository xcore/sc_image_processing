
#ifndef MORPH_CLOSING_H_
#define MORPH_CLOSING_H_

/** \brief Morphological closing operation.
 *
 * \param c_dm The channel connecting display manager.
 * \param binImgHandle The binary image handle.
 * \param imgHeight The image height.
 * \param imgWidth The image width.
 */
void object_localization_morphological_closing(chanend c_sdram, unsigned binImgSDRAMbank, unsigned binImgSDRAMrow, unsigned imgHeight, unsigned imgWidth);

#endif /* MORPH_CLOSING_H_ */
