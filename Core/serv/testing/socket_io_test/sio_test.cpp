#include "sio_test.h"



void SIO_Test::SimpleTest() {

	h.set_open_listener(std::bind(&connection_listener::on_connected, &l));
    h.set_close_listener(std::bind(&connection_listener::on_close, &l,std::placeholders::_1));
    h.set_fail_listener(std::bind(&connection_listener::on_fail, &l));
    h.connect("http://127.0.0.1:1280");

	_lock.lock();
    if(!connect_finish)
    {
        _cond.wait(_lock);
    }
    _lock.unlock();
	current_socket = h.socket();

		/*BTZ Testing*/
	string test_var = "{\"test\":\"hello world\"}";
	current_socket->emit("test_cpp",test_var);

	current_socket->on("event_node", sio::socket::event_listener_aux([&](string const& name, message::ptr const& data, bool isAck,message::list &ack_resp){
        _lock.lock();
      current_socket->emit("test_cpp_2");
        _lock.unlock();
    }));
	string endCommand;
	while(true)
	{
		getline(cin, endCommand);
		if(endCommand == "-exit")
		{
			break;
		}
	}

}
/*
 * sio_test.cpp
 *
 *  Created on: 14.03.2016
 *      Author: Jonas
 */




