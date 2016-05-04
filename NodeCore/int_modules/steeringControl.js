/*
@author Jonas ahlf
Controler for steering operrations
Position left should going decrease right increase
the whole calculation is based on the absolut position of the encoder
*/
var stepper =  require("./StepperDriverSoft");
var encoderServer = require("./encoderClient");
var ramp = require("./steeringRamps/defaultRamp.js");
/*Buffer*/
var stepBuffer = [];

/*config_parameter*/
//SteeringMode (Controller||Manual)
var _config;
//TODO must be json and dynamic changeable
var _configMotorRange =
{
  range:5000,
  midOffset:2
};
var states =
{
  free:"FREE",
  idle:"IDLE",
  drive:"DRIVE"
};

var SteeringMode = "Controller";
var onSteeringModeChanged;
//When all stepping tasks are done
var onStepBufEmpty;
var busyState = true;

/*IMPORTEND Control variables*/
var Positions ={Steering:0,Motor:0,Target:0};
var onPositionEvents = {};
var onBusy,onReady;
var EncoderServerInitialized = false,
    StepperDriverInitialized = false,
    AutoDriveInitialized = false;
var currentState = states.free;
var tasksBuffer = [],taskIndex,taskBufSize;


/*
Initialize object:
StepperInfo:
  conInfoStepper:connectionInfo
  stpPI:{STEPPS_PER_I},
  tolleranz:4 //TODO implement
encServer:{ip:IP,port:PORT}
motorRange:range:0-X,midOffset
*/
function Initialize(config)
{
  _config = config;
  //console.log(_config);
  console.log("Initializing Encoder");
  if(config.motorRange != undefined)
  {
    _configMotorRange = config.motorRange;
  }
  initializeEncoder();
  initializeStepperDriver();
}

function initializeEncoder()
{
  if(_config.encServer == undefined)
  {
    console.log("No Encoderserver defined");
    EncoderServerInitialized= false;
    return;
  }
  encoderServer.Connect(_config.encServer.ip,
    _config.encServer.port,
    [onSteeringChanged,onMotorChanged],
    function(){
      EncoderServerInitialized = true;
      //Set positions of encoder calculating the middle for motor
      target = (_configMotorRange.range / 2) + (_configMotorRange.midOffset);
      Positions.Motor = target;
      console.log("Set Motor position to middle:" + Positions.Motor);
      encoderServer.SetPosition("motor",Positions.Motor);
    });
}

function initializeStepperDriver()
{
  stepper.Initialize(_config.StepperInfo.conInfoStepper,function(result)
  {
    if(result)
    {
      console.log("Stepper Driver initalized");
    }else {
      console.log("Could not Initialize Stepper driver");
    }
    StepperDriverInitialized = result;
  },onStepperBusy);
}

/*Drive tasks
* Steps:INT
* Dir:('R'|'L')
* Feedrate:INT

*force = forces to do task
-1 StepperDriver not initialized
-2 Busy state
*/
function Drive(task,force)
{
  if(force == undefined){force = false;}
  if(!StepperDriverInitialized){return -1;}
  function _drive(s,d,f)
  {
    stepper.Drive(s,d,f,onStepperFault);
  }

  if(!busyState)
  {
    //Force stepper to stop
    if(force)
    {
      stepper.EmergencyStop();
    }else {
      {
        return -2;
      }
    }
  }
  _drive(task.Steps,task.Dir,task.Feedrate);
  return 1;
}

function SetAutoDrive(onOff)
{
  AutoDriveInitialized = onOff;
  if(!AutoDriveInitialized)
  {
    //release event
    onPositionEvents["motorIdle"] = undefined;
  }else {
    initializeAutoDrive();
  }
}
/*
* Auto drive calculates steps direction and ramps
*always forces
*/
function AutoDrivePosition(position)
{
  console.log("Auto driving to:" + position);
  if(!EncoderServerInitialized){return -1;}
  if(!AutoDriveInitialized)
  {
    initializeAutoDrive();
  }
  console.log("Motor:" + Positions.Motor + " position:" + position)
  var tDiff = Positions.Motor - position;
  if(tDiff < 0)
  {
    tDiff = tDiff * (-1);
  }
  if(tDiff < _config.StepperInfo.tolleranz)
  {
    //target is within tolleranz
    console.log("Within the tolleranz:" + tDiff);
    return;
  }
  taskIndex = taskBufSize; //Set buffer to end

  var stpInfo = calculateSteps(position);
  console.log("calculateSteps" + stpInfo.Steps);

  var tempBuffer = ramp.Render(stpInfo.Steps,stpInfo.Dir);
  taskBufSize = tempBuffer.length;

  if(taskBufSize < 1)
  {
    console.log("Not enough tasks")
    return;
  }else {
    console.log(taskBufSize);
  }
  taskBuffer = tempBuffer;
  taskIndex = 0;
  Positions.Target = position;
  onReady();
}

/*private member*/
/*Returns next task out of buffer*/
function getNextTask()
{
  console.log("Get next Task:" + taskIndex);
  var rtO =
  {
    end:true,
  };
  if(taskIndex == taskBufSize)
  {
    taskIndex = 0;
    autoMotorIdle(Positions.Target);
    return rtO;
  }
  rtO["task"] = taskBuffer[taskIndex];
  if(rtO["task"] == undefined)
  {
    return rtO;
  }
  taskIndex++;
  rtO.end = false;
  return rtO;
}

/*Auto drive*/
function initializeAutoDrive()
{
  console.log("Initialize autodrive");
  AutoDriveInitialized = true;
  onPositionEvents["motorIdle"] = autoMotorIdle;
  onReady = function()
  {
    var result = getNextTask();
    if(result.end == true)
    {
      return;
    }
    var result = Drive(result.task,true);
    if(result != 1)
    {
      console.log("Drive Error" + result);
    }
  };
}

/*
Executed when
*/
function autoMotorIdle(value)
{

 if(value != Positions.Target)
 {
   //Motor position has changed, but he shouldn't
   console.log("Motor not on target");
   AutoDrivePosition(Positions.Target);
 }
}
function autoMotorDrive(value)
{
  //TODO logic for finding failsures
}

/*Algorythomen*/
function calculateSteps(position)
{
  //console.log("Calculating steps with position:" + position);
  var dir = 'N',diff=0;
  //Set offset
  position = position + (_configMotorRange.midOffset);
  if(position == Positions.Motor)
  {
    return 0;
  }
  /*Determine direction
  * dir: R=position>Motor;L=position<Motor
  */
  if(position>Positions.Motor)
  {
    dir ='R';
    diff = position - Positions.Motor;
  }else {
    dir = 'L';
    diff = Positions.Motor - position;
  }

  //Calculate in steps
  var steps = (diff*_config.StepperInfo.stpPI);
  var rtO =
  {
    Steps:steps,
    Dir:dir
  };
  return rtO;
}

/*Public Events*/
function OnSteeringModeChanged(callback)
{
  onSteeringModeChanged = callback;
}
function OnStepBufEmpty(callback)
{
  onStepBufEmpty = callback;
}

/*Private events*/
function onStepperBusy(value)
{
  busyState = value;
  if(busyState)
  {
    if(onReady != undefined)
    {
      onReady();
    }
  }else {
    if(onBusy != undefined)
    {
      onBusy();
    }
  }
}
function onStepperFault(fault)
{
  console.log("Stepper fault:" + fault);
}
function onSteeringChanged(value)
{
  Positions.Steering = value;
  if(currentState == states.idle)
  {
    if(onPositionEvents["steeringIdle"] != undefined)
    {
      onPositionEvents["steeringIdle"]();
    }
  }else if(currentState == states.drive)
  {
    if(onPositionEvents["steeringDrive"] != undefined)
    {
      onPositionEvents["steeringDrive"]();
    }
  }
}
function onMotorChanged(value)
{
  Positions.Motor = value;
  if(currentState == states.idle)
  {
    if(onPositionEvents["motorIdle"] != undefined)
    {
      onPositionEvents["motorIdle"]();
    }
  }else if(currentState == states.drive)
  {
    if(onPositionEvents["motorDrive"] != undefined)
    {
      onPositionEvents["motorDrive"]();
    }
  }
}

var exports = module.exports;
exports.Initialize = Initialize;
exports.Drive = Drive;
exports.SetAutoDrive = SetAutoDrive;
exports.AutoDrivePosition = AutoDrivePosition;
