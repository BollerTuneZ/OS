#include "btz_i2c.h"
#include <stdio.h>
char i2c_initialized = 0x0;
int i2c_device;
char *emptyPayload;

#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <linux/i2c-dev.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

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

void write_test(int device)
{
	  char buf[10];
	  
	  buf[0] = 0xDE;
	  buf[1] = 0xF1;
	  buf[2] = 0xD6;
	 if (ioctl(device, I2C_SLAVE, 12) < 0)
	{
		perror("ioctl() I2C_SLAVE failed\n"); 
		return;
	}
	    if (write(device, buf, 3) != 3) {
			printf("Error could not write buffer to slave...\n");
			return;
		}else
		{
			printf("Wrote buffer to slave...\n");
		}
}

int INIT_I2C()
{
	
	  int device;
  unsigned long funcs;

  /* Geraetedatei oeffnen */
  printf("Opening device...");
  if ((device = open("/dev/i2c-1", O_RDWR)) < 0)
    {
    perror("open() failed");
    exit (1);
    }
  printf(" OK\n");

  /* Abfragen, ob die I2C-Funktionen da sind */
  if (ioctl(device,I2C_FUNCS,&funcs) < 0)
    {
    perror("ioctl() I2C_FUNCS failed");
    exit (1);
    }

  /* Ergebnis untersuchen */
  if (funcs & I2C_FUNC_I2C)
    printf("I2C\n");
  if (funcs & (I2C_FUNC_SMBUS_BYTE))
    printf("I2C_FUNC_SMBUS_BYTE\n");

  /* und Bus abscannen */
  //scan_i2c_bus(device);
	//communicate(device);
	write_test(device);
	
	/*
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
char value[2];

if(read(i2c_device,value,2) !=2)
	{
		  return -3001;
	}

write_test();
	scan_i2c_bus();

	return 1;*/
}



int WRITE_REGISTER(char slave_address,char i2c_register,char *payload,int length)
{
write_test();
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
