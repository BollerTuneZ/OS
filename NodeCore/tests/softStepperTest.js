var stpDriver = require('./../int_modules/StepperDriverSoft');

module.exports =
{
  Initialize:Initialize,
  TestOne:TestOne
};

function Initialize()
{
  stpDriver.Initialize(function(success)
  {
    if(success)
    {
      console.log("Driver initialized");
    }else {
      console.log("Driver couldnt be initialized");
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
