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


class gpio_btz {
public:
	gpio_btz();
	~gpio_btz();

	int Initialize();

	void SetPin(int pin,char dir);

	void DigitalWrite(int pin,char state);

	char IsInitialized();

private:
	char _initialized;

};



#endif /* GPIO_BTZ_H_ */
