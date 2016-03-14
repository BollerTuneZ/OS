/*
 * driver_test.h
 *
 *  Created on: 13.03.2016
 *      Author: jonas
 */

#ifndef DRIVER_TEST_H_
#define DRIVER_TEST_H_
#include <stdio.h>
#include "../../driver/driver_common.h"
#include "../../driver/i2c_base_cpp/i2c_base.h"
#include "../../driver/SoftDriver/EncoderClient/encoder_client.h"

class TEST_Driver {
public:
	TEST_Driver(i2c_base *baseDriver);
	~TEST_Driver();

	void SimpleTest();

private:
	i2c_base *_baseDriver;
	EncoderClient *_encoderClient;
	btz_i2c_device _device;
};

#endif /* DRIVER_TEST_H_ */
