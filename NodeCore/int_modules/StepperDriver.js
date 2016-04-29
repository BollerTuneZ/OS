var gpio = require('rpi-gpio');
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

/*Events*/
gpio.on('export', function(channel) {
    console.log('Channel set: ' + channel);
});

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
  gpio.setup(_pinning.enable, gpio.DIR_OUT,function()
  {
    pinsInitialized[0] = true;
    console.log("Pin Enable directions set");
  });
  gpio.setup(18, gpio.DIR_OUT,function()
  {
    pinsInitialized[1] = true;
    console.log("Pin Step directions set");
  });
  gpio.setup(7, gpio.DIR_OUT,function()
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
    gpio.write(7, false, function(err) {
       if (err) throw err;
       //console.log('Written to pin');
    });

  }else if (moveObj.dir == "right") {
    console.log("Set Direction to right");
    gpio.write(7, true, function(err) {
       if (err) throw err;
       //console.log('Written to pin');
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
    gpio.write(18, false, function(err) {
       if (err) throw err;
       console.log('Written to pin on');
   });
   pinMode = false;
   stepsLeft--;
 }else {
   gpio.write(18, true, function(err) {
      if (err) throw err;
      console.log('Written to pin off');
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
