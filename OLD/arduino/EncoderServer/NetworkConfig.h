#ifndef NETWORKCONFIG_h
#define NETWORKCONFIG_h

#include "Ethernet.h"

#define LOCAL_IP IPAddress(192,168,2,170)

#define LOCAL_PORT 1010

#define GATEWAY IPAddress(192, 168, 2, 1)
#define SUBNET IPAddress(255, 255, 255, 0)

#define IDENTITY "STEERING"

#define COMMAND_IDENTITY "SHOW_IDENTITY"
#define COMMAND_SET_ENCODER "SET_ENCODER"
#define CVALUE_EC_STEERING "ECS"
#define CVALUE_EC_MOTOR "ECM"

#endif
