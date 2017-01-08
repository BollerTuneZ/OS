/*
 * b_pin.h
 *
 *  Created on: Jan 5, 2017
 *      Author: jonas
 */

#ifndef B_PIN_H_
#define B_PIN_H_


///////////////////////////////
/////	DIGITAL IO		//////
//////////////////////////////
/*
 * EXTERNAL HEADER IO
 * */
#define EXT_INT		9
#define EXT_DIO1	39
#define EXT_DIO2	38
/*
 * OPTOKOPLER INTERUPT INPUT
 * */
#define DI_S1		7
#define DI_S2		6
/*
 * ENCODER CHANNEL
 * */
#define ENC1_INTA	28
#define ENC1_INTB	27
#define ENC2_INTA	8
#define ENC2_INTB	4
/*
 * RELAIS
 * */
#define GATE_1		45
#define GATE_2		46
#define GATE_3		47
#define GATE_4		48


///////////////////////////////
/////	ADC		//////
//////////////////////////////

/*
 * MCP4822
 * */
#define MCP_CS 14

/*
 * EXTERNAL HEADER IN
 * */
#define EXT_ADC0	61
#define EXT_ADC1	60
#define EXT_ADC2	59


#endif /* B_PIN_H_ */
