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
#include <string>
using namespace std;
class gpio {
public:
	gpio();
	gpio(string pinNum);
	~gpio();

    int export_gpio(); // exports GPIO
    int unexport_gpio(); // unexport GPIO
    int setdir_gpio(string dir); // Set GPIO Direction
    int setval_gpio(string val); // Set GPIO Value (putput pins)
    int getval_gpio(string& val); // Get GPIO Value (input/ output pins)
    string get_gpionum(); // return the GPIO number associated with the instance of an object

private:
    string gpionum; // GPIO number associated with the instance of an object
};



#endif /* GPIO_H_ */
