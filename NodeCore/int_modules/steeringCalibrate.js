var stpDriver = require('./StepperDriverSoft');
var encClient = require('./encoderClient');
var btzMath = require('./BTZ_Math');
var refPos = 1000;

var encoderConnected = false,autoCalibrate=false;
var steeringPos = 0,motorPos=0;
var defaultFeedrate = 200;
var currentSpP = 0;

var lastSteeringPos,lastMotorPos;
var verify = 0,verifyMin = 10;

var diffs =
{
  motor:0,
  steering:0
}

var exports = module.exports;
exports.Initialize = Initialize;
exports.RefDrive = RefDrive;
exports.AutoCalibrate = AutoCalibrate;

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
  console.log("Driving:" + steps);
  stpDriver.Drive(steps,dir,defaultFeedrate,function(value)
  {
    console.log("Stepping ended with:" + value);
  });
}

function AutoCalibrate(startSpP)
{
  currentSpP = startSpP;
  var refStepsToDrive = (currentSpP *refPos);
  autoCalibrate = true;
  console.log("Start autocalibration");
  RefDrive(refStepsToDrive,'L');
}

function nextCalibrateStep()
{
  //Tolerate +-2
  var realDiff = refPos -diffs.motor;
  if(realDiff < 0)
  {
    realDiff = realDiff * (-1);
  }
  if(realDiff > 3)
  {
    verify = 0;
    //recalculate
    var newSpS = btzMath.CalculateFeeds(refPos,currentSpP,diffs.motor);
    console.log("Recalibrated value from:" + currentSpP + " to:"+
    newSpS);
    currentSpP = newSpS;
    var refStepsToDrive = (currentSpP *refPos);
    console.log("Ref steps:" + refStepsToDrive);
    RefDrive(refStepsToDrive,'L');
  }else {
    verify++;
    if(verify >= verifyMin)
    {
      autoCalibrate = false;
      console.log("Done Calibration \n calculated SpP:" + currentSpP);
    }else {
      console.log("Verify:" + verify);
      var refStepsToDrive = (currentSpP *refPos);
      console.log("Ref steps:" + refStepsToDrive);
      RefDrive(refStepsToDrive,'L');
    }
  }
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
  diffs.steering = lastSteeringPos - steeringPos;
  diffs.motor = lastMotorPos - motorPos;

  if(diffs.motor < 0)
  {
    diffs.motor = diffs.motor * (-1);
  }
  if(diffs.steering < 0)
  {
    diffs.steering = diffs.steering * (-1);
  }

  console.log("Steering diff:" + diffs.steering);
  console.log("Motor diff:" + diffs.motor);
}

function onBusyChanged(state)
{
  if(state)
  {
    printDiff();
    if(autoCalibrate)
    {
      setTimeout(nextCalibrateStep,500);
    }
  }else {
    console.log("Stepping");
  }
}
