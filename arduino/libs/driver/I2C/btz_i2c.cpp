/*
 * btz_i2c.cpp
 *
 *  Created on: 06.03.2016
 *      Author: Jonas
 */


#include "btz_i2c.h"
#include <Wire.h>
extern "C"
{
	#include "btz_util.h"
}

Btz_i2c::Btz_i2c()
{

}

Btz_i2c::~Btz_i2c()
{

}

void Btz_i2c::Initialize(char i2c_address,i2c_reg *i2c_register,char registerLength)
{
	_register = i2c_register;
	_registerLength = registerLength;
	Wire.begin(i2c_address);
}

void Btz_i2c::OnRequest()
{
	requestEvent();
}

void Btz_i2c::OnReceive(int bytes)
{
	receiveEvent(bytes);
}


void Btz_i2c::requestEvent()
{
	i2c_reg reg = _register[_registerIndex];
	log += "Index:" + String(_registerIndex,HEX) + "\n";
	if(reg.dataType == DT_BYTE)//Write single byte
	{
		char payload = *(char*)reg.valuePointer;
		Wire.write(payload);
	}else if(reg.dataType == DT_CHRARY)
	{
		int size = sizeof((char*)reg.valuePointer);
		Wire.write((char*)reg.valuePointer,size);
	}else if(reg.dataType == DT_INT)
	{
		log += "DataType Int\n";
		char test[2];
		test[0] = *(int*)reg.valuePointer;
		test[1] = *(int*)reg.valuePointer >> 8;

		Wire.write(test,2);
	}else
		log += "DataType Unkown:" + String(reg.dataType,HEX) + "\n";
		return;//Unkown dataType

}

/**
    Receives Data from Master with register which can be written by payload or selected for reading.

    @param Amount of bytes transmitted
*/
void Btz_i2c::receiveEvent(int b_count)
{

	char buf[b_count];
	int counter = 0;
	//Reading i2c buffer
	while(Wire.available())
	{
		char readByte = Wire.read();
		if(counter >=b_count)
		{
			log += "bcount to big\n";
			//TODO err handling
			return;
		}
		log += "Read:" + String(readByte,HEX) + "	";
		buf[counter] = readByte;
		counter++;
	}
	log += "\n";
	log += "Received message register:"+ String(buf[0],HEX) + " r/w byte:" + String(buf[1],HEX) + "\n";
	//assume register at index 0, validate
	//set register
	log += "check reg rw byte\n";
	_registerIndex = buf[0];
	if(buf[1] == REGISTER_READ)
	{
		log += "reg set\n";
		_registerMode = REGISTER_READ;

		//Nothing to do..
		return;
	}
	else if(buf[1] == REGISTER_WRITE)
	{
		log +="reg write\n";
		_registerMode = REGISTER_WRITE;
	}
	else
	{
		log +="Command Unkown\n";
		return;
	}

	i2c_reg reg = _register[_registerIndex];
	char data_type = reg.dataType;
	int dataBufLength = b_count - 2;
	log += "dataBufLength:" + String(sizeof(buf)) + "\n";
	char dataBuf[dataBufLength];

	//grap data

	for(int i=0;i<dataBufLength;i++)
	{
		dataBuf[i] = buf[i + 2];
		log += String(dataBuf[i],HEX) + ";";
	}
	log +="writing register\n";


	if(reg.writeProtect == 1)
	{
		log +="protected\n";
		return;
	}

	if(data_type == DT_BYTE)//Write single byte
	{
		*(char*)reg.valuePointer = dataBuf[0];
	}else if(data_type == DT_CHRARY)
	{
		char *pointer = (char*)reg.valuePointer;
		for(int i=0;i < dataBufLength;i++)
		{
			pointer[i] = dataBuf[i];
		}
		log +="writing chararry\n";
	}else if(data_type == DT_INT)
	{
		*(int*)reg.valuePointer = Convert4ByteToInt(dataBuf);
	}else
		return;//Unkown dataType

}

