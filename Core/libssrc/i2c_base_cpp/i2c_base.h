/*
 * i2c_base.h
 *
 *  Created on: 13.03.2016
 *      Author: jonas
 */

#ifndef I2C_BASE_H_
#define I2C_BASE_H_

extern "C"
{
	#include <unistd.h>
	#include <stdio.h>
	#include <stdlib.h>
	#include <linux/i2c-dev.h>
	#include <sys/ioctl.h>
	#include <sys/types.h>
	#include <sys/stat.h>
	#include <fcntl.h>
	#include <unistd.h>
	#include <stdint.h>
}

#define I2C_BUS "/dev/i2c-1"
#define I2C_READ 0x3
#define I2C_WRITE 0x2

class i2c_base {
public:
	i2c_base();
	~i2c_base();

	int Init();

	int WriteRegister(int slave_address,char i2c_register,char *payload,int length);

	int ReadRegister(int slave_address,char i2c_register,char *value,int length);

	int WRITE(int slave_address,char* payload,int size);
	int READ(int slave_address,char* buf,int length);


private:
	int i2c_device;
	char *emptyPayload;
};


#endif /* I2C_BASE_H_ */
