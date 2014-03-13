/*********************************************************
 * Connected component analysis on color or gray images
 * containing bright objects on a dark background
 *********************************************************/

#include <stdint.h>
#include <assert.h>

#include "CCA_conf.h"
#include "CCA.h"
#include "lcd.h"
#include "display_manager.h"


// FUNCTION TO FIND THE MINIMUM OF FOUR LABELS

static int min_label(int a,int b,int c,int d)
{
	int m=IMAGE_PROCESSING_CCA_MAX_LABEL;

	if(a) m=a;
	if(b && b<m) m=b;
	if(c && c<m) m=c;
	if(d && d<m) m=d;

	return m; //Returns non-zero minimum;
}


// SINGLE PASS CONNECTED COMPONENT ANALYSIS
// Ref: D.G.Bailey and C.T.Johnston, "Single pass connected component analysis", Image and Vision Computing Conference, Dec 2007.

int image_processing_CCA(chanend c_dm, unsigned binImgHandle, unsigned imgHeight, unsigned imgWidth, boundBox_struct boundBox[], int area[], cog_struct cog[])
{
	int cnt=0;


	int A=0,B=0,C=0,D=0; 				//Neighbours of a pixel under consideration
	int labelNo=1; 						//Counter for label
	int mergerTable[IMAGE_PROCESSING_CCA_MAX_LABEL+1]; 	//Merger table maintaining equivalences among labels
	int rowBuff[2*LCD_ROW_WORDS]; 		//Row buffer for storing one row of image
	unsigned i,e,e1;
	unsigned buffer[LCD_ROW_WORDS];	// Buffer for storing image row
	intptr_t bufferPtr;


	//INITIALISATION

	for(i=0;i<IMAGE_PROCESSING_CCA_MAX_LABEL+1;i++)
	{
		boundBox[i].xMin=imgHeight;
		boundBox[i].yMin=imgWidth;
		boundBox[i].xMax=0;
		boundBox[i].yMax=0;
		mergerTable[i]=0;
		area[i]=0;
		cog[i].x=0;
		cog[i].y=0;
	}

	for (i=0; i<2*LCD_ROW_WORDS; i++)
		rowBuff[i] = 0;

	// Init buffer pointer
	asm("mov %0, %1" : "=r"(bufferPtr) : "r"(buffer));

	//SINGLE PASS ALGORITHM BEGINS
	for(i=0;i<imgHeight;i++)
	{
		// Read image lines from SDRAM through display manager
		c_dm <: IMG_RD_LINE;
		master {
			c_dm <: binImgHandle;
			c_dm <: i;
			c_dm <: bufferPtr;
		}
		c_dm :> unsigned;

		for(unsigned j=0;j<imgWidth;j++)
		{

			if((buffer,unsigned short[])[j]) //Connected component analysis of 1-pixels
			{

				if(A==0 && B==0 && C==0 && D==0) //Check A,B,C,D are background pixels
				{
					rowBuff[j]=labelNo; // A,B,C,D are background hence assigning a new label
					mergerTable[labelNo]=labelNo; //Updating the new label in the merger table
					labelNo++;
					assert(labelNo<=IMAGE_PROCESSING_CCA_MAX_LABEL);
				}

				if(A||B||C||D) //if any of A,B,C,D is not a background pixel
				{
					rowBuff[j]=min_label(A,B,C,D); //min_label fn is called and the min label among the four values is stored

					if(rowBuff[j]<A) //If A is not the least label then mergertable content of A is replaced with minimum
						mergerTable[A]=rowBuff[j];
					if(rowBuff[j]<B) //If B is not the least label then mergertable content of B is replaced with minimum
						mergerTable[B]=rowBuff[j];
					if(rowBuff[j]<C) //If C is not the least label then mergertable content of C is replaced with minimum
						mergerTable[C]=rowBuff[j];
					if(rowBuff[j]<D) //If D is not the least label then mergertable content of D is replaced with minimum
						mergerTable[D]=rowBuff[j];
				}
			}
			else
				rowBuff[j]=0; //0 assigned to background pixel


			// NEIGHBOURHOOD UPDATE AFTER PROCESSING A PIXEL

			if(j<(imgWidth-1))
			{
				A=B;
				B=C;
				if(j<(imgWidth-2)) C=mergerTable[rowBuff[j+2]];
				if(j==imgWidth-2) C=0;
				if(j) rowBuff[j-1]=D;
				D=rowBuff[j];
			}

			if(j==(imgWidth-1))
			{
				A=0;
				B=mergerTable[rowBuff[0]];
				C=mergerTable[rowBuff[1]];
				rowBuff[j-1]=D;
				D=0;
			}

			// UPDATE DATA TABLE FEATURES

			area[rowBuff[j]]++; //Area is incremented for the new pixel's label
			cog[rowBuff[j]].x+=i; cog[rowBuff[j]].y+=j; //Update center of gravity for the new pixel's label

			//Finding the bounding box values
			if(i<boundBox[rowBuff[j]].xMin) boundBox[rowBuff[j]].xMin=i;
			if(j<boundBox[rowBuff[j]].yMin) boundBox[rowBuff[j]].yMin=j;
			if(i>boundBox[rowBuff[j]].xMax) boundBox[rowBuff[j]].xMax=i;
			if(j>boundBox[rowBuff[j]].yMax) boundBox[rowBuff[j]].yMax=j;

		}


		//UPDATE MERGERTABLE WITHOUT USING STACK AFTER PROCESSING EACH ROW

		for(e=1;e<labelNo;e++)
		{
			if(mergerTable[e]!=e)
			{
				e1=mergerTable[e];
				mergerTable[e]=mergerTable[e1]; // Point e to its lowest equivalent label.
				// One level resolving is sufficient as labels are processed in ascending order.
			}
		}

	}


	//UPDATING THE DATA TABLE. SMALLEST LABEL'S FEATURES OF EACH CONNECTED COMPONENT UPDATED

	labelNo--;
	for(e=labelNo;e>=1;e--)
	{
		if (mergerTable[e]!=e)
		{
			e1=mergerTable[e];
			area[e1]+=area[e];
			cog[e1].x+=cog[e].x;
			cog[e1].y+=cog[e].y;
			if (boundBox[e].xMin<boundBox[e1].xMin)
				boundBox[e1].xMin=boundBox[e].xMin;
			if (boundBox[e].yMin<boundBox[e1].yMin)
				boundBox[e1].yMin=boundBox[e].yMin;
			if (boundBox[e].xMax>boundBox[e1].xMax)
				boundBox[e1].xMax=boundBox[e].xMax;
			if (boundBox[e].yMax>boundBox[e1].yMax)
				boundBox[e1].yMax=boundBox[e].yMax;
		}
		else
		{
			cnt++; // Counter giving number of connected components is incremented for representative labels
			cog[e].x/=area[e];
			cog[e].y/=area[e];
		}
	}


	//Moving the contents of data tables to the beginning

	i=1;
	for(e=1;e<=labelNo;e++)
	{
		if(mergerTable[e]==e) // Contents of representative lowest label of each connected component printed
		{
			area[i] = area[e];
			cog[i].x = cog[e].x;
			cog[i].y = cog[e].y;
			boundBox[i].xMin = boundBox[e].xMin;
			boundBox[i].yMin = boundBox[e].yMin;
			boundBox[i].xMax = boundBox[e].xMax;
			boundBox[i].yMax = boundBox[e].yMax;
			i++;
		}
	}

	return cnt;
}



