.. _object_localisation_api:

The configuration defines and the APIs of different image processing functions are given below.

Otsu's Threshold Computation
============================

The function is defined in ``otsu_threshold.xc`` and ``otsu_threshold.h``.

API
---

.. doxygenfunction:: object_localisation_otsu_threshold

Binarisation
============

The function is defined in ``binarisation.xc`` and ``binarisation.h``.
The configuration file is ``binarisation_conf.h``.

Configuration Defines
---------------------

**OBJECT_LOCALISATION_BRIGHT_OBJ_DARK_BG**
	This define indicates the type of image. It is set to 1 if the image contains bright objects on a dark background and vice versa.

API
---

.. doxygenfunction:: object_localisation_binarisation

Morphological Closing
=====================

The function is defined in ``morph_closing.xc`` and ``morph_closing.h``.
The configuration defines are listed in ``morph_conf.h``.

Configuration Defines
---------------------

**OBJECT_LOCALISATION_NUM_DILATE**
	This define is used to set the number of times dilation should be performed.

**OBJECT_LOCALISATION_NUM_ERODE**
	This define is used to set the number of times erosion should be performed.

**OBJECT_LOCALISATION_STRUC_ELMNT_SIZE**
	This define is used to set the size of the structuring element.	

API
---

.. doxygenfunction:: object_localisation_morphological_closing

Connected Component Analysis
============================

This function is defined in ``CCA.xc`` and ``CCA.h``. 
The configuration file is ``CCA_conf.h``.

Configuration Defines
---------------------

**OBJECT_LOCALISATION_CCA_MAX_LABEL**
	This define is used to set the maximum number of labels that may be derived during the connected components step.

API
---

.. doxygenfunction:: object_localisation_CCA

Display Manager
===============

The different image processing operations can be pipelined and run in parallel in an application.
The display manager manages simultaneous access requests to SDRAM and LCD by these image processing
functions. It receives multiple requests and sends them to display controller which in turn passes
to SDRAM and LCD servers. The functionality of the display manager is defined in ``display_manager.xc``
and ``display_manager.h``. The configuration file is ``display_manager_conf.h``.

Refer to the ``Display Controller`` xSOFTip documentation for more details.

Configuration Defines
---------------------

**OBJECT_LOCALISATION_CHANNELS**
	This define is used to indicate the number of channels for clients.

API
---

.. doxygenfunction:: object_localisation_display_manager
