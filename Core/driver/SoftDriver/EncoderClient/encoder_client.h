/*
 * EncoderClient.h
 *
 *  Created on: 13.03.2016
 *      Author: jonas
 *
 *  Connects via i2c to encoder server
 */

#ifndef ENCODER_CLIENT_H_
#define ENCODER_CLIENT_H_

#include "../../driver_common.h"
#include "../../i2c_base_cpp/i2c_base.h"

#define ENC_RUN_MODE 0x0
#define ENC_POSITION 0x1
#define ENC_MAX_POSITION 0x2
#define ENC_MIN_POSITION 0x3


class EncoderClient {
public:
	EncoderClient(i2c_base *baseDriver,btz_i2c_device *device);
	~EncoderClient();

	/*
	 * Sets the maximum positon of the encoder server
	 * the Encoder will not count fourther this position
	 */
	void SetMaxPosition(int value);
	void SetMinPosition(int value);

	/*
	 * Returns _lastPosition
	 */
	int GetPosition();

	/*
	 * Reads new position from device
	 * returns read position
	 */
	int ReadPosition();

private:
	i2c_base *_baseDriver;
	btz_i2c_device *_device;
	int _lastPosition;
};


#endif /* ENCODER_CLIENT_H_ */
