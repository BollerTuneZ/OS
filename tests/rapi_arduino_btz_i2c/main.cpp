extern C 
{
	#include "../../raspi/i2c/btz_i2c.h"
}
#include <stdio.h>



int main()
{
	printf("Testing raspberry i2c driver");
	
	printf("Initializing i2c bus");
	
	INIT_I2C();
	
	printf("try read register 0 from slave...");
	
	char *value[4];
	
	READ_REGISTER(0x12,0x0,value,4);
	
	for(int i=0;i<4;i++)
	{
		printf("Value @%i:%c",i,value[i]);
	}
	
	printf("Read Done.");
	
	return 1;
	
}