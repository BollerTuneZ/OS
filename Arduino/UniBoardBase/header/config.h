/*
 * config.h
 *
 *  Created on: Jan 7, 2017
 *      Author: jonas
 */

#ifndef HEADER_CONFIG_H_
#define HEADER_CONFIG_H_
#include "b_types.h"

#define BOARD_TYPE 		BOARD_STEERING

#define DIRECTION_HIGH			1
#define DIRCETION_FORWARDS		0
#define DIRCETION_BACKWARDS		1



#if BOARD_TYPE == BOARD_STEERING

#define FU_CTRL_TYPE CTRL_SINGLE_ENDED

#if FU_CTRL_TYPE == CTRL_DIVERENTIAL
#define FU_FORWARD GATE_1
#define FU_BACKWARD GATE_3
#elif FU_CTRL_TYPE == CTRL_SINGLE_ENDED
#define FU_DIRECTION GATE_1
#endif
#define FU_ENABLE GATE_2


#elif BOARD_TYPE == BOARD_DRIVE

#define FU_CTRL_TYPE CTRL_DIVERENTIAL

#endif

#endif /* HEADER_CONFIG_H_ */
