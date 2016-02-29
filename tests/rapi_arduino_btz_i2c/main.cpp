extern "C" 
{
	#include "../../raspi/i2c/btz_i2c.h"
}
#include <stdio.h>
#include <unistd.h>



int main()
{
	printf("Testing raspberry i2c driver\n");
	
	printf("Initializing i2c bus\n");
	
	int result = INIT_I2C();
	printf("Init result:%i\n",result);
	printf("try read register 0 from slave...\n");


	char value[2];
	
	result = READ_REGISTER(0x12,0x0,value,2);
	printf("Read result:%i\n",result);	
	int intVal = (value[0] | value[1] << 8);

	printf("Value:%i\n",intVal);
	
	printf("Read Done.\n");
	printf("Try write register\n");
	char testData[4];
	testData[0] = 0x0;
	testData[1] = 0x0;
	testData[2] = 0x0;
	testData[3] = 0x0;
	usleep(10 *1000);
	result = WRITE_REGISTER(0x12,0x0,testData,4);
	printf("Write resulted:%i",result);
	printf("try read register 0 from slave...\n");
	result = READ_REGISTER(0x12,0x0,value,2);
	printf("Read result:%i\n",result);	
	intVal = (value[0] | value[1] << 8);

	printf("Value:%i\n",intVal);
	
	printf("Read Done.\n");
	
	usleep(10*1000);
	
	/*Set Led 1 on half power and 2 seconds later off* ,led 2 will be 100% */
	char ledData[2];
	ledData[0] = 0x32;
	ledData[1] = 0xFF;
	
	result = WRITE_REGISTER(0x12,0x3,ledData,2);
	printf("Read result:%i\n",result);	
	usleep(( 2 *1000) * 1000);
	
	ledData[0] = 0x00;
	ledData[1] = 0xFF;
	
	result = WRITE_REGISTER(0x12,0x3,ledData,2);
	printf("Read result:%i\n",result);	
	return 1;
	
}
