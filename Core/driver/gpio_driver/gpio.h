/*
 * gpio.h
 *
 * Code used from http://hertaville.com/introduction-to-accessing-the-raspberry-pis-gpio-in-c.html
 *
 *  Created on: 16.03.2016
 *      Author: Jonas
 */

#ifndef GPIO_H_
#define GPIO_H_




class gpio {
public:
	gpio();
	~gpio();

	void DigitalWrite(int pin,char state);



};



#endif /* GPIO_H_ */
