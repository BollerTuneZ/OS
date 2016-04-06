#include "gpio_btz.h"

gpio_btz::gpio_btz() {
	_initialized = 0x0;
}

gpio_btz::~gpio_btz() {
	gpioTerminate();
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

int gpio_btz::SetPin(int pin, char dir) {

	if(!_initialized)
	{
		//TODO Errorhandling
		return -1;
	}
	int ret;
	if(dir == 'I')
	{
		gpioLck.lock();
		ret = gpioSetMode(pin,PI_INPUT);
		gpioLck.unlock();
		return ret;
	}else if(dir == 'O')
	{
		gpioLck.lock();
		ret = gpioSetMode(pin,PI_OUTPUT);
		gpioLck.unlock();
		return ret;
	}
	return -2;
}

int gpio_btz::DigitalWrite(int pin, char state) {

	//TODO Handling on not allowed gpio pins
	int ret;
	if(state)
	{
		gpioLck.lock();
		ret = gpioWrite(pin,1);
		gpioLck.unlock();
	}else
	{
		gpioLck.lock();
		ret = gpioWrite(pin,0);
		gpioLck.unlock();
	}
	return ret;
}

int gpio_btz::WritePwm(int pin, int dutycyle) {
	gpioLck.lock();
	int ret = gpioPWM(pin,dutycyle);
	gpioLck.unlock();
}

int gpio_btz::ReadDigital(int pin) {

	gpioLck.lock();
	int val gpioRead(pin);
	gpioLck.unlock();
	return val;
}

char gpio_btz::IsInitialized() {
	return _initialized;
}
