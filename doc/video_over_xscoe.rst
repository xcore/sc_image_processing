Description
-----------

A cross platform host application should be developed. The output of any image processing pipeline components (PC) can be routed via xSCOPE to this application.
Host application should be able to 
 * display the frame output (video) from the collected PCs and display it in a video window on the host
 * modify PC parameters (mainly frame rate)

Impact
------

A host application should be developed
 * based on existing c library functions to collect xSCOPE data from the device
 * some additional processing may be required on the image data collected from different PCs. For e.g. demosaicing is performed on data collcted from image sensor PC
 * processed data is sent to a display interface
     #. data may be sent to any already existing image application (api compatibility or additional interface requirements may be an overhead)
     #. use UI framework such as Qt to display the images
 * feedback interface to the device to account for
     #. modify device parameters (fps)
     #. some handshake protcol with device for (every) received data

     
   

Dependencies
------------

* sc_xscope_support

