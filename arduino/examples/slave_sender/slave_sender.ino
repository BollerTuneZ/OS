// Wire Slave Sender
// by Nicholas Zambetti <http://www.zambetti.com>

// Demonstrates use of the Wire library
// Sends data as an I2C/TWI slave device
// Refer to the "Wire Master Reader" example for use with this

// Created 29 March 2006

// This example code is in the public domain.


#include <Wire.h>

char val1,val2;
char *arry;
void setup()
{
  Serial.begin(9600);
  Wire.begin(0x12);                // join i2c bus with address #8
  Wire.onRequest(requestEvent); // register event
  Wire.onReceive(receiveEvent);
  val1 = 0;
  val2 = 255;
  arry = new char[2];
  arry[0] = val1;
  arry[1] = val2;
  
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
    Serial.println((unsigned char)c);
  }
  arry[0]++;
  arry[1]--;
  
}

// function that executes whenever data is requested by master
// this function is registered as an event, see setup()
void requestEvent()
{
  
  Serial.println("Bytes requested");
  
  Wire.write(arry,2); // respond with message of 6 bytes
  // as expected by master
}

char c2h(char c)
{  return "0123456789ABCDEF"[0x0F & (unsigned char)c];
}
