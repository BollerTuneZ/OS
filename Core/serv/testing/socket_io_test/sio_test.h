/*
 * sio_test.h
 *
 *  Created on: 14.03.2016
 *      Author: Jonas
 */

#ifndef SOCKET_IO_TEST_SIO_TEST_H_
#define SOCKET_IO_TEST_SIO_TEST_H_

#include "sio_test_con_listener.h"


class SIO_Test {
public:
	void SimpleTest();

private:
	connection_listener *listener;
};





#endif /* SOCKET_IO_TEST_SIO_TEST_H_ */
