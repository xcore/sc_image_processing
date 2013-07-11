Overview
========

This component locates the objects in a given colour or gray image. The image should contain bright objects on a dark background or vice versa.

The following image processing functions are implemented to achieve object localisation:

   - Otsu's threshold computation
   - Binarisation
   - Morphological closing
   - Single pass connected component analysis

The goal of these components is to demonstarte how an image processing pipeline can be distributed over the logical cores offered by XMOS multicore microcontrollers and how to employ them alongside the SDRAM and LCD controller xSOFTip.
