#include "defconfig.h"

void setup() {
  // put your setup code here, to run once:
  if(DEBUG)
  {
    Serial.begin(UART_BAUDRATE);
    Serial.println("i2c_rotary_encoder server running in DEBUG mode");
  }
}

void loop() {
  // put your main code here, to run repeatedly:

}


