
#ifndef CCA_H_
#define CCA_H_

typedef struct{	// Bounding box coordinates
	int xMin;
	int yMin;
	int xMax;
	int yMax;
} boundBox_struct;

typedef struct{	// Center of gravity coordinates
	int x;
	int y;
} cog_struct;


/** \brief Single pass connected component analysis.
 *
 * \param c_dm The channel connecting display manager.
 * \param binImgHandle The binary image handle.
 * \param imgHeight The image height.
 * \param imgWidth The image width.
 * \param boundBox The bounding box coordinates of connected components.
 * \param area The area of connected components in pixels.
 * \param cog The center of gravity of connected components.
 * \return Number of connected components.
 */
int  object_localization_CCA(chanend c_dm, unsigned binImgHandle, unsigned imgHeight, unsigned imgWidth, boundBox_struct boundBox[], int area[], cog_struct cog[]);

#endif /* CCA_H_ */
