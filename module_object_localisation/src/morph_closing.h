
#ifndef MORPH_CLOSING_H_
#define MORPH_CLOSING_H_

/** \brief Morphological closing operation.
 *
 * \param c_dm The channel connecting display manager.
 * \param binImgHandle The binary image handle.
 * \param imgHeight The image height.
 * \param imgWidth The image width.
 */
void object_localisation_morphological_closing(chanend c_dm, unsigned binImgHandle, unsigned imgHeight, unsigned imgWidth);

#endif /* MORPH_CLOSING_H_ */
