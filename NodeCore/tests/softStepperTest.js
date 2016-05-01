var stpDriver = require('./../int_modules/StepperDriverSoft');

module.exports =
{
  Initialize:Initialize,
  TestOne:TestOne,
 TestTwo:TestTwo
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
  var i = 0;
  var steps = [50,100,1000];
  var feedrates = [50,150,300];
  var dir = 'L';
  function nextStep(callback)
  {
    if(i >= 3){callback();}
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

  stpDriver.onBusyChanged = function(state)
  {
    if(state)
    {
      console.log("Next...");
      setTimeout(nextStep(function(){console.log("Done");}),1000);
    }
  }

  nextStep(function()
  {
  });
}
