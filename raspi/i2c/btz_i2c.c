#include "btz_i2c.h"
#include <stdio.h>
char i2c_initialized = 0x0;
int i2c_device;
char *emptyPayload;


void scan_i2c_bus()
  {
  int port, res;

  /* Adressbereich 7 Bit */
  for (port = 0; port < 127; port++)
    {
    if (ioctl(i2c_device, I2C_SLAVE, port) < 0)
      perror("ioctl() I2C_SLAVE failed\n");
    else
      {
      /* kann gelesen werden? */
      res = i2c_smbus_read_byte(i2c_device);
      if (res >= 0)
        printf("i2c chip found at: %x, val = %d\n", port, res);
      }
    }
  }

int INIT_I2C()
{
	unsigned long funcs;
	if ((i2c_device = open(I2C_BUS, O_RDWR)) < 0)
    {
		//Could not open device ERROR -10
		return -10;
    }
	
	  if (ioctl(i2c_device,I2C_FUNCS,&funcs) < 0)
    {
		//could not get i2c function ERROR -11
		return -11;
    }
	if (funcs & I2C_FUNC_I2C)
		printf("I2C\n");
	if (funcs & (I2C_FUNC_SMBUS_BYTE))
		printf("I2C_FUNC_SMBUS_BYTE\n");
	i2c_initialized = 0x1;
	scan_i2c_bus();
	return 1;
}

int WRITE_REGISTER(char slave_address,char i2c_register,char *payload,int length)
{
	int rLength = length + 1;
	
	char rPayload[rLength];
	rPayload[0] = i2c_register;//Push register byte in first place
	int i;
	for(i=0;i<length;i++){rPayload[i+1] = payload[i];}
	printf("Write register %i, to device %i with length %i\n",rPayload[0],i2c_device,rLength);
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


int READ_REGISTER(char slave_address,char i2c_register,char *value,int length)
{
	//First set the register @slave 
	int setRegisterResult = WRITE_REGISTER(i2c_device,i2c_register,emptyPayload,0);
	if(setRegisterResult != 1)
	{
		return setRegisterResult;
	}
	if (ioctl(i2c_device, I2C_SLAVE, slave_address) < 0)
	{
		return -1;
	}
	if(read(i2c_device,value,length) !=length)
	{
		  return -3001;
	}
	return 1;
}
