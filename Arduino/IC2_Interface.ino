#include "Arduino.h"
#include "Wire.h"
#include "btz_i2c.h"
//The setup function is called once at startup of the sketch

char i2c_address = 0x18;

long counter = 0;
int connections = 0;
i2c_reg registers[2];
long lastCounterTrigger =0;
const int TriggerTime = 10;

Btz_i2c *bus;

void setup()
{
	Serial.begin(9600);
	registers[0].dataType = DT_LONG;
	registers[0].valuePointer = &counter;
	registers[0].writeProtect = 0;

	registers[1].dataType = DT_INT;
	registers[1].valuePointer = &connections;
	registers[1].writeProtect = 0;
	bus = new Btz_i2c(i2c_address, registers, 2);
	Wire.onReceive( onReceive);
	Wire.onRequest(onRequest);
}

void onRequest(){
	bus->OnRequest();
}
void onReceive(int count){
	bus->OnReceive(count);
}


// The loop function is called in an endless loop
void loop()
{

	long current = millis();
	if((current- lastCounterTrigger) > TriggerTime){
		lastCounterTrigger = current;
		counter++;
	}

	if(Serial.available() > 1){
		while(Serial.available()){
			Serial.read();
		}
		Serial.println();
		connections++;
		Serial.print("Counter:");Serial.print(counter);
		Serial.println("");
		Serial.print("Connections:");Serial.print(connections);
		Serial.println("");
	}
}
