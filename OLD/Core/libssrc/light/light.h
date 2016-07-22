/*
 * light.h
 *
 *  Created on: 13.03.2016
 *      Author: jonas
 */

#ifndef LIGHT_H_
#define LIGHT_H_

#include "../../include/driver_common.h"
#include "../i2c_base_cpp/i2c_base.h"

typedef struct
{
	btz_i2c_device *device;
	char ledNum;
	char ledState;
	int *frequenzy;
}light_control;

/* General registers */
#define PCA9685 0x80                    // I2C address for PCA9865 with all inputs at zero
#define   Reset   0x01         // Reset the device
#define MODE1   0x00          // 0x00 location for Mode1 register address
#define MODE2   0x01          // 0x01 location for Mode2 reigster address
#define LED0    0x06          // location for start of LED0 registers
#define LEDCOUNT 15          // number of LEDS to light 15 max
/* Devices */
#define LEDDRV1    0xb80                // 1st PCA9685
#define LEDDRV2    0xb82                // 2nd PCA9685
#define LEDDRV3    0xd84                // 3rd PCA9685
#define LEDDRV4    0xd86                // 4th PCA9685
#define LEDDRV5    0xc88                // 5th PCA9685
#define LEDDRV6    0xc8a                // 6th PCA9685
#define LEDDRV7    0xc8c                // 7th PCA9685
#define LEDDRV8    0xc8e                // 8th PCA9685
#define LEDDRV9    0xc90                // 9th PCA9685
/* MODE1 bits */
#define PCA9685_RESTART 0x80
#define PCA9685_EXTCLK  0x40
#define PCA9685_AI      0x20
#define PCA9685_SLEEP   0x10
#define PCA9685_SUB1    0x08
#define PCA9685_SUB2    0x04
#define PCA9685_SUB3    0x02
#define PCA9685_ALLCALL 0x01

/* MODE2 bits */
#define PCA9685_INVRT   0x10
#define PCA9685_OCH     0x08
#define PCA9685_OUTDRV  0x04
#define PCA9685_OUTNE1  0x02
#define PCA9685_OUTNE0  0x01

/* LEDX_ON_H bits */
#define PCA9685_LED_ON 0x10

/* LEDX_OFF_H bits */
#define PCA9685_LED_OFF 0x10
/* PWM data variables, 16bit vide, 12bit used*/





class Light {
public:
	Light(i2c_base *baseDriver);
	~Light();

	int SetLight(light_control *control);


private:
	//TODO Methoden sollten ordentliche rückgabe werte haben
	void pca9685_send(btz_i2c_device *device, long value, int led);
	void pca9685_brightness(btz_i2c_device *device, int percent, int led);
	void pca9685_AllLedOff(btz_i2c_device *device);
	i2c_base *_baseDriver;
	long PWMData[16];
};



#endif /* LIGHT_H_ */
