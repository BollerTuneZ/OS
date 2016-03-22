/*
 * driver_test.cpp
 *
 *  Created on: 13.03.2016
 *      Author: jonas
 */

#include "driver_test.h"
#include <unistd.h>
using namespace std;


TEST_Driver::TEST_Driver(i2c_base* baseDriver) {
	_baseDriver = baseDriver;
	_device.addr = 0x12;
	_device.name = "Encoder";

	_encoderClient = new EncoderClient(_baseDriver,&_device);
	this->_testGpio = new gpio("0");
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

	printf("Export gpio[%i] pin.\n",4);
	int result =0;
	result = this->_testGpio->export_gpio();
	printf("Export result %i\n",result);
	printf("Set direction of gpio to output");

	result = this->_testGpio->setdir_gpio("out");
	printf("Dir result %i\n",result);
	printf("Set On\n");

	result = this->_testGpio->setval_gpio("1");
	printf("SetVal1 result %i\n",result);
	usleep((1000*1000)*2);

	printf("Set Off\n");

	result = this->_testGpio->setval_gpio("0");
	printf("SetVal2 result %i\n",result);
}
