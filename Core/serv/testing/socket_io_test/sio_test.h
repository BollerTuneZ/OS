/*
 * sio_test.h
 *
 *  Created on: 14.03.2016
 *      Author: Jonas
 */

#ifndef SOCKET_IO_TEST_SIO_TEST_H_
#define SOCKET_IO_TEST_SIO_TEST_H_

#ifndef NOT_RASPI
#include "/home/pi/Git/socket.io-client-cpp/src/sio_client.h"
#endif

#include <functional>
#include <iostream>
#include <thread>
#include <mutex>
#include <condition_variable>
#include <string>

using namespace sio;
using namespace std;


class connection_listener
{
    sio::client &handler;
private:
    std::mutex _lock;
    std::condition_variable_any _cond;
    bool connect_finish = false;
public:

    connection_listener(sio::client& h):
    handler(h)
    {
    }


    void on_connected()
    {
        _lock.lock();
        _cond.notify_all();
        connect_finish = true;
        _lock.unlock();
    }
    void on_close(client::close_reason const& reason)
    {
        std::cout<<"sio closed "<<std::endl;
        exit(0);
    }

    void on_fail()
    {
        std::cout<<"sio failed "<<std::endl;
        exit(0);
    }
};

class SIO_Test {
public:
	void SimpleTest();

private:
	sio::client h;
	connection_listener l(h);
	int participants = -1;

	socket::ptr current_socket;
};





#endif /* SOCKET_IO_TEST_SIO_TEST_H_ */
