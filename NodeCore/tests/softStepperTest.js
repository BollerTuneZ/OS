var stpDriver = require('./../int_modules/StepperDriverSoft');

module.exports =
{
  Initialize:Initialize,
  TestOne:TestOne
};

function Initialize()
{
  stpDriver.Initialize(9600,function(success)
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
  stpDriver.Drive(500,'L',600,function(success)
  {
    console.log("Drive ended with:" + success);
  });
}
