/*
 * servo.cpp
 *
 *  Created on: Jan 7, 2017
 *      Author: jonas
 */
#include "servo.h"
Servo::Servo(int enc_pin_a, int enc_pin_b) {
	position = 0;position_target = 0;
	power = 0;
	direction=0;
	_chanelA = enc_pin_a;
	_chanelB = enc_pin_b;
	kp=0;ki=0;kd=0;
	_pidI=0;_pidO=0;_pidS=0;
	this->positon_encoder = new Encoder(_chanelA,_chanelB);
	this->pid_controller = 0;
	MCPDAC.begin(MCP_CS);
	MCPDAC.setGain(CHANNEL_A, GAIN_HIGH); //ChannelA "HIGH" mode - 0 to 4096mV.
	MCPDAC.shutdown(CHANNEL_A, false);
	MCPDAC.shutdown(CHANNEL_B, true);

}

int Servo::drive() {

	position =
	_pidI = (double)this->positon_encoder->read();
	_pidS = (double)position_target;
	bool result = this->pid_controller->Compute();
	if(!result){
		return ERROR_SERVO_PID;
	}
	bool changeDirection = false;
	if(_pidO < 0){
		if(direction != 1){
			direction = 1;
			changeDirection = true;
		}
		_pidO = (_pidO * (-1));
	}else{
		if(direction != 0){
			direction = 0;
			changeDirection = true;
		}
	}
	if(changeDirection){
		int change_direction_result = setDirection();
		if(change_direction_result != ERROR_OK){
			return change_direction_result;
		}
	}
	power = (unsigned int)_pidO;
	if(power < threshold_power_min){
		power = 0;
		MCPDAC.setVoltage(CHANNEL_A, power&0x0fff);
		return ERROR_SERVO_POWER_MIN;
	}else if(power > threshold_power_max){
		power = threshold_power_max;
		MCPDAC.setVoltage(CHANNEL_A, power&0x0fff);
		return ERROR_SERVO_POWER_MAX;
	}else{
		MCPDAC.setVoltage(CHANNEL_A, power&0x0fff);
	}
	return ERROR_OK;
}

void Servo::stop() {
	power = 0;
	MCPDAC.setVoltage(CHANNEL_A, power&0x0fff);
	MCPDAC.shutdown(CHANNEL_A, true);
	digitalWrite(FU_ENABLE,LOW);
}

void Servo::Init() {
	this->pid_controller = new PID(&_pidI, &_pidO, &_pidS, kp, ki, kd, 0);
	this->pid_controller->SetMode(1);
	digitalWrite(FU_ENABLE,HIGH);
}

int Servo::setDirection() {

#if FU_CTRL_TYPE == CTRL_DIVERENTIAL

	if(direction == DIRCETION_FORWARDS){
		digitalWrite(FU_BACKWARD, LOW);
		digitalWrite(FU_FORWARD, HIGH);
	}else if(direction == DIRCETION_BACKWARDS){
		digitalWrite(FU_BACKWARD, LOW);
		digitalWrite(FU_FORWARD, HIGH);
	}else{
		return ERROR_ERROR;
	}
	return ERROR_OK;
#elif FU_CTRL_TYPE == CTRL_SINGLE_ENDED
	digitalWrite(FU_DIRECTION,direction);
	return ERROR_OK;
#else
	return ERROR_CONFIG;
#endif

}

void Servo::restart() {
	if(MCPDAC.shutdownA){
		MCPDAC.shutdown(CHANNEL_A, false);
	}
	digitalWrite(FU_ENABLE,HIGH);
}
