
#ifndef CCA_H_
#define CCA_H_

typedef struct{
	int xMin;
	int yMin;
	int xMax;
	int yMax;
} boundBox_struct;

typedef struct{
	int x;
	int y;
} cog_struct;

int  image_processing_CCA(chanend c_dm, unsigned imgHandle, unsigned imgHeight, unsigned imgWidth, int binThreshold, boundBox_struct boundBox[], int area[], cog_struct cog[]);

#endif /* CCA_H_ */
