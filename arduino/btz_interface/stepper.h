#ifndef STEPPER_H
#define STEPPER_H

#include "Arduino.h"

#define DIR_LEFT 'L'
#define DIR_RIGHT 'R'

class BtzStepper
{
  
  public:
    BtzStepper(int dir,int stp,int enable,int intPin);
    
    void Step(char dir,int steps,int feedrate);
    
  private:
  
    int _dir,_stp,_enable,_intPin;
    int calculateFeedrate(int feedrate);  
};
#endif
