/*
 * Pca9685.cpp
 *
 *  Created on: 10.03.2016
 *      Author: Jonas
 */
#include "Pca9685.h"

Pca9685::Pca9685(char addr)
{
	_addr = addr;
}
Pca9685::~Pca9685()
{

}

void Pca9685::Init(LightItem *lightItems)
{
	_lightItems = lightItems;
}

void Pca9685::test_()
{

}


