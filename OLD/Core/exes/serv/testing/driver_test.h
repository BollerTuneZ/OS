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
#include "../../../libssrc/StepperDriver/btz_stepper.h"

class TEST_Driver {
#define DT_DIR_PIN

public:
	TEST_Driver(i2c_base *baseDriver);
	~TEST_Driver();

	void SimpleTest();

	void GPIOTest();

	void StepperTest();

private:
	i2c_base *_baseDriver;
	EncoderClient *_encoderClient;
	btz_i2c_device _device;
	gpio_btz *_testGpio;
	BtzStepper *_stepperDriver;

};

#endif /* DRIVER_TEST_H_ */
