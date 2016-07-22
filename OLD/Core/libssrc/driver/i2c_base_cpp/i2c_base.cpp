/*
 * i2c_base.cpp
 *
 *  Created on: 13.03.2016
 *      Author: jonas
 */
#include "i2c_base.h"

i2c_base::i2c_base(){}
i2c_base::~i2c_base(){}

int i2c_base::Init() {
	int device;
	unsigned long funcs;

	/* Geraetedatei oeffnen */
	printf("Opening device...");
	if ((device = open("/dev/i2c-1", O_RDWR)) < 0) {
		perror("open() failed");
		return -1;
	}
	printf(" OK\n");

	/* Abfragen, ob die I2C-Funktionen da sind */
	if (ioctl(device, I2C_FUNCS, &funcs) < 0) {
		perror("ioctl() I2C_FUNCS failed");
		return -1;
	}

	/* Ergebnis untersuchen */
	if (funcs & I2C_FUNC_I2C)
		printf("I2C\n");
	if (funcs & (I2C_FUNC_SMBUS_BYTE))
		printf("I2C_FUNC_SMBUS_BYTE\n");

	i2c_device = device;
	/* und Bus abscannen */
	//scan_i2c_bus(device);
	//communicate(device);
	//write_test(device);
	return 1;
}

int i2c_base::WriteRegister(int slave_address, char i2c_register, char *payload,
		int length) {
	int rLength = length + 2;
	char rPayload[rLength];
	rPayload[0] = i2c_register;//Push register byte in first place
	if(length == 0)
	{
		rPayload[1] = I2C_READ; //Set mode to read
	}else
	{
		rPayload[1] = I2C_WRITE; //Set mode to write
	}
	int i;
	for(i=0;i<length;i++){rPayload[i+2] = payload[i];}
	if (ioctl(i2c_device, I2C_SLAVE, slave_address) < 0)
	{
		return -1;
	}
	if (write(i2c_device, rPayload, rLength) != rLength) {
		return -20;
	}else
	{
		return 1;
	}
}

int i2c_base::ReadRegister(int slave_address, char i2c_register, char *value,
		int length) {
	//First set the register @slave
	int setRegisterResult = WriteRegister(slave_address,i2c_register,emptyPayload,0);
	if(setRegisterResult != 1)
	{
		return setRegisterResult;
	}
	usleep(10 *1000);
	if (ioctl(i2c_device, I2C_SLAVE, slave_address) < 0)
	{
		return -1;
	}
	if(read(i2c_device,value,length) != length)
	{
		  return -3001;
	}
	return 1;
}

int i2c_base::WRITE(int slave_address, char* payload, int size) {
	if (ioctl(i2c_device, I2C_SLAVE, slave_address) < 0)
	{
		return -1;
	}

	if (write(i2c_device, payload, size) != size) {
			return -1;
	}
	return 1;
}
int i2c_base::READ(int slave_address, char* buf, int length) {
	if (ioctl(i2c_device, I2C_SLAVE, slave_address) < 0)
	{
		return -1;
	}

	if(read(i2c_device,buf,length) != length)
	{
		  return -1;
	}
	return 1;
}

