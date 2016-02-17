/*
	@author Javerik 15.02.16
	
*/

#ifndef BTZ_I2C_H
#define BTZ_I2C_H


#define REGISTER_MAX 255
#define REGISTER_MIN 0
#define REGISTER_READ 0x3
#define REGISTER_WRITE 0x2

/*Data types available for i2c communication*/
#define DT_BYTE 0x01
#define DT_CHRARY 0x02
#define DT_INT 0x03


#include <Wire.h>

class Btz_i2c
{
	public:
		Btz_i2c();
		~Btz_i2c();
		
		void Initialize(char i2c_address,void **i2c_register,char registerLength);
		
	private:
		int _registerIndex;
		char _i2c_address;
		void **_register;
		char _registerIndex;
		char _registerLength;
		char _registerMode;
		void requestEvent(void);
		void receiveEvent(int b_count);
};
#endif