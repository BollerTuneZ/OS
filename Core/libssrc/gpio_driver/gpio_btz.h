/*
 * gpio.h
 *
 * Code used from http://hertaville.com/introduction-to-accessing-the-raspberry-pis-gpio-in-c.html
 *
 *  Created on: 16.03.2016
 *      Author: Jonas
 */

#ifndef GPIO_BTZ_H_
#define GPIO_BTZ_H_

extern "C"
{
	#include <stdio.h>
	#include <unistd.h>
	#include <pigpio.h>
}
#include <mutex>

class gpio_btz {
public:
	gpio_btz();
	~gpio_btz();

	int Initialize();

	int SetPin(int pin,char dir);

	int DigitalWrite(int pin,char state);

	int WritePwm(int pin,int dutycyle);

	int ReadDigital(int pin);

	char IsInitialized();

private:
	char _initialized;
	std::mutex _gpioLck;
};



#endif /* GPIO_BTZ_H_ */
