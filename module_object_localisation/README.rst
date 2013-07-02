Object Localisation Processing Components 
=========================================

:scope: General Use
:description: Component for object localisation on images
:keywords: Otsu's threshold, morphological operation, connected component analysis
:boards: XA-SK-SDRAM, XA-SK-SCR480

Key Features
------------

   * Contains fundamental image processing functions for object localisation, a machine vision application
   * Functions implemented are Otsu's threshold computation, binarisation, morphological operations and connected component analysis
   * Input images read from SDRAM
   * Output images stored back to SDRAM
   * Results of object localisation are the bounding box coordinates, center of gravity and the area in pixels of objects obtained from connected component analysis
   
Description
-----------

This module is for object localisation, a machine vision application. It locates the objects in a given colour or gray image which has bi-modal histogram. 
That is, the image should contain bright objects on a dark background or vice versa.
