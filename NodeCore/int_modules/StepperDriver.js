var gpio = require('wpi-gpio');//require('rpi-gpio');
var NanoTimer = require('nanotimer');
var pinsInitialized = [false,false,false];
module.exports =
{
  Position:Position,
  Initialize:Initialize,
  StopDrive:StopDrive,
  Drive:Drive,
  GetStatus:GetStatus,
  Position:Position
};


//Default
var _pinning =
{
  enable:10,
  step:11,
  dir:12
};


var Position = 0;
var stepTimer, stepsLeft, isStepping,pinMode = false;

function Initialize(pinning)
{
  if(pinning != undefined)
  {
    _pinning = pinning;
  }
  stepTimer = new NanoTimer();

  gpio.mode(18, 'out', function(err) {
console.log("Pin Step directions set");
  });
  gpio.mode(7, 'out', function(err) {
    console.log("Pin Direction directions set");
  });
  gpio.mode(_pinning.enable, 'out', function(err) {
console.log("Pin Enable directions set");
  });


}

function StopDrive()
{
  stepTimer.clearInterval();
  isStepping = false;
}

/*
moveObj{
dir,
steps,
feedrate
}
*/
function Drive(moveObj,callback)
{
  while(true)
  {
    for(var i=0;i<3;i++)
    {
      if(!pinsInitialized[i])
      {
        continue;
      }
    }
    break;
  }

  console.log(_pinning);
  if(isStepping)
  {
    //Need to stopTimer
    stepTimer.clearInterval();
    isStepping = false;
  }

  stepsLeft = moveObj.steps;
  if(moveObj.dir == "left")
  {
    console.log("Set Direction to left");
    gpio.write(7, 0, function(err) {
  // GPIO pin 2 set to high
    });


  }else if (moveObj.dir == "right") {
    console.log("Set Direction to right");
    gpio.write(7, 1, function(err) {
  // GPIO pin 2 set to high
    });
  }
  var intervalStr = ("10000u");
console.log(intervalStr);
  stepTimer.setInterval(_step,'',intervalStr);

}

function GetStatus()
{
  var statusObj =
  {
    StepsLeft:stepsLeft,
    IsStepping:isStepping
  };
  return statusObj;
}

function _step()
{
  if(pinMode)
  {
    gpio.write(18, 0, function(err) {
  // GPIO pin 2 set to high
    });
   pinMode = false;
   stepsLeft--;
 }else {
   gpio.write(18, 1, function(err) {
 // GPIO pin 2 set to high
   });
  pinMode = true;
 }
	//console.log("Stepping");
 if(stepsLeft == 0)
 {
   stepTimer.clearInterval();
   isStepping = false;
 }else {
   isStepping = true;
 }
}



/*Utilities*/
function _calculateFeedrateToDelay(feedrate)
{
  return (10000/feedrate);
}
