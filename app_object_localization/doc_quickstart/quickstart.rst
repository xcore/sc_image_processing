.. _Object_Localisation_Quickstart:

Object localization Demo Quickstart Guide
=========================================

This demonstration uses the sliceKIT hardware and xSOFTip components listed below to locate objects (blobs) on still colour or gray images and create an interactive display of processed images on the LCD. It demonstrates a pipeline of typical processing steps common in low cost embedded machine vision and some computer vision applications including "Otsu's" thresholding method, morphological operations and connected component analysis. The results are dislayed interactively on the LCD.

  * XA-SK-SCR480 sliceCARD
  * XA-SK-SDRAM sliceCARD
  * SDRAM Memory Controller
  * Parallel RGB LCD Driver
  * Touch Screen Driver Function Library

.. figure:: images/blk_diag.jpg
   :width: 400px
   :align: center

   Pipelined Stages for Object localization
   

Hardware Setup
++++++++++++++

The XP-SKC-L2 sliceKIT Core board has four slots with edge connectors: ``SQUARE``, ``CIRCLE``, ``TRIANGLE`` and ``STAR``. 

To setup up the system:

   #. Connect the XA-SK-SDRAM sliceCARD to the XP-SKC-L2 sliceKIT Core bBoard using the connector marked with the ``STAR``.
   #. Connect the XA-SK-SCR480 sliceCARD to the XP-SKC-L2 sliceKIT Core Board using the connector marked with the ``TRIANGLE``.
   #. Connect the XTAG Adapter to the sliceKIT Core board, and connect the XTAG-2 to the adapter and the whole assembly to the Core Board. 
   #. Connect the XTAG-2 to host PC. Note that the USB cable is not provided with the sliceKIT starter kit.
   #. Set the ``XMOS LINK`` to ``OFF`` on the XTAG Adapter(XA-SK-XTAG2).
   #. Ensure the jumper on the XA-SK-SCR480 is bridged if the back light is required.
   #. Switch on the power supply to the sliceKIT Core board.

.. figure:: images/hardware_setup.jpg
   :width: 400px
   :align: center

   Hardware Setup for Object localization Demo
   
	
Import and Build the Application
++++++++++++++++++++++++++++++++

   #. Open xTIMEcomposer and check that it is operating in online mode. Open the edit perspective (Window->Open Perspective->XMOS Edit).
   #. Locate the ``Object localization Demo`` item in the xSOFTip pane on the bottom left of the window and drag it into the Project Explorer window in the xTIMEcomposer. This will also cause the modules on which this application depends to be imported as well. 
   #. Click on the ``app_object_localisation`` item in the Explorer pane then click on the build icon (hammer) in xTIMEcomposer. Check the console window to verify that the application has built successfully.
   #. There will be quite a number of warnings of the form ``bidirectional buffered port not supported in hardware``. These can be safely ignored in this case.

For help in using xTIMEcomposer, try the xTIMEcomposer tutorial, which you can find by selecting Help->Tutorials from the xTIMEcomposer menu.

Note that the Developer Column in the xTIMEcomposer on the right hand side of your screen provides information on the xSOFTip components you are using. By way of example, select the module_display_controller component in the Project Explorer, and you will see its description together with API documentation. Having done this, click the `back` icon (or locate and click on the ``Object localization Demo`` item again) until you return to this quickstart guide within the Developer Column.

Run the Application
+++++++++++++++++++

Now that the application has been compiled, the next step is to run it on the sliceKIT Core Board using the tools to load the application over JTAG (via the XTAG2 and Xtag Adapter card) into the xCORE multicore microcontroller.

   #. Select the file ``app_object_localisation.xc`` in the ``app_object_localisation`` project from the Project Explorer.
   #. Click on the ``Run`` icon (the white arrow in the green circle). 
   #. At the ``Select Device`` dialog select ``XMOS XTAG-2 connect to L1[0..1]`` and click ``OK``.
   #. Wait until the images have loaded over the XTAG connector from the host. This may take 30 seconds or more, since they are being loaded over the serial JTAG connection via the XTAG2. There is a series of five images to be processed for object localization.
   #. Once the first processed image is displayed, a message is displayed on the console to prompt the user to touch the LCD screen for displaying the remaining processed images one after another. Note that some statistics pertaining to the time take to process each of the images and thus the effective frame rate is also displayed in the console window at this point.
   #. The objects in the images are shown by green boxes on the processed images.
   #. The next image is the binarized version of the previous image after morphological closing. The subsequent images displayed are the processed images of the remaining four images.

Next Steps
++++++++++

  #. First examine the structure of the application code. Navigate to the ``src`` directory of the ``app_object_localization`` item in the Project Explorer within xTIMEcomposer and find the ``app_object_localization.xc`` file and double-click it so it opens in the editor window. Scroll right to the bottom of the file and note the calls made in the ``par{}`` block at the bottom. The display_manager, display_controller, lcd_server and sdram_server calls instantiate the various supporting elements of this demo application within their own logical cores. The three components for the object localization functionality are to be found within the function called ``app``. Find this function by scrolling up in the file, and then note that there is another ``par{}`` block in the app() function which creates a new instance of each of the three pipeline processing components for each of the source images, with the logical core resources being returned at the end of processing each image. 
  #. Try changing the files that are loaded from the host. To do this, generate an image (which should have bright objects on a dark background and vice versa), save it in ``tga`` format uncompressed. Save the file(s) into ``images`` folder of ``app_object_localisation`` directory within your workspace. Now, change the ``IMAGE_COUNT`` and add the name of your new image to the array ``images`` defined in ``app_conf.h``. Ensure the filename is less than 30 characters long.
  #. If the images contains dark objects on a bright background, the define ``OBJECT_LOCALISATION_BRIGHT_OBJ_DARK_BG`` in ``binarisation_conf.h`` should be assigned the value 0. 
  #. The colour of bounding boxes on objects can be changed from green by redefining ``BOX_COLOUR``. 
  #. ``SIZE_THRESHOLD`` in ``app_conf.h`` controls the size in pixels of spurious objects to be ignored. 
  #. Assign 0 to ``OBJECT_LOCALISATION_NUM_DILATE`` and ``OBJECT_LOCALISATION_NUM_ERODE`` in ``morph_conf.h`` to check the binary image resulting from binarisation and before applying morphological closing.

    
