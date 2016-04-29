var gpio = require('rpi-gpio');
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

var NanoTimer = require('nanotimer');
var Position = 0;
var stepTimer, stepsLeft, isStepping,pinMode = false;

function Initialize(pinning)
{
  if(pinning != undefined)
  {
    _pinning = pinning;
  }
  gpio.setup(_pinning.enable, gpio.DIR_OUT,function()
  {
    pinsInitialized[0] = true;
    console.log("Pin Enable directions set");
  });
  gpio.setup(_pinning.step, gpio.DIR_OUT,function()
  {
    pinsInitialized[1] = true;
    console.log("Pin Step directions set");
  });
  gpio.setup(_pinning.dir, gpio.DIR_OUT,function()
  {
    pinsInitialized[2] = true;
    console.log("Pin Direction directions set");
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
    gpio.write(_pinning.dir, false, function(err) {
       if (err) throw err;
       //console.log('Written to pin');
   });

  }else if (moveObj.dir == "right") {
    console.log("Set Direction to right");
    gpio.write(_pinning.dir, true, function(err) {
       if (err) throw err;
       //console.log('Written to pin');
   });
  }
  var intervalStr = (_calculateFeedrateToDelay(moveObj.feedrate) / 2).toString() + "u";
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
    gpio.write(_pinning.step, false, function(err) {
       if (err) throw err;
       //console.log('Written to pin');
   });
   pinMode = false;
   stepsLeft--;
 }else {
   gpio.write(_pinning.step, true, function(err) {
      if (err) throw err;
      //console.log('Written to pin');
  });
  pinMode = true;
 }

 if(stepsLeft == 0)
 {
   stepTimer.clearInterval();
   isStepping = false;
 }else {
   isStepping = true;
 }
}

/*Events*/
gpio.on('export', function(channel) {
    console.log('Channel set: ' + channel);
});

/*Utilities*/
function _calculateFeedrateToDelay(feedrate)
{
  return (feedrate/10000);
}
