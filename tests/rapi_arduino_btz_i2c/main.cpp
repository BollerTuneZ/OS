extern "C" 
{
	#include "../../raspi/i2c/btz_i2c.h"
}
#include <stdio.h>



int main()
{
	printf("Testing raspberry i2c driver\n");
	
	printf("Initializing i2c bus\n");
	
	int result = INIT_I2C();
	printf("Init result:%i\n",result);
	printf("try read register 0 from slave...\n");


	char value[4];
	
	result = READ_REGISTER(0x12,0x0,value,4);
	printf("Read result:%i\n",result);	

	for(int i=0;i<4;i++)
	{
		printf("Value @%i:%i\n",i,value[i]);
	}
	printf("Read Done.\n");
	printf("Try write register\n");
	char testData[4];
	testData[0] = 0x0;
	testData[1] = 0x0;
	testData[2] = 0x0;
	testData[3] = 0x0;
	
	result = WRITE_REGISTER(0x12,0x0,testData,4);
	printf("Write resulted:%i",result);
	printf("try read register 0 from slave...\n");
	result = READ_REGISTER(0x12,0x0,value,4);
	printf("Read result:%i\n",result);	

	for(int i=0;i<4;i++)
	{
		printf("Value @%i:%i\n",i,value[i]);
	}
	printf("Read Done.\n");
	
	
	
	return 1;
	
}
