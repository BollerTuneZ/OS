#include<Wire.h>
#include <btz_i2c.h>

 
int counter;
long lastTimeCounterTriggered = 0;
long lastTimeLogChanged =0;
char mode = 'n';
Btz_i2c i2c_driver = Btz_i2c();
void **i2c_register;
void **register0;
void **register1;
long lastLogLength =0;
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
    lastTimeCounterTriggered = now;
  }
  if((now -  lastTimeLogChanged) >= 500)
  {
    
    if(i2c_driver.log.length() != lastLogLength)
    {
      Serial.println(i2c_driver.log);
      lastLogLength = i2c_driver.log.length();
    }
    lastTimeLogChanged = now;
  }
}
void **testArray;
void GenRegister()
{
    //First Register counter which will be counted in loop
    register0[0] = new char('h');  //registervalue is typeof integer
    
    register0[1] = &counter; //pointer to counter;
    
    //Second register
    register1[0] = new char(DT_BYTE); // this time type byte
    register1[1] = &mode;

    //Add to array
    i2c_register[0] = register0;
    i2c_register[1] = register1;
    //Printing register setup
    Serial.println(sizeof(i2c_register[0]));
    void **pointer = (void**)i2c_register[0];
    char chrValue = *(char*)pointer[0];
    Serial.println(chrValue);

  
  int *someInt = new int(10000);
  char *someData = "Was geht denn ab";
  void **registerStruct;
  registerStruct[0] = new char('H');
  registerStruct[1] = new int(1212);
  
  
  Serial.println(someData);
  testArray[0] = someInt;
  testArray[1] = someData;
  testArray[2] = registerStruct;

  void **arryPointer =  (void**)testArray[2];
  char chrValue2 = *(char*)arryPointer[0];
  Serial.println(chrValue2);
    
  /*
    for(int i=0;i<2;i++)
    {
        void *registerPointer = i2c_register[0];
        char *data_type = (char*)registerPointer[0];
      char data_type2 = *(char*)registerPointer[0];
      if(data_type2 > 0)
      {
        Serial.println("YO");
      }
        Serial.println(sizeof(data_type),DEC);
        Serial.println(data_type2);
        
    }*/
}

