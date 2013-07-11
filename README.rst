
sc_image_processing
............

:Stable release:  unreleased

:Status:  draft

:Maintainer:  sudhanatraj

Description
===========

This component is a machine vision application. It locates the objects in a given colour or gray image. The image should contain bright objects on a dark background or vice versa.

Key Features
============

   * An example of a simple image processing pipeline for object localisation
   * Functions implemented are Otsu's threshold computation, binarisation, morphological operations and connected component analysis, each running in their own logical core
   * Design to demonstrate how image processing operations can be pipelined over multiple logical cores on XMOS multicore microcontrollers
   * Requires external SDRAM with SDRAM controller xSOFTip for intermediate frame storage
   * Results of object localisation are the bounding box coordinates, center of gravity and the area in pixels of objects obtained from connected component analysis


Firmware Overview
=================

The module_object_localisation contains typical image processing operations performed in locating objects in a given still color/gray image. The app_object_localisation demonstrates a pipelined processing of a sequence of images.

Known Issues
============

none

Required Repositories
=====================

* sc_util (git@github.com:xcore/sc_util.git)
* sc_lcd (git@github.com:xcore/sc_lcd.git)
* sc_i2c (git@github.com:xcore/sc_i2c.git)
* sw_display_controller (git@github.com:xcore/sw_display_controller.git)

Support
=======

Issues may be submitted via the Issues tab in this github repo. Response to any issues submitted as at the discretion of the maintainer for this line.

