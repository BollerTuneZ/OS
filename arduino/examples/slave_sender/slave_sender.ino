// Wire Slave Sender
// by Nicholas Zambetti <http://www.zambetti.com>

// Demonstrates use of the Wire library
// Sends data as an I2C/TWI slave device
// Refer to the "Wire Master Reader" example for use with this

// Created 29 March 2006

// This example code is in the public domain.


#include <Wire.h>

void setup()
{
  Serial.begin(9600);
  Wire.begin(0x12);                // join i2c bus with address #8
  Wire.onRequest(requestEvent); // register event
  Wire.onReceive(receiveEvent);
  
}

void loop()
{
  delay(100);
}

void receiveEvent(int value)
{
  Serial.print("onReceive Event triggered:");
  Serial.println(value);
  while(Wire.available())
  {
    char c = Wire.read();
    Serial.println(c);
  }
}

// function that executes whenever data is requested by master
// this function is registered as an event, see setup()
void requestEvent()
{
  Serial.println("Bytes requested");
  Wire.write("hello "); // respond with message of 6 bytes
  // as expected by master
}
