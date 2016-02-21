#include "/home/jonas/git/socket.io-client-cpp/src/sio_client.h"

#include <functional>
#include <iostream>
#include <thread>
#include <mutex>
#include <condition_variable>
#include <string>

using namespace sio;
using namespace std;
std::mutex _lock;


std::condition_variable_any _cond;
bool connect_finish = false;

class connection_listener
{
    sio::client &handler;

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
sio::client h;
connection_listener l(h);

int participants = -1;

socket::ptr current_socket;

int main()
{
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
	return 1;	
}
