/*
 * sio_test_con_listener.h
 *
 *  Created on: 14.03.2016
 *      Author: Jonas
 */

#ifndef SOCKET_IO_TEST_SIO_TEST_CON_LISTENER_H_
#define SOCKET_IO_TEST_SIO_TEST_CON_LISTENER_H_

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


    void on_connected();
    void on_close(client::close_reason const& reason);

    void on_fail();
};



#endif /* SOCKET_IO_TEST_SIO_TEST_CON_LISTENER_H_ */
