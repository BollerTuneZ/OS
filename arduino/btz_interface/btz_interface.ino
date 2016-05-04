
#include "stepper.h"
#define COM_TIMEOUT 1000
#define BAUDRATE 9600
#define COMMAND_BUF_SIZE 64

#define DIR_PIN 4
#define STP_PIN 5
#define ENABLE_PIN 6
#define INT_PIN 2

/*POWER*/
#define FREQ_PIN 9
#define DIR_R_PIN 10
#define DIR_F_PIN 11

/*GenicCommands*/
#define GC_OK 0x10
#define GC_FAULT 0x20
#define GC_BUFF_OVERFLOW 0x21
#define GC_POWER_SET 0x88

const char GC_MOVE = 'M';
const char GC_DIR = 'D';
const char GC_FEEDRATE = 'F';
const char GC_READY = 'R';
const char GC_BUSY = 'B';
const char GC_E_STOP = 'S';
const char GC_POWER = 'P';


long comTimer;
int feedrate = 50;
char currentDir = DIR_LEFT;

//Stop byte, if it gets HIGH the stepping task get canceled


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
  /*#define FREQ_PIN 9
#define DIR_R_PIN 10
#define DIR_F_PIN 11*/
  pinMode(FREQ_PIN,OUTPUT);
  pinMode(DIR_R_PIN,OUTPUT);
  pinMode(DIR_F_PIN,OUTPUT);

  pinMode(DIR_PIN,OUTPUT);
  pinMode(STP_PIN,OUTPUT);
  pinMode(ENABLE_PIN,OUTPUT);
  pinMode(INT_PIN,INPUT);
  _stepper = new BtzStepper(DIR_PIN,STP_PIN,ENABLE_PIN,INT_PIN);
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


int conv2Int(char *buffer,int bufSize,int start,char stopByte,int *outBuf,int *outPos)
{
  String strBuf = "";
  bool found = false;
  for(int i=start;i<bufSize;i++)
  {
    if(buffer[i] == stopByte)
    {
      found = true;
      *outPos = i;
      break;
    }else
    {
      strBuf += buffer[i];
    }
  }
  if(!found){return -1;}
  *outBuf = strBuf.toInt();
  return 1;
}

void parseMoveCommand(char *buffer,int bufSize)
{
  //We expect GC_move at 0
  if(buffer[0] != GC_MOVE)
  {
    Serial.println(GC_FAULT);
    return;
  }
  int currentPos = 0;
  int stepsH =0;
  int result = conv2Int(buffer,bufSize,1,GC_DIR,&stepsH,&currentPos);
  if(result == -1){Serial.println(GC_FAULT);return;}
  //Direction should be the next byte
  currentPos++;
  if(currentPos >= bufSize){Serial.println(GC_FAULT);return;}
  char dir = buffer[currentPos];
  if(dir == 'L')
  {
    //just check
  }else if(dir == 'R')
  {
    //just check
  }else
  {
    Serial.println(GC_FAULT);return;
  }
  //Next byte must be GC_FEEDRATE
  currentPos++;
  if(currentPos >= bufSize){Serial.println(GC_FAULT);return;}
  if(buffer[currentPos] != GC_FEEDRATE)
  {
    Serial.println(GC_FAULT);return;
  }
  currentPos++;
  int feedrateH = 0;
  result = conv2Int(buffer,bufSize,currentPos,'E',&feedrateH,&currentPos);
  if(result == -1){Serial.println(GC_FAULT);return;}

  Serial.println(GC_BUSY);
  _stepper->Step(dir,stepsH,feedrateH);  
  Serial.println(GC_READY);
}


int SetDirection(char *direction)
{
  if(*direction == 'F')
  {
    digitalWrite(DIR_R_PIN,LOW);
    digitalWrite(DIR_F_PIN,HIGH);
    
    
    return 1;
  }else if(*direction == 'R')
  {
    digitalWrite(DIR_F_PIN,LOW);
    digitalWrite(DIR_R_PIN,HIGH);
    return 1; 
  }else if(*direction == 'N')
  {
    digitalWrite(DIR_F_PIN,LOW);
    digitalWrite(DIR_R_PIN,LOW);
    return 0;
  }else
  {
    digitalWrite(DIR_F_PIN,LOW);
    digitalWrite(DIR_R_PIN,LOW);
    return -1;
  }
}

/*Power Commands have to look like this
  GC_POWER {DIRECTION(R|F|N} {FREQ_VALUE)E
  #define FREQ_PIN 9
#define DIR_R_PIN 10
#define DIR_F_PIN 11
*/
void parsePowerCommand(char *buffer,int bufSize)
{
  char direction = buffer[1];
  int dummyPos;
  int freq;
  int result = conv2Int(buffer,bufSize,2,'E',&freq,&dummyPos);
  if(result != 1)
  {
    Serial.println(GC_FAULT);
    return;
  }

  result = SetDirection(&direction);
  if(result == -1)
  {
    Serial.println(GC_FAULT);
    return;
  }
  analogWrite(FREQ_PIN,freq);
  Serial.println(GC_POWER_SET);
}

/*GC_MOVE {VALUE} GC_DIR {VALUE} GC_FEEDRATE {VALUE} 'E'*/
void ExecuteCommand(char *buffer,int bufSize)
{
  if(buffer[0] == GC_MOVE)
  {
    parseMoveCommand(buffer,bufSize);
    /*
    Serial.println(steps);
    Serial.println(currentDir);
    Serial.println(feedrate);*/
    /*
    Serial.println(GC_BUSY);
    _stepper->Step(currentDir,steps,feedrate);  
    Serial.println(GC_READY);
    //Serial.print(GC_READY);*/
  }else if(buffer[0] == GC_POWER)
  {
    parsePowerCommand(buffer,bufSize);
  }
  else
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
