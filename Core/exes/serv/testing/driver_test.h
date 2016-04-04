/*
 * driver_test.h
 *
 *  Created on: 13.03.2016
 *      Author: jonas
 */

#ifndef DRIVER_TEST_H_
#define DRIVER_TEST_H_
#include <stdio.h>
#include "../../../include/driver_common.h"
#include "../../../libssrc/gpio_driver/gpio_btz.h"
#include "../../../libssrc/i2c_base_cpp/i2c_base.h"
#include "../../../libssrc/EncoderClient/encoder_client.h"

class TEST_Driver {
public:
	TEST_Driver(i2c_base *baseDriver);
	~TEST_Driver();

	void SimpleTest();

	void GPIOTest();

private:
	i2c_base *_baseDriver;
	EncoderClient *_encoderClient;
	btz_i2c_device _device;
	gpio_btz *_testGpio;

};

#endif /* DRIVER_TEST_H_ */
