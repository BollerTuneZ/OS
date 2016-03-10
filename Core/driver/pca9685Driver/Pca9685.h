/*
 * Pca9685.h
 *
 *  Created on: 10.03.2016
 *      Author: Jonas
 */

#ifndef PCA9685_H_
#define PCA9685_H_

#include "include/i2c_base.h"

typedef struct
{
	char* name;
	char reg;
}LightItem;

class Pca9685 {
	public:
		Pca9685(char addr);
		~Pca9685();

		void Init(LightItem *lightItems);


		void test_();
	private:

		char _addr;
		LightItem (*_lightItems)[];
};

#endif /* PCA9685_H_ */
