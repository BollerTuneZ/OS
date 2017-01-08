/*
 * servo.h
 *
 *  Created on: Jan 7, 2017
 *      Author: jonas
 */

#ifndef HEADER_SERVO_H_
#define HEADER_SERVO_H_
#include "Arduino.h"
#include <Encoder.h>
#include <PID_v1.h>
#include <MCPDAC.h>

#include "b_pin.h"
#include "b_types.h"
#include "config.h"

class Servo{

public:
	double kp, ki, kd;
	//position is from encoder, position_target comes from outside
	long position,position_target;
	unsigned int power;
	int direction;
	unsigned int threshold_power_min = 100;
	unsigned int threshold_power_max = 4000;


	Servo(int enc_pin_a, int enc_pin_b);

	/*
	 * Initializes PID controller
	 * */
	void Init();

	/*
	 * Drives motor to <position> with computed <power> and <direction>,
	 * based on pid controller with parameter:
	 * <kp>, <ki> and <kd>
	 * returns ERROR_CODE
	 * */
	int drive();

	/*
	 * Stops the motor immediately
	 * */
	void stop();

	/*
	 * Enables DAC and FU
	 * */
	void restart();

private:
	Encoder *positon_encoder;
	PID *pid_controller;
	double _pidO,_pidS,_pidI;

	/*
	 * Position encoder channel pins
	 * */
	int _chanelA, _chanelB;

	/*
	 * Sets the direction by relais
	 * */
	int setDirection();

};


#endif /* HEADER_SERVO_H_ */
