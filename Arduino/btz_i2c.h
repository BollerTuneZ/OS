/*
	@author Javerik 15.02.16
	
*/


#include <Wire.h>
#include <Arduino.h>

#ifndef BTZ_I2C_H
#define BTZ_I2C_H

#ifndef REGISTER_PAGES
//Default Register page with device info
#define REGISTER_PAGES 1
#endif

#define REGISTER_MAX 255
#define REGISTER_MIN 0
#define REGISTER_READ 0x3
#define REGISTER_WRITE 0x2
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
	char dataType;
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
		i2c_reg *_register;
		unsigned char _registerPageIndex;
		unsigned char _registerIndex;
		int _registerLength;
		char _registerMode;
		const char* readError = "readError";
		char boolTrue = 0x1;
		char boolFalse = 0x0;
		void requestEvent();
		void receiveEvent(int b_count);
		char* readRegister();
		void writeRegister(char* request,int size);
};
#endif
