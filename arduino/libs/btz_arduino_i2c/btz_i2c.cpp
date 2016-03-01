#include "btz_i2c.h"

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

void Btz_i2c::Initialize(char i2c_address,void **i2c_register,char registerLength)
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
		log += "Read:" + String(readByte,HEX) + "\n";
		buf[counter] = readByte;
		counter++;
	}
	
	log += "Received message register:"+ String(buf[0],HEX) + " r/w byte:" + String(buf[1],HEX) + "\n";
	//assume register at index 0, validate 
	/*
	if(buf[0] >= _registerLength || buf[0] < REGISTER_MIN)
		log += "Register length wrong:" + String(buf[0],HEX) +"\n";
		return;
	*/
	//set register
	log += "check register rw byte...\n";
	_registerIndex = buf[0];
	if(buf[1] == REGISTER_READ)
	{
		log += "Register set\n";
		_registerMode = REGISTER_READ;
		
		//Nothing to do..
		return;
	}
	else if(buf[1] == REGISTER_WRITE)
	{
		log +="Register write\n";
		_registerMode = REGISTER_WRITE;
	}
	else
	{
		log +="Command Unkown\n";
		return;
	}
	
	log +="writing register\n";
	
	void **registerPointer = (void**)_register[_registerIndex];
	int dataBufLength = b_count - 2;
	char *dataBuf/*[dataBufLength]*/;
	//grap data 
	for(int i=0;i<dataBufLength;i++)
	{
		dataBuf[i] = buf[i + 2];
	}
	
	char data_type = *(char*)registerPointer[0];
	if(data_type == DT_BYTE)//Write single byte
	{
		*(char*)registerPointer[1] = dataBuf[0];
	}else if(data_type == DT_CHRARY)
	{
		void *test = dataBuf;
		registerPointer[1] = test;
	}else if(data_type == DT_INT)
	{
		*(int*)registerPointer[1] = Convert4ByteToInt(dataBuf);
	}else
		return;//Unkown dataType
	
}