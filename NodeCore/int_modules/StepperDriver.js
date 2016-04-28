var gpio = require('rpi-gpio');

module.export =
{
  Position:Position,
  Initialize:Initialize,
  StopDrive:StopDrive,
  Drive:Drive
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

  gpio.setup(_pinning.enable, gpio.DIR_OUT);
  gpio.setup(_pinning.step, gpio.DIR_OUT);
  gpio.setup(_pinning.dir, gpio.DIR_OUT);
}

function StopDrive()
{
  stepTimer.clearInterval();
  isStepping = false;
}

function Drive(moveObj,callback)
{
  if(isStepping)
  {
    //Need to stopTimer
    stepTimer.clearInterval();
    isStepping = false;
  }

  stepsLeft = moveObj.stepsLeft;
  if(moveObj.dir == "left")
  {
    gpio.write(_pinning.dir, false, function(err) {
       if (err) throw err;
       //console.log('Written to pin');
   });
  }else if (moveObj.dir == "right") {
    gpio.write(_pinning.dir, true, function(err) {
       if (err) throw err;
       //console.log('Written to pin');
   });
  }

  var intervalStr = (_calculateFeedrateToDelay(moveObj.feedrate) / 2).toString() + "u";
  stepTimer.setInterval(_step,'',intervalStr);

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
