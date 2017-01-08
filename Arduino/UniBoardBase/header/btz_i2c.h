/*
	@author Javerik 15.02.16
	
*/


#include <Wire.h>
#include <Arduino.h>
#include <btz_util.h>
#include <b_types.h>

#ifndef BTZ_I2C_H
#define BTZ_I2C_H

/*
 * Size of the tx and rx buffer in bytes
 * */
#define BTZ_I2C_TX_BUFFER_SIZE	64
#define BTZ_I2C_RX_BUFFER_SIZE	48


#ifndef REGISTER_PAGE_COUNT
//Default Register page with device info
#define REGISTER_PAGE_COUNT 	1
#endif

#ifndef REGISTER_COUNT
#define REGISTER_COUNT			5
#endif

/*
 * System Register
 * */
#define REGISTER_PAGE 		0x2
#define REGISTER_PAGE_PAGE	0

#define REGISTER_MAX 255
#define REGISTER_MIN 0
#define REGISTER_READ 0
#define REGISTER_WRITE 1
#define REGISTER_IDLE 0x0

/*Data types available for i2c communication*/
#define DT_BIT 		1
#define DT_BYTE 	2
#define DT_CHRARY 	3
#define DT_INT 		4
#define DT_LONG 	5
#define DT_FLOAT 	6
#define DT_DOUBLE	7

typedef struct {
	char valid=0;
	char dataType;
	char size;
	//TODO include it as bitfield inside dataType
	char writeProtect;
	void *valuePointer;
}i2c_reg;

class Btz_i2c
{
	public:
		//register structure:0=dataType1=valuePointer Buffer structure: 0=register1=ReadWriteRegister~payload
		Btz_i2c(char i2c_address,i2c_reg* i2c_register,int registerLength);
		~Btz_i2c();
		
		/*
		 * Register Request message pattern:
		 * [register[, lengthHIGH,lengthLOW,payload]]{
		 * 	0		0000000
		 * 	R/W		RegisterIndex
		 *
		 *	If register bit is HIGH(WRITE),
		 *		n = length of payload 2 bytes
		 *		payload n bytes
		 * }
		 *
		 * */
		void OnRequest();
		
		void OnReceive(int bytes);
		
		String log;
		
	private:
		char _i2c_address;

		/*
		 * Alloc space for register
		 * */
		i2c_reg _register[REGISTER_PAGE_COUNT][REGISTER_COUNT];

		char _rxBuffer[BTZ_I2C_RX_BUFFER_SIZE];
		char _txBuffer[BTZ_I2C_TX_BUFFER_SIZE];
		unsigned char _registerPageIndex;
		unsigned char _registerIndex;
		char _registerLength;
		char _registerMode;
		const char* readError = "readError";
		char boolTrue = 0x1;
		char boolFalse = 0x0;
		void requestEvent();
		void receiveEvent(int b_count);
		int readRegister();

		int writeRegister(char* request,char size, char offset);

		/*
		 * Reads n bytes from i2c bus into rx buffer
		 * return ERROR_CODE
		 * */
		int readBuffer(int length);

		/*
		 * Parses register value from message
		 * out 	= 	[0] R/W
		 * 		=	[1] Register
		 * 	return ERROR_CODE
		 * */
		int parseRegister(char value, char *out);

		BtzUtil _util;

		union{
			double 	d;
			char	b[4];
		} _convD;

		union{
			float 	f;
			char	b[f];
		} _convF;

};
#endif
