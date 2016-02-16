#include <stdio.h>
#include <wiringPi.h>
#include <wiringPiI2C.h>

#define LED 0

#define SLAVE_ADDRESS 0x12
void communicate(void);
int fd;
int main(void)
{	

	printf("Wiring PI i2c example \n");
	wiringPiSetup();
	printf("Setup done.\n");
	pinMode(LED,OUTPUT);
	printf("Setting up I2C\n");
	fd = wiringPiI2CSetup(0x12);
	printf("Setup result:%i\n",fd);
	if(fd == -1)
	{
		printf("Cant setup i2c\n");
		digitalWrite(LED,LOW);
		return -1;
	}else
	{
		printf("I2C setup successfully\n");
		int counter = 0;
		for(;;)
		{
			digitalWrite(LED,HIGH);
			delay(200);
			digitalWrite(LED,LOW);
			delay(200);
			counter++;
			if(counter >= 10)
			{
				communicate();
				return 0;
			}
		} 
	}
	
	return 0;
}

void communicate(void)
{
	printf("Writing Data to address:%x\n",SLAVE_ADDRESS);
	int arry[5];
	arry[0] = 0x48;
	arry[1] = 0x61;
	arry[2] = 0x6C;
	arry[3] = 0x6C;
	arry[4] = 0x6F;


		
	int result = -1;
	int i =0;
	for(i = 0;i < 5;i++)
	{
		result = wiringPiI2CWrite(fd,arry[i]);
		printf("Result:%i\n",result);
	}	

	printf("Reading data from address:%x\n",SLAVE_ADDRESS);
	result = wiringPiI2CRead(fd);
	printf("Result:%i\n",result);
	
}
