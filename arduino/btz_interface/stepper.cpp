#include "stepper.h"

BtzStepper::BtzStepper(int dir,int stp,int enable)
{
  _dir = dir;
  _stp = stp;
  _enable = enable;
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
