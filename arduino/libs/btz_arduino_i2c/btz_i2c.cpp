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
#ifdef DEBUG
	log += "Index:" + String(_registerIndex,HEX) + "\n";
#endif
	if(reg.dataType == DT_BYTE)//Write single byte
	{
		char payload = *(char*)reg.valuePointer;
		Wire.write(payload);
	}else if(reg.dataType == DT_CHRARY)
	{
#ifdef DEBUG
		log += "DataType Char array\n";
#endif
		int size = strlen((char*)reg.valuePointer);
#ifdef DEBUG
		log += "Size:" + String(size);
#endif
		Wire.write((char*)reg.valuePointer,size);
	}else if(reg.dataType == DT_INT)
	{
#ifdef DEBUG
		log += "DataType Int\n";
#endif
		char intVal[2];
		intVal[0] = *(int*)reg.valuePointer;
		intVal[1] = *(int*)reg.valuePointer >> 8; 
		
		Wire.write(intVal,2);
	}else
#ifdef DEBUG
		log += "DT Unkown:" + String(reg.dataType,HEX) + "\n";
#endif
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
#ifdef DEBUG
			log += "bcount to big\n";
#endif
			//TODO err handling
			return;
		}
#ifdef DEBUG
		log += "Read:" + String(readByte,HEX) + "	";
#endif
		buf[counter] = readByte;
		counter++;
	}
#ifdef DEBUG
	log += "\n";
	log += "Received message register:"+ String(buf[0],HEX) + " r/w byte:" + String(buf[1],HEX) + "\n";
#endif
	//assume register at index 0, validate 
	//set register
	_registerIndex = buf[0];
	if(buf[1] == REGISTER_READ)
	{
#ifdef DEBUG
		log += "reg set\n";
#endif
		_registerMode = REGISTER_READ;
		
		//Nothing to do..
		return;
	}
	else if(buf[1] == REGISTER_WRITE)
	{
#ifdef DEBUG
		log +="reg write\n";
#endif
		_registerMode = REGISTER_WRITE;
	}
	else
	{
#ifdef DEBUG
		log +="Command Unkown\n";
#endif
		return;
	}
	
	i2c_reg reg = _register[_registerIndex];
	char data_type = reg.dataType;
	int dataBufLength = b_count - 2;
#ifdef DEBUG
	log += "dataBufLength:" + String(sizeof(buf)) + "\n";
#endif
	char dataBuf[dataBufLength];
	
	//grap data 
	
	for(int i=0;i<dataBufLength;i++)
	{
		dataBuf[i] = buf[i + 2];
#ifdef DEBUG
		log += String(dataBuf[i],HEX) + ";";
#endif
	}
#ifdef DEBUG
	log +="writing register\n";
#endif
	
	if(reg.writeProtect == 1)
	{
#ifdef DEBUG
		log +="protected\n";
#endif
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
#ifdef DEBUG
		log +="writing chararry\n";
#endif
	}else if(data_type == DT_INT)
	{
		*(int*)reg.valuePointer = Convert4ByteToInt(dataBuf);
	}else
		return;//Unkown dataType
	
}