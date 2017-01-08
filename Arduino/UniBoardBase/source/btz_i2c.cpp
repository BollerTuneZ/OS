#include "btz_i2c.h"


Btz_i2c::Btz_i2c(char i2c_address,i2c_reg* i2c_register,int registerLength)
{
	_registerIndex = 		0;
	_registerPageIndex = 	0;
	_i2c_address = 			i2c_address;
	_registerMode = 		REGISTER_IDLE;
	_register = 			i2c_register;
	_registerLength = 		registerLength;
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
	int err = readRegister();

	if(err != ERROR_OK){
		//TODO Handling
		return;
	}
}

/**
    Receives Data from Master with register which can be written by payload or selected for reading.
	register 0 = index register
	register 1 = index page
    @param Amount of bytes transmitted
*/
void Btz_i2c::receiveEvent(int b_count)
{
	int err;
	//Get the message from master
	err = readBuffer(b_count);

	if(err != ERROR_OK){
		//TODO need some way to log this
		return;
	}
	char registerInfo[2];
	err = parseRegister(_rxBuffer[0], registerInfo);
	if(err != ERROR_OK){
		//TODO need some way to log this
		return;
	}
	if(registerInfo[1] == 0){
		//set register index
		if(_rxBuffer[1] > REGISTER_PAGE_COUNT){
			return;
		}
		_registerPageIndex = (int)_rxBuffer[1];
		return;
	}

	//Set Register Index for Reading
	if(!registerInfo[0]){
		if(registerInfo[1] > REGISTER_COUNT){
			return;
		}
		_registerIndex = registerInfo[1];
	}
	writeRegister(_rxBuffer, b_count, 1);

}

int Btz_i2c::readRegister() {

	i2c_reg reg = _register[_registerPageIndex][_registerIndex];
	if(reg.dataType == DT_BYTE)//Write single byte
	{
		_txBuffer = (char*)reg.valuePointer;
	}else if(reg.dataType == DT_BIT){
		char payload = *(char*)reg.valuePointer;
		if(payload > 0){
			_txBuffer = &boolTrue;
		}else{
			_txBuffer = &boolFalse;
		}
	}else if(reg.dataType == DT_CHRARY)
	{
		_txBuffer = (char*)reg.valuePointer;
	}else if(reg.dataType == DT_INT)
	{
		char *intVal = _util.ConvertIntTo2ByteChar((int*)reg.valuePointer);
		_txBuffer = intVal;
	}else if(reg.dataType == DT_LONG)
	{
		char *intVal = _util.ConvertLongTo4ByteChar((long*)reg.valuePointer);
		_txBuffer = intVal;
	}else if(reg.dataType == DT_FLOAT)
	{
		_convF.f = (float*)reg.valuePointer;
		_txBuffer = _convF.b;
	}else if(reg.dataType == DT_DOUBLE)
	{
		_convD.d = (double*)reg.valuePointer;
		_txBuffer = _convD.b;
	}else{
		_txBuffer = (char*)readError;
		Wire.write(_txBuffer,9);
		return ERROR_TYPE;
	}
	Wire.write(_txBuffer, reg.size);
	return ERROR_OK;
}

int Btz_i2c::writeRegister(char* request,char size, char offset) {

	i2c_reg reg = _register[_registerPageIndex][_registerIndex];

	if(reg.writeProtect == 1)
	{
		return ERROR_I2C_ACCESS_DENIED;
	}

	char dataBufLength = request[offset];
	if(dataBufLength != reg.size){
		return ERROR_I2C_BUFFER_OVERFLOW;
	}

	char data_type = reg.dataType;
	char dataBuf[dataBufLength];

	//grap data

	for(int i=0;i<dataBufLength;i++)
	{
		dataBuf[i] = request[i + offset];
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
		*(int*)reg.valuePointer = _util.Convert2BytesToInt(dataBuf);
	}else if(data_type == DT_LONG)
	{
		*(long*)reg.valuePointer = _util.Convert4BytesToLong(dataBuf);
	}else if(data_type == DT_FLOAT)
	{
		_convF.b = dataBuf;
		*(float*)reg.valuePointer = _convF.f;
	}else if(data_type == DT_DOUBLE)
	{
		_convD.b = dataBuf;
		*(double*)reg.valuePointer = _convD.d;
	}else{
		return ERROR_TYPE;
	}
	return ERROR_OK;


}

int Btz_i2c::parseRegister(char value, char* out) {

	if(value){
		return ERROR_I2C_REG_NULL;
	}

	char rw 	= _util.GetBitB(&value, 7);
	char reg = value;
	_util.SetBitB(&reg, 7, 0);
	out[0] = rw;
	out[1] = reg;
	return ERROR_OK;
}

int Btz_i2c::readBuffer(int length) {
	int counter = 0;
	while(Wire.available()){
		char readByte = Wire.read();
		if(counter > BTZ_I2C_RX_BUFFER_SIZE){
			return ERROR_I2C_BUFFER_OVERFLOW;
		}
		if(counter < length){
			_rxBuffer[counter] = readByte;
		}
		counter++;
	}
	if(counter > length){
		return ERROR_I2C_BUFFER_OVERFLOW;
	}
	return ERROR_OK;
}
