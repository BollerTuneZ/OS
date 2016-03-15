/*
 * main.cpp
 *
 *  Created on: 13.03.2016
 *      Author: jonas
 */

#define VERSION "0.1.0"

#include <stdio.h>
#include "../driver/driver_common.h"
#include "../driver/i2c_base_cpp/i2c_base.h"
#include "../driver/SoftDriver/light/light.h"
#include "testing/driver_test.h"
#include <unistd.h>
#include "testing/socket_io_test/sio_test.h"

i2c_base _i2cBaseDriver;
Light *_lightDriver;

TEST_Driver *driverTest;

SIO_Test _sioTest;

int INIT();
void test_light();
void test_sio();
int main(int argc, char **argv) {
	printf("BollerTuneZ Core Server %s\n",VERSION);
	printf("Initializing Hardware Driver:\ni2c_base ,Light\n");
	int initResult = INIT();
	if(initResult != 1)
	{
		return initResult;
	}
	driverTest = new TEST_Driver(&_i2cBaseDriver);
	test_sio();
	//driverTest->SimpleTest();
	//test_light();
}

void test_sio()
{
	printf("Starting Socket_IO test...\n");
	_sioTest.SimpleTest();
}

void test_light()
{
	printf("Testing Light driver\n");
	int frequenzy = 2500;
	btz_i2c_device lightDevice;
	lightDevice.addr = 0x40;
	lightDevice.name = "light1";
	light_control control;
	control.device = &lightDevice;
	control.ledNum = 5;
	control.frequenzy = &frequenzy;
	for(int i=0;i <=4095;i++ )
	{
		control.frequenzy = &i;
		usleep(10 *1000);
		_lightDriver->SetLight(&control);
	}

}

int INIT()
{
	int result = _i2cBaseDriver.Init();
	if(result != 1)
	{
		printf("Error could not initialize i2c driver:%i\n",result);
		return -1;
	}
	_lightDriver = new Light(&_i2cBaseDriver);
	return 1;
}
