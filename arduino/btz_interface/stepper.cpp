#include "stepper.h"

BtzStepper::BtzStepper(int dir,int stp,int enable, int intPin)
{
  _dir = dir;
  _stp = stp;
  _enable = enable;
  _intPin = intPin;
}

void BtzStepper::Step(char dir,long steps,long feedrate)
{
  int delayU = calculateFeedrate(feedrate);
  if(delayU <= 0)
  {
    delayU = 1;
  }
  if(dir == DIR_LEFT)
  {
    digitalWrite(_dir,HIGH);
  }else if(dir == DIR_RIGHT)
  {
    digitalWrite(_dir,LOW);
  }else
  {
   return; 
  }
  for(int i=0;i<steps;i++)
  {
    if(digitalRead(_intPin) == HIGH)
    {
      return;
    }
   digitalWrite(_stp,HIGH);
   delayMicroseconds(delayU);
   digitalWrite(_stp,LOW);
   delayMicroseconds(delayU);
  }
}

int BtzStepper::calculateFeedrate(long feedrate)
{
  return (int)(1000000 / feedrate);
}
