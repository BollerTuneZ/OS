/*
 * eeprom_handler.cpp
 *
 *  Created on: Jan 7, 2017
 *      Author: jonas
 */
#include <eeprom_handler.h>

EepromHandler::EepromHandler() {
	_version = 0;
	this->_util = new BtzUtil();
}

int EepromHandler::containsData() {

	if(_hasData){
		return ERROR_OK;
	}
	char value = EEPROM.read(0);
	char containsFlag = _util->GetBitB(&value, 7);
	if(containsFlag){
		_hasData = 1;
		return ERROR_OK;
	}else
	{
		return ERROR_EEPROM_NO_DATA;
	}
}

int EepromHandler::getPIDParameter(double* outVal) {
	if(!_hasData){
		return ERROR_EEPROM_NO_DATA;
	}
	char pidRaw[3][4];
	char kp[4],ki[4],kd[4];
	for(int i=0;i<3;i++){
		char counter=0;
		for(int start=(i* 4) + 1;start<(start+4);start++){
			pidRaw[i][counter] = EEPROM.read(start);
			counter++;
		}
	}
	union {
		double 	d;
		char	b[4];
	}conv;
	conv.b = pidRaw[0];
	outVal[0] = conv.d;
	conv.b = pidRaw[1];
	outVal[1] = conv.d;
	conv.b = pidRaw[2];
	outVal[2] = conv.d;
}

int EepromHandler::writePIDParameter(double* values) {

}

char EepromHandler::getVersion() {
	if(!_version){
		if(!_hasData){
			return 0;
		}
		char value = EEPROM.read(0);
		_util->SetBitB(&value, 7, 0);
		_version = value;
	}
	return _version;
}
