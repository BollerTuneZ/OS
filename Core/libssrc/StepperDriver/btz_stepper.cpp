/*
 * btz_stepper.cpp
 *
 *  Created on: 04.04.2016
 *      Author: Jonas
 */

#include "btz_stepper.h"

BtzStepper::BtzStepper(gpio_btz* gpio_driver,Btz_step_pins pining) {
	this->_gpio = gpio_driver;
	_pining = pining;
}

int BtzStepper::Initialize() {
#ifdef DEBUG
	printf("Initializing Stepper Driver\n");
#endif
	//Check Gpio driver
	if(!this->_gpio->IsInitialized())
	{
#ifdef DEBUG
	printf("Gpio Driver was not initialized\n");
#endif
		//Try to init gpio driver
		if(!this->_gpio->Initialize())
		{
#ifdef DEBUG
	printf("Could not initialize gpio driver, from steper driver\n");
#endif
			return -1;
		}
	}

	//Set pin directions
#ifdef DEBUG
	printf("Setting up stepper pin directions\n");
#endif
/*
	_gpio->SetPin(_pining.dir,'O');
	_gpio->SetPin(_pining.dir,'O');
	_gpio->SetPin(_pining.dir,'O');*/
#ifdef DEBUG
	printf("Stepper driver initialized\n");
#endif
	return 1;
}

BtzStepper::~BtzStepper() {
}

void BtzStepper::EnableMotor() {
}

void BtzStepper::DisableMotor() {
}

int BtzStepper::Drive(long steps, char dir, int feedrate) {

	_driveLck.lock();
	_stepItem tmpItem;
	tmpItem.dir = dir;
	tmpItem.steps = steps;
	tmpItem.feedrate = feedrate;
	_addDriveTask(tmpItem);
	if(!_isDriving)
	{
#ifdef DEBUG
	printf("Create new Thread\n");
#endif
		std::thread t1(&BtzStepper::_driveControl,this);
	}
	_driveLck.unlock();
	return 1;
}

void BtzStepper::StopDrive() {
	_driveLck.lock();
	_isDriving = false;
	_driveLck.unlock();
}

long long BtzStepper::GetStepPosition() {
	long long buf;
	_posLck.lock();
	buf =  _stepPosition;
	_posLck.lock();
	return buf;
}

void BtzStepper::SetStepPosition(long long position) {

	_posLck.lock();
	_stepPosition = position;
	_posLck.unlock();
}

char BtzStepper::GetDriveState() {
	bool buf;
	_driveLck.lock();
	buf = _isDriving;
	_driveLck.unlock();
	return buf;
}

int BtzStepper::_calculateFeedrate(int feedrate) {
	/*Feedrate is Calculated by:
	*
	*FEEDS_SEC / SECOND(1000)
	*/
	return (feedrate/10000);
}

int BtzStepper::_addDriveTask(_stepItem item) {

#ifdef DEBUG
	printf("Add new Drive Task\n");
#endif
	_cacheLck.lock();
	for(int i=0;i<MAX_CACHE;i++)
	{
		if(_stepItems[i].isValid == INVALID_STP)
		{
			_stepItems[i] = item;
			_stepItems[i].index = _cacheIndex++;
			_cacheLck.unlock();
			return 1;
		}
	}
	_cacheLck.unlock();
	return -1;
}

void BtzStepper::_removeDriveTask(int index) {
#ifdef DEBUG
	printf("Remove Steptask with index %i",index);
#endif
	_cacheLck.lock();
	_stepItems[index].isValid = INVALID_STP;
	_cacheLck.unlock();
}

void BtzStepper::_cleanCache() {
#ifdef DEBUG
	printf("Clean Cache");
#endif
	for(int i=0;i<MAX_CACHE;i++)
	{
		_removeDriveTask(i);
	}
}
/*
_stepItem* BtzStepper::_getNextItem(int index) {

	_stepItem *itemPtr;
	_cacheLck.lock();
	itemPtr = &_stepItems[index];
	_cacheLck.unlock();
	return itemPtr;
}*/

void BtzStepper::_drive(_stepItem* item) {

#ifdef DEBUG
	printf("Working on task: %i, stepping :%u",item->index,item->steps);
#endif
	//Step delay counter, moves x steps until checking for stop
	int checkDelay = 5;
	int delay = (_calculateFeedrate(item->feedrate) / 2);

	if(item->dir == STEP_FORWARD)
	{
		_gpio->DigitalWrite(_pining.dir,1);
	}else if(item->dir == STEP_BACKWARD)
	{
		_gpio->DigitalWrite(_pining.dir,0);
	}else
	{
		//Direction is unkown
		return;
	}

	for(long stepsLeft = item->steps;stepsLeft >= 0;stepsLeft--)
	{
		if(checkDelay == 0)
		{
			//Check if driving was canceled
			_driveLck.lock();
			if(!_isDriving){_driveLck.unlock();return;}
			_driveLck.unlock();
		}
		_gpio->DigitalWrite(_pining.step,1);
		usleep(delay);
		_gpio->DigitalWrite(_pining.step,0);
		usleep(delay);
		if(item->dir == STEP_FORWARD)
		{
			_posLck.lock();
			_stepPosition++;
			_posLck.unlock();
		}else if(item->dir == STEP_BACKWARD)
		{
			_posLck.lock();
			_stepPosition--;
			_posLck.unlock();
		}
	}
}

void BtzStepper::_driveControl() {

#ifdef DEBUG
	printf("Enter drive control\n");
#endif
	_stepItem *item;
	int lowestIndex = -10;
	int lowestI =0;
	_cacheLck.lock();
	for(int i=0;i<MAX_CACHE;i++)
	{
#ifdef DEBUG
	printf("In Loop\n");
#endif
		if(_stepItems[i].isValid == VALID_STP)
		{
			if(lowestIndex == -10)
			{
				lowestIndex = _stepItems[i].index;
				lowestI = i;
				continue;
			}
			if(_stepItems[i].index < lowestIndex)
			{
				lowestIndex = _stepItems[i].index;
				lowestI = i;
			}
		}
	}
	if(lowestIndex == -10)
	{
		return;
	}
	item = &_stepItems[lowestI];
	_cacheLck.unlock();

#ifdef DEBUG
	printf("Step Thread started");
#endif
	_drive(item);
	item->isValid = INVALID_STP;
	_cacheLck.lock();
	for(int i=0;i<MAX_CACHE;i++)
	{
		if(_stepItems[i].isValid == VALID_STP && _stepItems[i].index == (item->index + 1))
		{
			_driveControl();
#ifdef DEBUG
		printf("Continue with task out of buffer");
#endif
			_cacheLck.lock();
		}
	}
	_cacheLck.unlock();
}


