#include<Wire.h>
#include <btz_i2c.h>

 
Btz_i2c i2c_driver = Btz_i2c();
i2c_reg _register[2];
i2c_reg _reg_int, _reg_chrarry;
long lastLog = 0;
long lastLogLength = 0;
int int_reg_val = 999;
char chrarry_reg_val[6] = {0x1,0x2,0x3,0x4,0x5,0x6};
/*I2C Bridge*/
void i2c_onReceive(int n){i2c_driver.OnReceive(n);}
void i2c_onRequest(){i2c_driver.OnRequest();}

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  Serial.println("setup register...");
  GenRegister();
  Serial.println("init i2c_driver");
  //Init driver with slave address 0x12, our pointers and the length of these register_array 
  i2c_driver.Initialize(0x12,_register,0x2); 
  //Setup bridge
  Wire.onRequest(i2c_onRequest);
  Wire.onReceive(i2c_onReceive);
  Serial.println("Driver Initialized");
  
}

void loop() {
  // put your main code here, to run repeatedly:
  long now = millis();
  if((now -  lastLog) >= 200)
  {
    if(i2c_driver.log.length() != lastLogLength)
    {
      Serial.println(i2c_driver.log);
      lastLogLength = i2c_driver.log.length();
    }
    lastLog = now;
  }
}

void GenRegister()
{
  _reg_int.dataType = DT_INT;
  _reg_int.valuePointer = &int_reg_val;

  _reg_chrarry.dataType = DT_CHRARY;
  _reg_chrarry.valuePointer = chrarry_reg_val;
  
  _register[0] = _reg_int;
  _register[1] = _reg_chrarry;
  
}

