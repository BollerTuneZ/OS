/*
 * sio_test_con_listener.cpp
 *
 *  Created on: 15.03.2016
 *      Author: Jonas
 */

#include "sio_test_con_listener.h"


void connection_listener::on_connected()
{

	_lock.lock();
	_cond.notify_all();
	connect_finish = true;
	_lock.unlock();
}
void connection_listener::on_close(client::close_reason const& reason)
{

}

void connection_listener::on_fail()
{

}
