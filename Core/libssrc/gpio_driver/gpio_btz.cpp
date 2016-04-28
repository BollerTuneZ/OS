#include "gpio_btz.h"

gpio_btz::gpio_btz() {
	_initialized = 0x0;
}

gpio_btz::~gpio_btz() {
	gpioTerminate();
}

int gpio_btz::Initialize() {
	return 1;
	if(gpioInitialise() < 0)
	{
		_initialized = 0x0;
		return -1;
	}
	_initialized = 0x1;
	return 1;
}

int gpio_btz::SetPin(int pin, char dir) {
	return 1;
	if(!_initialized)
	{
		//TODO Errorhandling
		return -1;
	}
	int ret;
	if(dir == 'I')
	{
		_gpioLck.lock();
		ret = gpioSetMode(pin,PI_INPUT);
		_gpioLck.unlock();
		return ret;
	}else if(dir == 'O')
	{
		_gpioLck.lock();
		ret = gpioSetMode(pin,PI_OUTPUT);
		_gpioLck.unlock();
		return ret;
	}
	return -2;
}

int gpio_btz::DigitalWrite(int pin, char state) {

	return 1;
	//TODO Handling on not allowed gpio pins
	int ret;
	if(state)
	{
		_gpioLck.lock();
		ret = gpioWrite(pin,1);
		_gpioLck.unlock();
	}else
	{
		_gpioLck.lock();
		ret = gpioWrite(pin,0);
		_gpioLck.unlock();
	}
	return ret;
}

int gpio_btz::WritePwm(int pin, int dutycyle) {
	return 1;
	_gpioLck.lock();
	int ret = gpioPWM(pin,dutycyle);
	_gpioLck.unlock();
	return ret;
}

int gpio_btz::ReadDigital(int pin) {
	return 1;
	_gpioLck.lock();
	int val = gpioRead(pin);
	_gpioLck.unlock();
	return val;
}

char gpio_btz::IsInitialized() {
	return _initialized;
}

void *

void gpio_btz::DigitalWriteThreadSafe(int pin, char dir) {



}
