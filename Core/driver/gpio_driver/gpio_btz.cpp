#include "gpio_btz.h"
extern "C"
{
#include <wiringPi.h>
}

void gpio_btz::DigitalWrite(int pin, char state) {

	if(state == 0x0)
	{
		digitalWrite(pin,LOW);
	}else
	{
		digitalWrite(pin,HIGH);
	}
}
