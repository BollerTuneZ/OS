#include "sio_test.h"



void SIO_Test::SimpleTest() {

	h.connect("http://127.0.0.1:3000");

	usleep(500*1000);

	for(int i=0;i<100;i++)
	{
		h.socket()->emit("hello","{\"val\":\"hallo welt!\"}");
		usleep(100*1000);
	}

}
/*
 * sio_test.cpp
 *
 *  Created on: 14.03.2016
 *      Author: Jonas
 */




