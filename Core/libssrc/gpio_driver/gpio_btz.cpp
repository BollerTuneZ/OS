#include "gpio_btz.h"


void gpio_btz::DigitalWrite(int pin, char state) {


}

int gpio_btz::Initialize() {

	if(gpioInitialise() < 0)
	{
		return -1;
	}
	return 1;
}

gpio_btz::gpio_btz() {
}

gpio_btz::~gpio_btz() {
}
