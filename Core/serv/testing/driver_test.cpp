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
	this->_testGpio = new gpio("5");
}

TEST_Driver::~TEST_Driver() {
}

void TEST_Driver::SimpleTest() {
	printf("Testing EncoderClient Driver\nRead for 30sec encoder...\n");
	/*
	for(int i=0;i<120;i++)
	{
		int result2 = _encoderClient->ReadPosition();
		if(result2 > 6000){printf("ERROR");}
		printf("position:%i\n",result2);
		usleep(250*1000);
	}*/
	GPIOTest();
}

void TEST_Driver::GPIOTest() {
	printf("Testing GPIO hardware driver.\n");

	printf("Export gpio[%i] pin.\n",);

	this->_testGpio->export_gpio();

	printf("Set direction of gpio to output");

	this->_testGpio->setdir_gpio("out");

	printf("Set On\n");

	this->_testGpio->setval_gpio("1");

	usleep(1000*1000);

	printf("Set Off\n");

	this->_testGpio->setval_gpio("0");

}
