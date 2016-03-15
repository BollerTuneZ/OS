#include "sio_test.h"

void OnMessage(sio::event *event)
{

}

void SIO_Test::SimpleTest() {

	h.connect("http://127.0.0.1:3000");

	usleep(500*1000);
	string test_var = "{\"val\":\"hallo welt!\"}";
	for(int i=0;i<100;i++)
	{
		h.socket()->emit("hello",string_message::create(test_var), [&](message::list const& msg){});
		usleep(100*1000);
	}
	h.socket()->on("response_node", sio::socket::event_listener_aux([&](string const& name, message::ptr const& data, bool isAck,message::list &ack_resp){
		string xo = "{\"val\":\"Ficken!\"}";
		h.socket()->emit("hello",string_message::create(test_var), [&](message::list const& msg){});
    }));
	while(1){}
}
/*
 * sio_test.cpp
 *
 *  Created on: 14.03.2016
 *      Author: Jonas
 */




