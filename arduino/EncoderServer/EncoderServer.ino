#include <ArduinoJson.h>


/*
 Name:		EncoderServer.ino
 Created:	7/28/2015 12:23:15 PM
 Author:	Developer
*/


#include <EthernetUdp.h>
#include <EthernetServer.h>
#include <EthernetClient.h>
#include <Ethernet.h>
#include <Dns.h>
#include <Dhcp.h>
#include <SPI.h>
#define ENCODER_OPTIMIZE_INTERRUPTS
#include <Encoder.h>
#include "Board.h"
#include "NetworkConfig.h"

Encoder _encoderSteering = Encoder(PIN_ENCODER_STEERING_GREEN, PIN_ENCODER_STEERING_WHITE);
Encoder _encoderMotor = Encoder(PIN_ENCODER_MOTOR_GREEN, PIN_ENCODER_MOTOR_WHITE);

EthernetServer _server(LOCAL_PORT);
EthernetClient _client;
byte mac[] = {
	0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED };



long ltMotor = 0;
long ltSteering = 0;


void setup() {
	Serial.begin(9600);
	Ethernet.begin(mac, LOCAL_IP, GATEWAY, SUBNET);
	delay(1000);
	_server.begin();
	Serial.println("Initialized");

}

void loop() {
	EthernetClient client = _server.available();

	if (client) {

		Serial.println("Client connected");
    _client = client;
    client.flush();
	}

	GetCommands(&_client);
	SendEncoderPositions();
}

void GetCommands(EthernetClient *client)
{
	char buffer[200];
	char counter = 0;
	while (client->available() > 0)
	{
		
		buffer[counter] = client->read();
    #ifdef DEBUG
		Serial.print(buffer[counter]);
    #endif
		if (counter == 199)
		{
			break;
		}
		counter++;
	}
	if (counter == 0)
	{
		return;
	}
 #ifdef DEBUG
	Serial.println("Get Command");
	Serial.println(buffer);
 #endif
	StaticJsonBuffer<200> jsonCommmandBuffer;
	JsonObject& root = jsonCommmandBuffer.parseObject(buffer);

	if (!root.success()) {
		Serial.println("Error Json");
		return;
	}
	Serial.println("Object parsed");

	const char* command = root["Command"].asString();
	String str = String(command);
	if (str == COMMAND_IDENTITY)
	{
		SendIdentity(client);
	}
	else if (str == COMMAND_SET_ENCODER)
	{
		CommandSetEncoder(root);
	}
	else
	{
		Serial.println("command was not expected:" + str);
	}
}

/*
Encoder set object:
{"ECMODE":"CVALUE_EC_MOTOR|CVALUE_EC_STEERING","Value":VALUE}
*/
void CommandSetEncoder(JsonObject& object)
{
	Serial.println("Processing Set command");
	int value = object["Value"];
	const char* tempMode = object["ECMODE"];
	String ecMode = String(tempMode);

	if (ecMode == CVALUE_EC_MOTOR)
	{
  Serial.println("Set Motor Encoder" + String(value));
		_encoderMotor.write(value);
	}
	else if (ecMode == CVALUE_EC_STEERING)
	{
  Serial.println("Set Steering Encoder" + String(value));
		_encoderSteering.write(value);
	}
	else
	{
		Serial.println("Encoder Mode unclear:" + ecMode);
	}
}

const char* jsonStart = "{\"motor\":";
const char* jsonMiddle = ",\"steering\":";
const char* jsonTail = "}";


void SendEncoderPositions()
{

	long currentMotor = _encoderMotor.read();
	long currentSteering = _encoderSteering.read();

	if (currentMotor == ltMotor && currentSteering == ltSteering)
	{
		return;
	}
	ltMotor = currentMotor;
	ltSteering = currentSteering;

  String buffer = "";
  buffer = jsonStart + String(currentMotor) + jsonMiddle + String(currentSteering) + jsonTail;

	_client.print(buffer);
}

void SendIdentity(EthernetClient *client)
{
	Serial.println("Send Identity");
	StaticJsonBuffer<100> jsonBufferIdentitySend;
	JsonObject& data = jsonBufferIdentitySend.createObject();
	data["Name"] = IDENTITY;
	char dataBuffer[100];
	data.printTo(dataBuffer, 100);
	client->print(dataBuffer);
}
