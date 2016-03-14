#include "encoder_client.h"
#include <stdio.h>
EncoderClient::EncoderClient(i2c_base* baseDriver,
		btz_i2c_device* device) {
	_baseDriver = baseDriver;
	_device = device;
	_lastPosition =0;
}

EncoderClient::~EncoderClient() {
}

void EncoderClient::SetMaxPosition(int value) {
	char payload[2] =
	{
			value,
			(value >>8)
	};

	if(_baseDriver->WriteRegister(_device->addr,ENC_MAX_POSITION,payload,2)
			!= 1)
	{
		//TODO ErrorHandler
	}
}

void EncoderClient::SetMinPosition(int value) {
	char payload[2] =
	{
			value,
			(value >>8)
	};

	if(_baseDriver->WriteRegister(_device->addr,ENC_MIN_POSITION,payload,2)
			!= 1)
	{
		//TODO ErrorHandler
	}
}

int EncoderClient::GetPosition() {
	return _lastPosition;
}

int EncoderClient::ReadPosition() {
	char rawVal[2];
	printf("Device:%i, reg:%i\n",_device->addr,ENC_POSITION);
	if(_baseDriver->ReadRegister(_device->addr,ENC_POSITION,rawVal,2) != 1)
	{
		//TODO Error Handling
		return -9999;
	}
	_lastPosition = (((int)rawVal[0]) << 8) | (int)rawVal[1];
	//_lastPosition = (rawVal[0] | rawVal[1] << 8);
	//(((int)char_1) << 8) | (int)char_2;
	return _lastPosition;
}
