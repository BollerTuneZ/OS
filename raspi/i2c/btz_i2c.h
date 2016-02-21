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
 *errorcodes:
 *-10 could not open device
 *@return -1 faulted, 1 OK
*/
extern int INIT_I2C();

/*
 *Writes payload into slave register
 *@param device i2c_bus device
 *@param i2c_register slave i2c register
 *@param payload byte array with data which will be written 
 *@return 1 OK, -1device -20write 
*/
extern int WRITE_REGISTER(char slave_address,char i2c_register,char *payload,int length);

/*
 *Reads slaves register into value pointer
 *errorcodes:
 * WRITE_REGISTER error
 *-3001
*/
extern int READ_REGISTER(char slave_address,char i2c_register,char *value,int length);

#endif