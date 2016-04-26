/*
 * btz_stepper.h
 *
 *  Created on: 04.04.2016
 *      Author: Jonas
 */

#ifndef BTZ_STEPPER_H_
#define BTZ_STEPPER_H_

#include "../gpio_driver/gpio_btz.h"
#include <mutex>
#include <thread>
#include <unistd.h>
#define DEBUG
#ifdef DEBUG
#include <stdio.h>
#endif


typedef struct
{
	int enable;
	int dir;
	int step;
}Btz_step_pins;

#define STEP_FORWARD 'F'
#define STEP_BACKWARD 'B'


class BtzStepper {

#define MIN_FEEDRATE 0
#define MAX_FEEDRATE 5000
#define MAX_CACHE 10
#define VALID_STP 0x1
#define INVALID_STP 0x1

	typedef struct
	{
		int index;
		long steps;
		char dir;
		int feedrate;
		char isValid;
	}_stepItem;

public:
	/***
	 * Hardware gpio driver
	 */
	BtzStepper(gpio_btz *gpio_driver,Btz_step_pins pining);
	~BtzStepper();

	int Initialize();

	/**
	 * Drives given steps in dir('L'=left;'R'=right) with feedrate(steps/s)
	 * returns 1 if task has been added or -1
	 */
	int Drive(long steps,char dir,int feedrate);

	/**
	 * Enables Steppermotor
	 */
	void EnableMotor();
	/***
	 * Disables Steppermotor
	 */
	void DisableMotor();

	/***
	 * Stops current drive operation and cancels all stepping tasks
	 */
	void StopDrive();

	/***
	 * Returns the steppermotor position
	 */
	long long GetStepPosition();

	/***
	 * Sets the steppermotor position
	 */
	void SetStepPosition(long long position);

	/***
	 * Returns if a drive task is active
	 */
	char GetDriveState();

private:
	int _addDriveTask(_stepItem item);
	void _removeDriveTask(int index);
	void _cleanCache();
	//Returns steps in seconds to microsecond delay time
	int _calculateFeedrate(int feedrate);
	//Thread which executes step driving
	void _driveControl();
	void _drive(_stepItem *item);
	std::thread *_driveThread;
	gpio_btz *_gpio;
	//Stepper thread is open or not
	char _isDriving;
	int _cacheIndex;
	unsigned long _totalSteps;
	long long _stepPosition;
	_stepItem _stepItems[MAX_CACHE];
	Btz_step_pins _pining;
	std::mutex _driveLck,_posLck,_cacheLck;
};



#endif /* BTZ_STEPPER_H_ */
