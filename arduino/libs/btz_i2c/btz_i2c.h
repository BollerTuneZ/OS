/*
	@author Javerik 15.02.16
	
*/

#ifndef BTZ_I2C_H
#define BTZ_I2C_H

class Btz_i2c
{
	public:
		Btz_i2c();
		~Btz_i2c();
		
	private:
		char _adressMaster;
		char _adressSlave;
};
#endif