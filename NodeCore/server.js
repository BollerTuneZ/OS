var Stepper =  require("./int_modules/StepperDriverSoft");
var Xbox = require('xbox-controller-node');
var Config = require('./data/config.json');

var StepperDriverInitialized = false,EncoderDriverInitialized=false;

var states =
{
  reverseActive:false
};


var Run = false;
var Direction = 'L';

function onStepperBusy()
{
	if(Run && StepperDriverInitialized)
	{
    console.log("Run");
		steer();
	}
}

function steer()
{
  Stepper.Drive(Config.steering.defaultSteps,Direction,Config.steering.defaultFeedrate);
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

function SetPower(value)
{
  if(value < 100)
  {
    //Reverse
    if(!states.reverseActive)
    {
      console.log("Reverse is blocked");
      return;
    }
    console.log("Run Reverse");
    var mappedVal = btzMath.MapVal(value,0, 100, 0, 125);
    Stepper.SetPower(mappedVal,'R');
  }else {
    var mappedVal = btzMath.MapVal(value,100, 255, 0, 255);
    Stepper.SetPower(mappedVal,'F');
  }
}

function _posPowerChanged(position)
{
  if(isNaN(position.y) || position.y == 'NaN'|| position.y == 'none'){return;}
  SetPower(position.y);
}

function _posSteeringChanged(position)
{
  if(isNaN(position.x) || position.x == 'NaN'|| position.x == 'none'){return;}
  if(position.x > 200)
  {
    Run = true;
    Direction = 'R';
  }else if(position.x < 50)
  {
    Run = true;
    Direction = 'L';
  }else {
    Run = false;
  }
}

function initializeGamepad()
{
  xbox.on('leftstickMove', _posSteeringChanged);
  xbox.on('rightstickMove', _posPowerChanged);
  Xbox.on('left:release', function () {
    Run = false;
    console.log('[LEFT] button release');
  });
  Xbox.on('left', function () {
    Run = true;
    Direction = 'L';
    steer();
    console.log('[LEFT] button press');

  });
  Xbox.on('right:release', function () {
    Run = false;
    console.log('[Right] button release');
  });
  Xbox.on('right', function () {
    Run = true;
    Direction = 'R';
    steer();
    console.log('[Right] button press');
  });
  xbox.on('rightstickpress:none', function () {
  console.log("Reverse active");
  states.reverseActive = true;
  });
  xbox.on('rightstickpress:release', function () {
  console.log("Reverse none active");
  states.reverseActive = false;
  });
}

function startBtz()
{
initializeStepperDriver();

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
