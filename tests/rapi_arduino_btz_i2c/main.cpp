extern "C" 
{
	#include "../../raspi/i2c/btz_i2c.h"
}
#include <stdio.h>
#include <unistd.h>

#define SLAVE_ADDR 0x12
#define REGISTER_INT 0x0
#define REGISTER_CHAR 0x1
#define REGISTER_CHRARRY 0x2

void print_result(int *val);
int test_read_register();
int test_write_register();
int test_write_array();


int main()
{
	printf("Testing raspberry i2c driver\n");
	
	printf("Initializing i2c bus\n");
	
	int result = INIT_I2C();
	printf("Init result:%i\n",result);
	printf("Test: read register\n");
	printf("Ended with%i\n",test_read_register());
	printf("Test: write register\n");
	printf("Ended with%i\n",test_write_register());
	printf("Test: write array register\n");
	printf("Ended with%i\n",test_write_array());
	
	return 1;
	printf("try read register 0 from slave...\n");

	/*
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
	*/
	printf("Read Done.\n");
	
	usleep(50*1000);
	
	//Set Led 1 on half power and 2 seconds later off* ,led 2 will be 100% 
	char ledData[2];
	ledData[0] = 0x1;
	ledData[1] = 0x1;
	
	result = WRITE_REGISTER(0x12,0x2,ledData,2);
	printf("Read result:%i\n",result);	
	usleep(( 2 *1000) * 1000);
	
	ledData[0] = 0x00;
	ledData[1] = 0xFF;
	
	result = WRITE_REGISTER(0x12,0x2,ledData,2);
	printf("Read result:%i\n",result);	
	return 1;
	
}

/*
	Testing read one register from slave
*/
int test_read_register()
{
	int result;
	char rawValue[2];
	
	result = READ_REGISTER(SLAVE_ADDR,REGISTER_INT,rawValue,2);
	print_result(&result);
	if(result != 1){return -1;}
	
	int intVal = (rawValue[0] | rawValue[1] << 8);
	if(intVal == 999){return 1;}
	return -1;
}

/*
	Testing write one register
*/
int test_write_register()
{
	usleep(50*1000);
	int result;
	char intWriteVal[2] = {0x0,0x0};
	result = WRITE_REGISTER(SLAVE_ADDR,REGISTER_INT,intWriteVal,4);
	print_result(&result);
	if(result != 1){return -1;}
	
	char rawValue[2];
	usleep(50*1000);
	result = READ_REGISTER(SLAVE_ADDR,REGISTER_INT,rawValue,2);
	print_result(&result);
	if(result != 1){return -1;}
	
	int intVal = (rawValue[0] | rawValue[1] << 8);
	if(intVal == 0){return 1;}
	return -1;
}

/*
	Testing write char array register
*/
int test_write_array()
{
	int result;
	char testData[6];
	testData[0] = 0x1;
	testData[1] = 0x2;
	testData[2] = 0x3;
	testData[3] = 0x4;
	testData[4] = 0x5;
	testData[5] = 0x6;
	usleep(50*1000);
	result = WRITE_REGISTER(SLAVE_ADDR,REGISTER_CHRARRY,testData,6);
	print_result(&result);
	if(result != 1){return -1;}
	
	char readVal[6];
	usleep(50*1000);
	result = READ_REGISTER(SLAVE_ADDR,REGISTER_CHRARRY,readVal,6);
	print_result(&result);
	if(result != 1){return -1;}
	
	for(int i=0;i<6;i++)
	{
		if(readVal[i] != testData[i])
			return -1;
	}
	return -1;
}
void print_result(int *val)
{
	if(*val != 1)
	{
	  printf("ERROR :%i\n",val);
	  return;
	}
	printf("Result is:%i\n",val);
	
}
