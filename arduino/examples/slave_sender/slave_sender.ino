// Wire Slave Sender
// by Nicholas Zambetti <http://www.zambetti.com>

// Demonstrates use of the Wire library
// Sends data as an I2C/TWI slave device
// Refer to the "Wire Master Reader" example for use with this

// Created 29 March 2006

// This example code is in the public domain.


#include <Wire.h>
#include <limits.h>
char val1,val2;
char *arry;
#define test_define 10
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


  void **testArray;
  int *someInt = new int(10000);
  char *someData = "Was geht denn ab";
  void **registerStruct;
  registerStruct[0] = new char('H');
  registerStruct[1] = new int(test_define);
  
  
  Serial.println(someData);
  testArray[0] = someInt;
  testArray[1] = someData;
  testArray[2] = registerStruct;

  void **arryPointer =  (void**)testArray[2];
  char chrValue = *(char*)arryPointer[0];
  Serial.println(chrValue);

  void *testPointer = testArray[1];
  Serial.println((char*)testPointer);
  int* testInt = (int*)testArray[0];
  Serial.println(*testInt);
  *someInt = 2000;
  Serial.println(*testInt);
  Serial.println((char*)testArray[1]);
  
}

void loop()
{
  delay(100);
}

void receiveEvent(int value)
{
  Serial.print("Register:");
  Serial.println(value);
  Serial.print("Char value:");
  Serial.println(((char)value));
  char values[2];
  int i=0;
  while(Wire.available())
  {
    char c = Wire.read();
    if(i < 2)
    {
      Serial.print("x");
      values[i] = c;
      i++;
    }
    Serial.println(c, HEX);
  }
  int sum2 =  (values[0] * 256) + values[1];
  int sum = values[0] + (values[1] >> (CHAR_BIT - 2));
  Serial.print("Sum1:");
  Serial.println(sum);
  Serial.print("Sum2:");
  Serial.println(sum2);
  
  arry[0]++;
  arry[1]--;
  
}

// function that executes whenever data is requested by master
// this function is registered as an event, see setup()
void requestEvent()
{
  
  Serial.println("Bytes requested");
  arry[0] = 0x05;
  arry[1] = 0x15;
  
  Wire.write(arry,2); // respond with message of 6 bytes
  // as expected by master
}

char c2h(char c)
{  return "0123456789ABCDEF"[0x0F & (unsigned char)c];
}
