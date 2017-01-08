/*
 * b_types.h
 *
 *  Created on: Jan 7, 2017
 *      Author: jonas
 */

#ifndef HEADER_B_TYPES_H_
#define HEADER_B_TYPES_H_

/////////////////////////
///	  Board Types	/////
/////////////////////////
#define BOARD_STEERING 	'S'
#define BOARD_DRIVE		'D'

/////////////////////////
///	  ERROR Types	/////
/////////////////////////
#define ERROR_OK 						1
#define ERROR_ERROR 					0
#define ERROR_BOARD_UNDEFINED			2
#define ERROR_CONFIG					3
#define ERROR_TYPE						4

//Servo ERRORS
#define ERROR_SERVO_ENCODER 			31
#define ERROR_SERVO_PID 				32
#define ERROR_SERVO_POWER_MIN			33
#define ERROR_SERVO_POWER_MAX			33

// EEPROM
#define ERROR_EEPROM_NO_DATA			40
#define ERROR_EEPROM_READ				41
#define ERROR_EEPROM_WRITE				42

//I2C
#define ERROR_I2C_REG_NULL				50
#define ERROR_I2C_REG_CORRUPTED			51
#define ERROR_I2C_BUFFER_OVERFLOW		52
#define ERROR_I2C_REGISTER_OUT_OF_INDEX	53
#define ERROR_I2C_PAGE_OUT_OF_INDEX		53
#define ERROR_I2C_ACCESS_DENIED			54




/////////////////////////
///	  FU Types	/////
/////////////////////////
#define CTRL_SINGLE_ENDED 	10
#define CTRL_DIVERENTIAL	20


#endif /* HEADER_B_TYPES_H_ */
