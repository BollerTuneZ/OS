#include<Wire.h>
#include <btz_i2c.h>

int led1 = 5,led2 = 6;
int counter = 0;
long lastTimeCounterTriggered = 0;
long lastTimeLogChanged =0;
long lastLogLength =0;
char mode = 'n';
char ledStates[2];
Btz_i2c i2c_driver = Btz_i2c();
i2c_reg _register[3];
i2c_reg _reg1, _reg2, _reg3;
/*I2C Bridge*/
void i2c_onReceive(int n){i2c_driver.OnReceive(n);}
void i2c_onRequest(){i2c_driver.OnRequest();}

void setup() {
  // put your setup code here, to run once:
  Serial.begin(250000);
  Serial.println("setup register...");
  GenRegister();
  Serial.println("init i2c_driver");
  //Init driver with slave address 0x12, our pointers and the length of these register_array 
  i2c_driver.Initialize(0x12,_register,0x3); 
  //Setup bridge
  Wire.onRequest(i2c_onRequest);
  Wire.onReceive(i2c_onReceive);
  Serial.println("Driver Initialized");
  ledStates[0] = 0x00;
  ledStates[1] = 0x00;
  
}

void loop() {
  // put your main code here, to run repeatedly:
  long now = millis();
  if((now -  lastTimeLogChanged) >= 150)
  {
    counter++;
    if(i2c_driver.log.length() != lastLogLength)
    {
      String tempvar = i2c_driver.log;
      i2c_driver.log = "";
      Serial.println(tempvar);
      lastLogLength = tempvar.length();
      String text = "Led1:" + String(ledStates[0],HEX) + " Led2:" + String(ledStates[1],HEX);
      Serial.println(text);
    }
    lastTimeLogChanged = now;
  }
  analogWrite(led1,ledStates[0]);
  analogWrite(led2,ledStates[1]);
  
}
void **testArray;
void GenRegister()
{
  _reg1.dataType = DT_INT;
  _reg1.valuePointer = &counter;

  _reg2.dataType = DT_BYTE;
  _reg2.valuePointer = &mode;
  
  _reg3.dataType = DT_CHRARY;
  _reg3.valuePointer = ledStates;

  _register[0] = _reg1;
  _register[1] = _reg2;
  _register[2] = _reg3;
}

