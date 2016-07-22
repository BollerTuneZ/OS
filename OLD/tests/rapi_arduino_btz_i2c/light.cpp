extern "C" 
{
	#include "../../raspi/i2c/btz_i2c.h"
}
#include <stdio.h>
#include <unistd.h>

char lightRegister = 0x2,slaveAdreess = 0x12;
char ledData[2];

void DimLight(char led, char brightness)
{
	ledData[led] = brightness;
	usleep(10 *1000);
	int result = WRITE_REGISTER(slaveAdreess,lightRegister,ledData,2);
	printf("Init result:%i\n",result);
}

int main()
{
	printf("Light dim example\n");
	
	printf("Initializing i2c bus\n");
	
	int result = INIT_I2C();
	printf("Init result:%i\n",result);
	
	
	char ledValue =0;
	char led = 0;
	for(int i=0;i < 255;)
	{
		usleep(20 *1000);
		if(led == 0)
		{
			DimLight(led,ledValue);
			i++;
			led = 1;
		}else
		{
			DimLight(led,ledValue);
			led = 0;
		}
		
		if(ledValue == 255)
		{
			ledValue = 0;
		}else
		{
			ledValue += 42;
		}
	}
	DimLight(0,0);
	DimLight(1,0);
	return 1;
	
}
