#ifndef BTZ_I2C_h
#define BTZ_I2C_h

#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <linux/i2c-dev.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

#define I2C_BUS "/dev/i2c-1"

/*
 *Initializes i2c bus on Default: /dev/i2c-1
 *@return -1 faulted, 1 OK
*/
extern int INIT_I2C();



#endif