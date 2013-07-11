
sc_image_processing
............

:Latest release: 0.0.1beta0
:Maintainer: sudhanatraj
:Description: This component is a machine vision application. It locates the objects in a given colour or gray image. The image should contain bright objects on a dark background or vice versa.




Description
===========

This component is a machine vision application. It locates the objects in a given colour or gray image. The image should contain bright objects on a dark background or vice versa.

Key Features
============

   * An example of a simple image processing pipeline for object localization
   * Functions implemented are Otsu's threshold computation, binarisation, morphological operations and connected component analysis, each running in their own logical core
   * Design to demonstrate how image processing operations can be pipelined over multiple logical cores on XMOS multicore microcontrollers
   * Requires external SDRAM with SDRAM controller xSOFTip for intermediate frame storage
   * Results of object localization are the bounding box coordinates, center of gravity and the area in pixels of objects obtained from connected component analysis

Firmware Overview
=================

The module_object_localization contains typical image processing operations performed in locating objects in a given still color/gray image. The app_object_localization demonstrates a pipelined processing of a sequence of images.

Known Issues
============

none

Support
=======

Issues may be submitted via the Issues tab in this github repo. Response to any issues submitted as at the discretion of the maintainer for this line.

Required software (dependencies)
================================

  * sc_lcd (https://github.com/xcore/sc_lcd.git)
  * sc_util (https://github.com/xcore/sc_util.git)
  * sc_i2c (https://github.com/xcore/sc_i2c.git)
  * sw_display_controller (https://github.com/xcore/sw_display_controller.git)
  * sc_sdram_burst (https://github.com/xcore/sc_sdram_burst.git)

