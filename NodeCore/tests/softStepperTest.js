var stpDriver = require('./../int_modules/StepperDriverSoft');

module.exports =
{
  Initialize:Initialize,
  TestOne:TestOne,
 TestTwo:TestTwo
};

var defaultBusyCallback = function(val)
{
  console.log("Busy state:" + val);
}

var busyCallback = function (val)
{
  defaultBusyCallback(val);
};

function Initialize(callback)
{
  stpDriver.Initialize(
    {
      baudrate:9600,
      port:"/dev/ttyUSB1"
    }
  ,function(success)
  {
    if(success)
    {
      console.log("Driver initialized");
      callback(true);
    }else {
      console.log("Driver couldnt be initialized");
      callback(false);
    }
  },busyCallback);
}



function TestOne()
{
  console.log("Step Testing");
  stpDriver.Drive(500,'L',50,function(success)
  {
    console.log("Drive ended with:" + success);
  });
}

function TestTwo(resultCallback)
{
  var i = 0;
  var steps = [10,100,1000];
  var feedrates = [50,150,300];
  var dir = 'L';
  var done = false;
  function nextStep(callback)
  {
    if(i >= 3){
      callback();
      done = true;
      return;
    }
    console.log("Drive "+dir+" Steps:" + steps[i] + "at feedRate:" + feedrates[i]);
    stpDriver.Drive(steps[i],dir,feedrates[i],function(success)
    {
      if(!success)
      {
        console.log("Errorresult");
        resultCallback(false);
      }
    });
    i++;
  }
  console.log("Set callback");
  defaultBusyCallback = function(state)
  {
    if(state && !done)
    {
      console.log("Next...");
      setTimeout(nextStep(function(){console.log("Done 1");}),8000);
    }
  }

  nextStep(function()
  {
    console.log("Done 2");
  });
}
