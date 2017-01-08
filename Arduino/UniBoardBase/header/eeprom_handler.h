/*
 * eeprom_handler.h
 *
 *  Created on: Jan 7, 2017
 *      Author: jonas
 *
 *
 *  Structure:
 *  	[0] 		= lastBit containsDataFlag, rest version
 *
 *  	PID:
 *  		[1, ..,4] 	= (double) KP
 *  		[5, ..,8] 	= (double) KI
 *  		[9, ..,12] 	= (double) KD
 *
 */

#ifndef HEADER_EEPROM_HANDLER_H_
#define HEADER_EEPROM_HANDLER_H_
#include <EEPROM.h>
#include <btz_util.h>
#include <b_types.h>

class EepromHandler{

public:
	EepromHandler();

	char getVersion();

	/*
	 * returns ERROR_OK if data available
	 * */
	int containsData();


	/*
	 * out = pid parameter in array[3]{p,i,d}
	 * Returns ERROR_CODE
	 * */
	int getPIDParameter(double *outVal);

	/*
	 * Writes pid values into eeprom
	 * Returns ERROR_CODE
	 * */
	int writePIDParameter(double *values);
private:
	char _version;
	char _hasData;
	BtzUtil *_util;

};



#endif /* HEADER_EEPROM_HANDLER_H_ */
