#include<Wire.h>
#include <btz_i2c.h>

 
int counter;
long lastTimeCounterTriggered = 0;
char mode = 'n';
Btz_i2c i2c_driver = Btz_i2c();
void **i2c_register;
void **register0;
void **register1;

/*I2C Bridge*/
void i2c_onReceive(int n){Serial.println("OnReceive");i2c_driver.OnReceive(n);}
void i2c_onRequest(){Serial.println("OnRequest");i2c_driver.OnRequest();}

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  Serial.println("setup register...");
  GenRegister();
  Serial.println("init i2c_driver");
  //Init driver with slave address 0x12, our pointers and the length of these register_array 
  i2c_driver.Initialize(0x12,i2c_register,0x2); 
  //Setup bridge
  Wire.onRequest(i2c_onRequest);
  Wire.onReceive(i2c_onReceive);
  Serial.println("Driver Initialized");
  
}

void loop() {
  // put your main code here, to run repeatedly:
  long now = millis();
  if((now - lastTimeCounterTriggered) >= 200)
  {
    counter++;
  }
}

void GenRegister()
{
    //First Register counter which will be counted in loop
    register0[0] = new char(DT_INT); //registervalue is typeof integer
    register0[1] = &counter; //pointer to counter;
    
    //Second register
    register1[0] = new char(DT_BYTE); // this time type byte
    register1[1] = &mode;

    //Add to array
    i2c_register[0] = register0;
    i2c_register[1] = register1;
}

