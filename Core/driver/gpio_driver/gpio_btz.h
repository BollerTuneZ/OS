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
#include <wiringPi.h>
}



class gpio_btz {
public:
	gpio_btz();
	~gpio_btz();

	void DigitalWrite(int pin,char state);



};



#endif /* GPIO_BTZ_H_ */
