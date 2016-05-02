/*
@author Jonas ahlf
Controler for steering operrations
Position left should going decrease right increase
*/
var stepper =  require("./StepperDriverSoft");
var encoderServer = require("./encoderServer");
var ramp = ("./steeringRamps/defaultRamp.js");
/*Buffer*/
var stepBuffer = [];


/*config_parameter*/
//SteeringMode (Controller||Manual)
var _config;
var _configMotorRange =
{
  leftEnd:0,
  middle:50,
  rightEnd:100
};
var _configSteeringRange =
{
  leftEnd:0,
  middle:50,
  rightEnd:100
};
var _configControllerRange =
{
  leftEnd:0,
  middle:50,
  rightEnd:100
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
var Positions ={Steering:0,Motor:0};
var onPositionEvents = {};
var onBusy,onReady;
var EncoderServerInitialized = false;
var currentState = states.free;
var tasksBuffer = [],taskIndex,taskBufSize;


/*
Initialize object:
StepperInfo:
  conInfoStepper:connectionInfo
  stpPI:{STEPPS_PER_I}
encServer:{ip:IP,port:PORT}
*/
function Initialize(config)
{
  _config = config;
}

function initializeEncoder()
{
  if(_config.encServer == undefined)
  {
    console.log("No Encoderserver defined");
    return;
  }
  encoderServer.connect(_config.encServer.ip,
    _config.encServer.port,
    [onSteeringChanged,onMotorChanged],
    function(){
      EncoderServerInitialized = true;
    });
}


/*Drive tasks
* Steps:INT
* Dir:('R'|'L')
* Feedrate:INT

*force = forces to do task
*/
function Drive(task,force)
{
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
        return -1;
      }
    }
  }
  _drive(task.Steps,task.Dir,Task.Feedrate);
}

/*
* Auto drive calculates steps direction and ramps
*always forces
*/
function AutoDrivePosition(position)
{
  taskIndex = taskBufSize;
  var stpInfo = calculateSteps(position);
  var tempBuffer = ramp.Render(stpInfo.Steps,stpInfo.Dir);
  taskBufSize = tempBuffer.length;
  taskIndex = 0;
  onReady = function()
  {
    var result = getNextTask();
    if(result.end == true)
    {
      return;
    }
    Drive(result.task,true);
  };
}

/*private member*/
function getNextTask()
{
  var rtO =
  {
    end:true,
  };
  if(taskIndex == taskBufSize)
  {
    taskIndex = 0;
    return rtO;
  }
  rt0["task"] = taskBuffer[taskIndex];
  if(rt0["task"] == undefined)
  {
    return rtO;
  }
  rt0.end = false;
  return rtO;
}

/*Algorythomen*/
function calculateSteps(position)
{
  var dir = 'N',diff=0;
  if(position == Positions.Motor)
  {
    return 0;
  }
  /*Determine direction
  * dir: R=position>Motor;L=position<Motor
  */
  if(position>Positions.Motor;)
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

function mapVal(x, in_min, in_max, out_min, out_max)
{
  return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
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
