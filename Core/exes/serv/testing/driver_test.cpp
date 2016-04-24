/*
 * driver_test.cpp
 *
 *  Created on: 13.03.2016
 *      Author: jonas
 */

#include "driver_test.h"
#include <unistd.h>



TEST_Driver::TEST_Driver(i2c_base* baseDriver) {
	_baseDriver = baseDriver;
	_device.addr = 0x12;
	_device.name = "Encoder";

	_encoderClient = new EncoderClient(_baseDriver,&_device);
	this->_testGpio = new gpio_btz();
}

TEST_Driver::~TEST_Driver() {
}

void TEST_Driver::SimpleTest() {
	printf("Testing EncoderClient Driver\nRead for 30sec encoder...\n");
	
	for(int i=0;i<120;i++)
	{
		int result2 = _encoderClient->ReadPosition();
		if(result2 > 6000){printf("ERROR");}
		printf("position:%i\n",result2);
		usleep(250*1000);
	}
	
}

void TEST_Driver::GPIOTest() {

	printf("Testing GPIO hardware driver.\n");

	printf("Initializing gpio hw driver.\n");
	if(this->_testGpio->Initialize())
	{
		printf("Initialized.\n");
	}else
	{
		printf("Error.\n");
		return;
	}

	int testPin = 17;
	this->_testGpio->SetPin(testPin,'O');

	int oneSecond = (1000*1000)*2;
	this->_testGpio->DigitalWrite(testPin,0x0);
	usleep(oneSecond);
	this->_testGpio->DigitalWrite(testPin,0x1);
	usleep(oneSecond);
	this->_testGpio->DigitalWrite(testPin,0x0);
	usleep(oneSecond);

}

void TEST_Driver::StepperTest() {

	printf("Stepper Driver Test, initializing driver");
	this->_stepperDriver = new BtzStepper(this->_testGpio);
	if(!_stepperDriver->Initialize())
	{

	}


}
