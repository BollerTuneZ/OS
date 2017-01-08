/*
 * io_bootstrap.h
 *
 *  Created on: Jan 7, 2017
 *      Author: jonas
 */

#ifndef HEADER_IO_BOOTSTRAP_H_
#define HEADER_IO_BOOTSTRAP_H_
#include "b_types.h"
#include "config.h"
#include "b_pin.h"
#include "Arduino.h"

class IoBootstrap{


public:
	IoBootstrap();

	/*
	 * Initialize all pins
	 * returns ERROR code
	 * */
	int bootstrap();
};


#endif /* HEADER_IO_BOOTSTRAP_H_ */
