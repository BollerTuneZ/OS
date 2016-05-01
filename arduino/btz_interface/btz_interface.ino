
#include "stepper.h"
#define COM_TIMEOUT 1000
#define BAUDRATE 9600
#define COMMAND_BUF_SIZE 64

#define DIR_PIN 4
#define STP_PIN 5
#define ENABLE_PIN 6

/*GenicCommands*/
#define GC_OK 0x10
#define GC_FAULT 0x20
#define GC_BUFF_OVERFLOW 0x21

char GC_MOVE = 'M';
char GC_DIR = 'D';
char GC_FEEDRATE = 'F';

long comTimer;
int feedrate = 1;
char currentDir = DIR_LEFT;


BtzStepper *_stepper;

void setup()
{
   Serial.begin(BAUDRATE);
   waitForInitialization();
}

/*Wait for host to be connected
* requires 3 byte long message containing 'RUN'
*/
void waitForInitialization()
{
  char initBuf[3];
  char init = 0x0;
  while(init != 0x1)
  {
     int result = getNextBuffer(initBuf,3);
     if(result == 1)
     {
       if(strcmp(initBuf, "RUN") == 0)
        { // Down here where it belongs

          Serial.println(GC_OK);
          init = 0x1;
          continue;
       }else
       {
         Serial.println(GC_FAULT);
         //Serial.println(String(init));
       }
     }
     
  }
  pinMode(DIR_PIN,OUTPUT);
  pinMode(STP_PIN,OUTPUT);
  pinMode(ENABLE_PIN,OUTPUT);
  _stepper = new BtzStepper(DIR_PIN,STP_PIN,ENABLE_PIN);
}

char checkTimer(long *timer,int ms)
{
   if((millis() - *timer) >= ms)
  {
   return 0x1;
  }else
  {
   return 0x0; 
  }
}

void startTimer(long *timer)
{
  *timer = millis();
}

int getNextBuffer(char *buffer,int bufSize)
{
  if(Serial.available() < 1)
  {
   return -1;
  }
  startTimer(&comTimer);
  int iByte = 0;
 while(true)
 {
     if(iByte >= bufSize)
     {
       break;
     }
     if(checkTimer(&comTimer,COM_TIMEOUT) == 0x1)
     {
      return -2; 
     }
     if(Serial.available() > 0)
     {
      buffer[iByte] = Serial.read(); 
      //Serial.println(buffer[iByte]);
      if(buffer[iByte] == 'E')
      {
       return 1; 
      }
      iByte++;
      startTimer(&comTimer);
     }
 }
  /*
 for(int i=0;i<bufSize;i++)
 {
  Serial.println(buffer[i]);
 }*/
 return 1;
}


void ExecuteCommand(char *buffer,int bufSize)
{
  if(buffer[0] == GC_MOVE)
  {
    int i;
    for(i = 1;i<bufSize;i++){
      if(buffer[i] == 'E')
      {
        break;
      }
    }
    String sBuf = String(buffer);
    String subString = sBuf.substring(1,i);
    int steps = subString.toInt();  
    _stepper->Step(currentDir,steps,feedrate);  
    
  }else if(buffer[0] == GC_DIR)
  {
    if(buffer[1] == DIR_LEFT)
    {
      currentDir = DIR_LEFT;
      Serial.println(GC_OK);
    }else if(buffer[1] == DIR_RIGHT)
    {
      currentDir = DIR_RIGHT;
      Serial.println(GC_OK);
    }else
    {
     Serial.println(GC_FAULT); 
    }
  }else if(buffer[0] == GC_FEEDRATE)
  {
    int i;
    for(i = 1;i<bufSize;i++){
      if(buffer[i] == 'E')
      {
        break;
      }
    }
    String sBuf = String(buffer);
    String subString = sBuf.substring(1,i);
    feedrate = subString.toInt();
    Serial.println(GC_OK);
  }else
  {
   Serial.println(GC_FAULT);
  }
}

void GetCommands()
{
  char commandBuf[COMMAND_BUF_SIZE];
  int result;
  while(true)
  {
     result = getNextBuffer( commandBuf,COMMAND_BUF_SIZE);
     if(result != 1)
     {
       continue;
     }
     ExecuteCommand(commandBuf,COMMAND_BUF_SIZE);
  }
}

void loop()
{
  GetCommands();

}
