#include<Wire.h>
#include <btz_i2c.h>
/*
author Jonas Ahlf
I2C Encoder Server
*/
//Slave Address
#define I2C_ADDR 0x12
/*Pins where the Encoder is attachted 
 * In default case both pins are attached to interrupts 2,3
 */
#define ENCODER_PIN_GREEN 2 
#define ENCODER_PIN_WHITE 3
#define DEFAULT_START_POSITION 0
#define DEFAULT_MAX_POSITION 4095
#define DEFAULT_MIN_POSITION -4094

#define ENCODER_OPTIMIZE_INTERRUPTS
#include <Encoder.h>

i2c_reg _register[4];
i2c_reg _regRunMode, _regPosition, _regMaxPosition, _regMinPosition;
char RunMode = 0x2;
int Position = DEFAULT_START_POSITION;
int MaxPosition = DEFAULT_MAX_POSITION;
int MinPosition = DEFAULT_MIN_POSITION;

Btz_i2c i2c_driver = Btz_i2c();

/*I2C Bridge*/
void i2c_onReceive(int n){i2c_driver.OnReceive(n);}
void i2c_onRequest(){i2c_driver.OnRequest();}

Encoder _encoder = Encoder(ENCODER_PIN_GREEN, ENCODER_PIN_WHITE);

void setup() {
  // put your setup code here, to run once:
  GenRegister();
  i2c_driver.Initialize(I2C_ADDR,_register,0x4); 
  Wire.onRequest(i2c_onRequest);
  Wire.onReceive(i2c_onReceive);
}

void loop() {
  // put your main code here, to run repeatedly:
  Position = _encoder.read();
  if(Position > MaxPosition)
  {
    Position = MaxPosition;
  }else if(Position < MinPosition)
  {
    Position = MinPosition;
  }
}

void GenRegister()
{
  _regRunMode.dataType = DT_BYTE;
  _regRunMode.valuePointer = &RunMode;
  
  _regPosition.dataType = DT_BYTE;
  _regPosition.valuePointer = &Position;

  _regMaxPosition.dataType = DT_BYTE;
  _regMaxPosition.valuePointer = &MaxPosition;

  _regMinPosition.dataType = DT_BYTE;
  _regMinPosition.valuePointer = &MinPosition;

  _register[0] = _regRunMode;
  _register[1] = _regPosition;
  _register[2] = _regMaxPosition;
  _register[3] = _regMinPosition;
  
}

