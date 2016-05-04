var test = require('./tests/softStepperTest');
var ctrlTest = require('./tests/steeringCtrlTest');
var strCtrl = require('./int_modules/steeringControl');
var strCali = require('./int_modules/steeringCalibrate');
/*
console.log("MultiTest test");
test.Initialize(startTesting);


function startTesting(success)
{
  if(success)
  {
    console.log("Start testing");
    //test.TestOne();
    //secondTest();
    //test.EmergencyStopTest();
    test.DirectionTest();
  }else {
    console.log("Cant start testing error apeard");
  }
}

function secondTest()
{
  console.log("Second Test");
  test.TestTwo(function(success)
  {
    console.log("Second Test ended:" + success);
  });
}
*/

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
    }else if(input == "-drive cali")
    {
      strCali.RefDrive(5,'L');
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
