/*
 * i2c_btz.h
 *
 *  Created on: 10.03.2016
 *      Author: Jonas
 */

#ifndef I2C_BTZ_H_
#define I2C_BTZ_H_

typedef struct{
	char* name;
	char id;
	char addr;
}i2c_device;

class BtzI2C {
public:
	BtzI2C();
	~BtzI2C();
	void Init();


private:
};


#endif /* I2C_BTZ_H_ */
