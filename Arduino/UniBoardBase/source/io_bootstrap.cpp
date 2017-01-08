/*
 * io_bootstrap.cpp
 *
 *  Created on: Jan 7, 2017
 *      Author: jonas
 */
#include "io_bootstrap.h"

IoBootstrap::IoBootstrap() {
}

#if BOARD_TYPE == 'S'

int IoBootstrap::bootstrap() {
	/*External Header*/
	pinMode(EXT_INT,	INPUT);
	pinMode(EXT_DIO1,	INPUT);
	pinMode(EXT_DIO2,	OUTPUT);

	/*
	 * OPTOKOPLER
	 * */
	pinMode(DI_S1,		INPUT);
	pinMode(DI_S2,		INPUT);

	/*
	 * Relais
	 * */
#ifdef FU_DIRECTION
	pinMode(FU_DIRECTION,		OUTPUT);
#else
	pinMode(FU_FORWARD,			OUTPUT);
	pinMode(FU_BACKWARD,		OUTPUT);
#endif
	pinMode(FU_ENABLE,			OUTPUT);

	return ERROR_OK;
}

#elif BOARD_TYPE == 'D'
int IoBootstrap::bootstrap() {
	/*External Header*/
	pinMode(EXT_INT,	INPUT);
	pinMode(EXT_DIO1,	INPUT);
	pinMode(EXT_DIO2,	OUTPUT);

	/*
	 * Relais
	 * */
#ifdef FU_DIRECTION
	pinMode(FU_DIRECTION,		OUTPUT);
#else
	pinMode(FU_FORWARD,			OUTPUT);
	pinMode(FU_BACKWARD,		OUTPUT);
#endif
	pinMode(FU_ENABLE,			OUTPUT);

	return ERROR_OK;
}
#else
int IoBootstrap::bootstrap() {
	return ERROR_BOARD_UNDEFINED;
}
#endif
