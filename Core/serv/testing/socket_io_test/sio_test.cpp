/*
 * sio_test.cpp
 *
 *  Created on: 14.03.2016
 *      Author: Jonas
 */
#include "sio_test.h"
#include <stdio.h>
#include <iostream>
void OnMessage(sio::event *event)
{

}

void SIO_Test::SimpleTest() {

	h.connect("http://127.0.0.1:3000");

	usleep(500*1000);
	string test_var = "{\"val\":\"hallo welt!\"}";
	h.socket()->on("response_node", sio::socket::event_listener_aux([&](string const& name, message::ptr const& data, bool isAck,message::list &ack_resp){
		string xo = "{\"val\":\"Ficken!\"}";
	string test = data->get_map()["test"]->get_string();
	printf("Triggered %s\n",test.c_str());
		h.socket()->emit("hello_2",string_message::create(xo), [&](message::list const& msg){});
    }));
	for(int i=0;i<100;i++)
	{
		h.socket()->emit("hello",string_message::create(test_var), [&](message::list const& msg){});
		usleep(100*1000);
	}

	while(true){}
}





