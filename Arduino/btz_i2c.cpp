#include "btz_i2c.h"

extern "C"
{
	#include "btz_util.h"
}


Btz_i2c::Btz_i2c(char i2c_address,i2c_reg* i2c_register,int registerLength)
{
	_registerIndex = 0;
	_i2c_address = i2c_address;
	_registerMode = REGISTER_IDLE;
	_register = i2c_register;
	_registerLength = registerLength;
	Wire.begin(_i2c_address);
}

Btz_i2c::~Btz_i2c()
{
	
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
	Wire.write(readRegister());
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
			//TODO err handling
			return;
		}
		buf[counter] = readByte;
		counter++;
	}
	//assume register at index 0, validate 
	//set register
	_registerIndex = buf[0];
	if(buf[1] == REGISTER_READ)
	{
		_registerMode = REGISTER_READ;
		//Nothing to do..
		return;
	}
	else if(buf[1] == REGISTER_WRITE)
	{
		_registerMode = REGISTER_WRITE;
	}
	else
	{
		return;
	}
	writeRegister(buf, b_count);
}

char* Btz_i2c::readRegister() {

	i2c_reg reg = _register[_registerIndex];
	if(reg.dataType == DT_BYTE)//Write single byte
	{
		return (char*)reg.valuePointer;
	}else if(reg.dataType == DT_BIT){
		char payload = *(char*)reg.valuePointer;
		if(payload > 0){
			return &boolTrue;
		}else{
			return &boolFalse;
		}
	}else if(reg.dataType == DT_CHRARY)
	{
		return (char*)reg.valuePointer;
	}else if(reg.dataType == DT_INT)
	{
		char *intVal = ConvertIntTo2ByteChar((int*)reg.valuePointer);
		return intVal;
	}else if(reg.dataType == DT_LONG)
	{
		char *intVal = ConvertLongTo4ByteChar((long*)reg.valuePointer);
		return intVal;
	}else{
		return (char*)readError;
	}
}

void Btz_i2c::writeRegister(char* request,int size) {

	i2c_reg reg = _register[_registerIndex];

	if(reg.writeProtect == 1)
	{
		//TODO Should return error
		return;
	}

	char data_type = reg.dataType;
	int dataBufLength = size - 2;
	char dataBuf[dataBufLength];

	//grap data

	for(int i=0;i<dataBufLength;i++)
	{
		dataBuf[i] = request[i + 2];
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
	}else if(data_type == DT_INT)
	{
		*(int*)reg.valuePointer = Convert2BytesToInt(dataBuf);
	}else if(data_type == DT_LONG)
	{
		*(long*)reg.valuePointer = Convert4BytesToLong(dataBuf);
	}else
		return;//Unkown dataType

}
