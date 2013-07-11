
Object Localisation Processing Components
*****************************************

scope:
   Example

description:
   Example implementation of a basic image processing pipeline

keywords:
   image processing

boards:
   XA-SK-SDRAM, XA-SK-SCR480


Key Features
============

   * An examples of a simple image processing pipeline for object
     localisation

   * Functions implemented are Otsu's threshold computation,
     binarisation, morphological operations and connected component
     analysis, each running in their own logical core

   * Design to demonstrate how image processin goperation can be
     pipelined over multiple logical cores on XMOS multicore
     microcontrollers

   * Requires external SDRAM with SDRAM controller xSOFTip for
     intermediate frame storage

   * Results of object localisation are the bounding box coordinates,
     center of gravity and the area in pixels of objects obtained from
     connected component analysis


Description
===========

These are components for object localisation, a basic machine vision
application. It locates the objects in a given colour or gray image
which have bi-modal histograms. Typical usage would be in a low-cost
embedded machine vision applications such as toys or industrial
inspection featuring reliably controlled lighting conditions.

XMOS multicore microcontrollers are also highly suitable for less
orthodox image processing applications such as optical flow, high
speed region-of-interest tracking and blob detection where low cost,
low power and small form factor are required where complex PC or DSP
based solutions are not feasible.
