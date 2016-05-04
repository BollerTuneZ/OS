var test = require('./tests/softStepperTest');
var ctrlTest = require('./tests/steeringCtrlTest');
var strCtrl = require('./int_modules/steeringControl');
var strCali = require('./int_modules/steeringCalibrate');
var stepper =  require("./int_modules/StepperDriverSoft");
var xbox = require('xbox-controller-node');


var StepperDriverInitialized = false;
var run = false;
var dir = 'L';
var conInfo = "conInfoStepper": {
      "baudrate": 115200,
      "port": "/dev/ttyUSB1",
      "eStopPin": 5
    }


function onStepperBusy()
{
	if(run)
	{
		stepper.Drive(100,dir,1000);
	}

}

function initializeStepperDriver()
{
  stepper.Initialize(conInfo,function(result)
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
xbox.on('left:release', function () {
  run = false;
});

xbox.on('left', function () {
  run = true;
  dir = 'L';
  console.log('[LEFT] button press');

});
xbox.on('right:release', function () {
  run = false;
});

xbox.on('right', function () {
  run = true;
  dir = 'R';
  console.log('[Right] button press');

});
}



var initCalObj =
{
  ip:"192.168.2.170",
  port:1010,
  connectionInfo:{baudrate:9600,port:"/dev/ttyUSB1",eStopPin:5}
};
var init_calibrate = false;
var stdin = process.openStdin();
var stdInCallback = undefined;

console.log("Server has been started, enter command");

stdin.addListener("data", function(d) {
    var input = d.toString().trim();
    if(stdInCallback != undefined)
    {
      if(stdInCallback(input) == 1)
      {
        return;
      }
    }
    if(input == "-init calibrate")
    {
      console.log("Init Calibration");
      strCali.Initialize(initCalObj);
    }else if(input == "-btz")
    {
      startBtz();
    }else if(input == "-drive cali")
    {
      strCali.RefDrive(1,'L');
    }else if(input == "-drive autocali")
    {
      strCali.AutoCalibrate(5);
    }else if(input == "-init auto")
    {
      stdInCallback = ctrlTest.Initialize(function()
      {
        console.log("CTRLTest initialized");
      });
    }else {
      console.log("Could not understand:" + input);
    }
  });
