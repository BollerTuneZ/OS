/*
 * sio_test.h
 *
 *  Created on: 14.03.2016
 *      Author: Jonas
 */

#ifndef SOCKET_IO_TEST_SIO_TEST_H_
#define SOCKET_IO_TEST_SIO_TEST_H_
#include "/home/pi/Git/socket.io-client-cpp/src/sio_client.h"

#include <functional>
#include <iostream>
#include <thread>
#include <mutex>
#include <condition_variable>
#include <string>
#include <unistd.h>

using namespace sio;
using namespace std;

class SIO_Test {
public:
	void SimpleTest();

private:
	sio::client h;
};





#endif /* SOCKET_IO_TEST_SIO_TEST_H_ */
