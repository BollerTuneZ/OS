var Stepper =  require("./int_modules/StepperDriverSoft");
var Xbox = require('xbox-controller-node');
var Config = require('./data/config.json');

var StepperDriverInitialized = false,EncoderDriverInitialized=false;



var Run = false;
var Direction = 'L';

function onStepperBusy()
{
	if(Run && StepperDriverInitialized)
	{
		Stepper.Drive(100,dir,1000);
	}
}

function initializeStepperDriver()
{
  Stepper.Initialize(Config.conInfoStepper,function(result)
  {
    if(result)
    {
      console.log("Stepper Driver initalized");
    }else {
      console.log("Could not Initialize Stepper driver");
    }
    StepperDriverInitialized = result;
  },onStepperBusy);
}

function startBtz()
{
initializeStepperDriver();
Xbox.on('left:release', function () {
  Run = false;
});

Xbox.on('left', function () {
  Run = true;
  Direction = 'L';
  console.log('[LEFT] button press');

});
Xbox.on('right:release', function () {
  Run = false;
});

Xbox.on('right', function () {
  Run = true;
  Direction = 'R';
  console.log('[Right] button press');

});
}

var stdin = process.openStdin();

console.log("Server has been started, enter command");

stdin.addListener("data", function(d) {
    var input = d.toString().trim();
    if(input == "help")
    {
      console.log("type -btz");
    }else if(input == "-btz")
    {
      startBtz();
    }else {
      console.log("Could not understand:" + input);
    }
  });
