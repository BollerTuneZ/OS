var stpDriver = require('./StepperDriverSoft');
var encClient = require('./encoderClient');

var encoderConnected = false;
var steeringPos = 0,motorPos=0;
var defaultFeedrate = 100;

var lastSteeringPos,lastMotorPos;

var exports = module.exports;
exports.Initialize = Initialize;
exports.RefDrive = RefDrive;

/*
ip,
port,
connectionInfoStp
*/
function Initialize(initObj)
{
  //encoder
  console.log("Init Encoder");
  encClient.Connect(initObj.ip,initObj.port,[onSteeringChanged,onMotorChanged],
  function()
  {
    console.log("Encoder connected");
    encoderConnected = true;
  });
  //StepperDriver
  console.log("Init stpDriver");
  stpDriver.Initialize(initObj.connectionInfo,function()
{
  console.log("Initialized");
},onBusyChanged);
}

function RefDrive(steps,dir)
{
  lastMotorPos = motorPos;
  lastSteeringPos = steeringPos;
  stpDriver.Drive(steps,dir,defaultFeedrate,function(value)
  {
    console.log("Stepping ended with:" + value);
  });
}

function onSteeringChanged(value)
{
  steeringPos = value;
}

function onMotorChanged(value)
{
  motorPos = value;
}

function printDiff()
{
  var diffSteering = lastSteeringPos - steeringPos;
  var diffMotor = lastMotorPos - motorPos;
  console.log("Steering diff:" + diffSteering);
  console.log("Motor diff:" + diffMotor);
}

function onBusyChanged(state)
{
  if(state)
  {
    printDiff();
  }else {
    console.log("Stepping");
  }
}
