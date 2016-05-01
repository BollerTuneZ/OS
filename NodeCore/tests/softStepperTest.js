var stpDriver = require('./../int_modules/StepperDriverSoft');

module.exports =
{
  Initialize:Initialize,
  TestOne:TestOne
};

function Initialize(callback)
{
  stpDriver.Initialize(
    {
      baudrate:9600,
      port:"/dev/ttyUSB0"
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
  });
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
  int i = 0;
  var steps = [10,100,1000];
  var feedrates = [50,150,300];
  var dir = 'L';
  function nextStep(callback)
  {
    if(i >= 3){callback();}
    console.log("Drive "+dir+" Steps:" + steps[i] + "at feedRate:" + feedrates[i]);
    stpDriver.Drive(steps[i],dir,feedrates[i],function(success)
    {
      if(success)
      {
        setTimeout(nextStep(callback)2000);
      }else {
        {
          console.log("Error");
          resultCallback(false);
        }
      }
    });
    i++;
  }
  nextStep(function()
  {
    dir = 'R';
    nextStep(function()
    {
      resultCallback(true);
    });
  });
}
