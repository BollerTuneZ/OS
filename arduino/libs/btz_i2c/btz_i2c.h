/*
	@author Javerik 15.02.16
	
*/

#ifndef BTZ_I2C_H
#define BTZ_I2C_H

#define REGISTER_MAX 255

class Btz_i2c
{
	public:
		Btz_i2c();
		~Btz_i2c();
		
		void Initialize(char i2c_address,void **i2c_register);
		
	private:
		char _i2c_address;
		char _registerCount;
		void **_register;
		char _registerIndex;
};
#endif