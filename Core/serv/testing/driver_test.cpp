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
