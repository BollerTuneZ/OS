#include "gpio_btz.h"


void gpio_btz::DigitalWrite(int pin, char state) {

	//TODO Handling on not allowed gpio pins
	if(state)
	{
		gpioWrite(pin,1);
	}else
	{
		gpioWrite(pin,0);
	}
}

int gpio_btz::Initialize() {

	if(gpioInitialise() < 0)
	{
		_initialized = 0x0;
		return -1;
	}
	_initialized = 0x1;
	return 1;
}

gpio_btz::gpio_btz() {
	_initialized = 0x0;
}

gpio_btz::~gpio_btz() {
	gpioTerminate();
}

void gpio_btz::SetPin(int pin, char dir) {

	if(!_initialized)
	{
		//TODO Errorhandling
		return;
	}
	if(dir == 'I')
	{
		gpioSetMode(pin,PI_INPUT);
	}else if(dir == 'O')
	{
		gpioSetMode(pin,PI_OUTPUT);
	}

}

char gpio_btz::IsInitialized() {
	return _initialized;
}
