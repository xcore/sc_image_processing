/*
 * bayer_interpolation.h
 *
 *  Created on: 16-Jul-2014
 *      Author: sudha
 */

#ifndef BAYER_INTERPOLATION_H_
#define BAYER_INTERPOLATION_H_

#include "pipeline_interface.h"

void bayer_interpolation(interface mgmt_interface server bayer_if, interface pipeline_interface client apm_ds, interface pipeline_interface server apm_us);

#endif /* BAYER_INTERPOLATION_H_ */
