var stpDriver = require('./../int_modules/StepperDriverSoft');

module.exports =
{
  Initialize:Initialize,
  TestOne:TestOne,
 TestTwo:TestTwo,
 EmergencyStopTest:EmergencyStopTest,
 DirectionTest:DirectionTest
};

var defaultBusyCallback = function(val)
{
  console.log("Busy state:" + val);
}

var busyCallback = function (val)
{
  if(defaultBusyCallback != undefined)
  {
    defaultBusyCallback(val);
  }
};

function Initialize(callback)
{
  stpDriver.Initialize(
    {
      baudrate:9600,
      port:"/dev/ttyUSB1",
      eStopPin:5
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

function DirectionTest()
{
  stpDriver.Drive(1000,'L',200,function(success)
  {
    if(!success){console.log("Errorresult");}
  });
  defaultBusyCallback = function(state)
  {
    if(state)
    {
      defaultBusyCallback = undefined;
      stpDriver.Drive(1000,'R',200,function(success)
      {
        if(!success){console.log("Errorresult");}
      });
    }
  }
}

function TestTwo(resultCallback)
{
  var i = 0;
  var steps = [10,100,1000];
  var feedrates = [50,150,2000];
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
      setTimeout(function()
      {
        nextStep(function(){console.log("Done 1");});
      },3000);
    }
  }

  nextStep(function()
  {
    console.log("Done 2");
  });
}

function EmergencyStopTest()
{
  var steps = 4000;
  var feedrate = 2;
  var dir = 'L';
  console.log("EmergencyStopTest");
  stpDriver.Drive(steps,dir,feedrate,function(success)
  {
    if(!success)
    {
      console.log("Errorresult");
    }
  });
  var testDone = false;
  defaultBusyCallback = function(state)
  {
    if(!state)
    {
      if(testDone){return;}
      console.log("Driver is busy... we gonna shut him done. 2sec");
      setTimeout(function()
      {
        defaultBusyCallback = function(state){console.log("Done test int.");};
        stpDriver.EmergencyStop();
        testDone = true;
        setTimeout(function()
        {
          stpDriver.Drive(200,dir,20,function(success)
          {
            if(!success)
            {
              console.log("Errorresult");
            }
          });
        },2500);

      },2000);
    }
  }
}
