var stpDriver =  require('../int_modules/StepperDriver.js');

module.exports =
{
  Initialize:Initialize,
  MultiTest:MultiTest
};


function Initialize()
{
  console.log("Initialize Steering test");

  console.log("Init StepperDriver");
  var pinning = {
    enable:17,
    step:27,
    dir:7
  };
  stpDriver.Initialize(pinning);
  console.log("StepperDriver Initialized");
}

function MultiTest()
{
  var feedRates =
  {
    low:10,
    mid:50,
    high:250,
    max:600
  };
  var refSteps =
  {
    vSmall:25,
    small:150,
    mid:200
  };
  console.log("Referenz drive right, low feedrate");
  stpDriver.Drive({
    dir:"right",
    steps:refSteps.vSmall,
    feedrate:feedRates.low
  });
  setTimeout(function()
{
  console.log("Drive left")
  stpDriver.Drive({
    dir:"left",
    steps:refSteps.vSmall,
    feedrate:feedRates.low
  });
},10*1000);

}
