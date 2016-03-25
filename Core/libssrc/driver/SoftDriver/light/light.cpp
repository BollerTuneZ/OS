/*
 * light.cpp
 *
 *  Created on: 13.03.2016
 *      Author: jonas
 */
#include "light.h"


Light::Light(i2c_base *baseDriver) {
	_baseDriver = baseDriver;
	PWMData[0] = 0b010000000000;
	PWMData[1] = 0b101000000000;
	PWMData[2] = 0b000011000000;
	PWMData[3] = 0b000001100000;
	PWMData[4] = 0b000001011010;
	PWMData[5] = 0b000000000000;
	PWMData[6] = 0b000000000000;
	PWMData[7] = 0b000000000000;
	PWMData[8] = 0b000000000000;
	PWMData[9] = 0b000000000000;
	PWMData[10] = 0b000000000000;
	PWMData[11] = 0b000000000000;
	PWMData[12] = 0b000000000000;
	PWMData[13] = 0b000000000000;
	PWMData[14] = 0b000000000000;
	PWMData[15] = 0b000000000000;

}

Light::~Light() {

}

int Light::SetLight(light_control *control) {


	pca9685_send(control->device,*control->frequenzy,control->ledNum);
	//TODO Error handling
	return 1;
}



void Light::pca9685_send(btz_i2c_device *device, long value, int led)
{
/********************************************/
/* pca9685_send(long value, int led)        */
/* Send the 12 bit PWM data to the register */
/* Input[ 0to4095 pwm, 0to15LED channel]    */
/* Output[void]                             */
/********************************************/
    int pwm;                    // temp variable for PWM
    if(value > 4095)            // if larger than 4095 than full on
            value = 4095;       // cant be larger than 4095
    if(led > 15)                // if LED larger than 15 than on other chip
            led = 15;           //***** need to implement to selecet next pcs9685

    char sendBuf[5];//TODO addresse muss most likly nicht mit geschickt werden mal sehen
    //sendBuf[0] = device->addr;
    sendBuf[0] = LED0 + 4 * led;
    sendBuf[1] = 0x0;
    sendBuf[2] = 0x0;
    sendBuf[3] = value;
    sendBuf[4] = value>>8;

    _baseDriver->WRITE(device->addr,sendBuf,5);
    /*
    i2c_start();                // Start
    i2c_write(address);         // Address of selected pca9685
    i2c_write(LED0 + 4 * led);  // select slected LED address
    i2c_write(0x00);            // LED_ON_L
    i2c_write(0x00);            // LED_ON_H
    pwm = value;                // PWM value lo byte
    i2c_write(pwm);             // LED_OFF_L
    pwm = value>>8;             // pwm 16 bit long, now shift upper 8 to lower 8
    i2c_write(pwm);             // LED_OFF_H
    i2c_stop();                 // STop*/
}

void Light::pca9685_brightness(btz_i2c_device *device, int percent, int led)
{
/********************************************/
/* Calculate the register values for a      */
/* given percentage and dupdate pca9685     */
/* Input:[address of the chip where LED is_ */
/* percent of PWM on period 0%to100%      _ */
/* LED to set brightness 0to15]             */
/* Output:[void]                            */
/********************************************/
    long x;                             // temp variable
    float off;                          // temp variable
    const float onePercent = 40.96;
    if (percent < 1) {                  // if % less than 1 than LED OFF
    PWMData[led] = PCA9685_LED_OFF>>8;  // update data in array in case we use update all LED next
    pca9685_send(device,0,led);        // update selected LED
    return;                             // return from function
    }
    if (percent >= 100) {               // if % greather than 100 than LED ON
    PWMData[led] = PCA9685_LED_ON>>8;   // update data in array
    pca9685_send(device,4095,led);     // update selected LED
    return;                             // return from function
    }
    off = onePercent * percent;         // different aproach with float need to check if code faster than int32 way ?
//    off = (int32)4096 * percent;        // calculate percent (max*percent)/100
//    off = off / 100;                    // ex (4096*50%)=204800/100=2048
//    x = make16(off>>8,off);             // make 16 of 32 ?! why.. dont care at this time
    PWMData[led] = off;                 // update datat array in case we update all LED next
    pca9685_send(device,off,led);      // send it to pca9685
}

void Light::pca9685_AllLedOff(btz_i2c_device *device)
{
	//TODO gleiches wie oben gilt auch hier
	char sendBuf[3] =
	{
			0xfc,0b00000000,0b00010000
	};
	_baseDriver->WRITE(device->addr,sendBuf,3);
}

