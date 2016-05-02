#include "stepper.h"

BtzStepper::BtzStepper(int dir,int stp,int enable,char *eStop)
{
  _dir = dir;
  _stp = stp;
  _enable = enable;
  _eStop = eStop;
}

void BtzStepper::Step(char dir,int steps,int feedrate)
{
  int delayU = calculateFeedrate(feedrate);
  
  if(dir == DIR_LEFT)
  {
    digitalWrite(_dir,LOW);
  }else if(dir == DIR_RIGHT)
  {
    digitalWrite(_dir,HIGH);
  }else
  {
   return; 
  }
  for(int i=0;i<steps;i++)
  {
    if(*_eStop == HIGH)
    {
      //Exit here emergency stop has been triggered
      return;
    }
   digitalWrite(_stp,HIGH);
   delayMicroseconds(delayU);
   digitalWrite(_stp,LOW);
   delayMicroseconds(delayU);
  }
}

int BtzStepper::calculateFeedrate(int feedrate)
{
  return (1000000 / feedrate);
  
}
