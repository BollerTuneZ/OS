var stpCtrl = require('./../int_modules/steeringControl');
var cfgReader = require('./../int_modules/configReader');
var xCtrl = require('./../int_modules/gamepad');


var cfgName = "steeringCtrlTest",cfgDefaultDriveTask ="defaultDriveTask";
var config = undefined,defaultDriveTask =undefined;
var isInitialized = false,initCallback;
var driveTo = 0;

/*Initializes Test and returns callback for stdin*/
function Initialize(callback)
{
  initCallback = callback;
  cfgReader.ReadConfig(cfgName,onConfig);
  cfgReader.ReadConfig(cfgDefaultDriveTask,function(cfg)
  {
    if(cfg == -1){console.log("could not read default drive task");return;}
    defaultDriveTask = cfg;
  });

  return onStdin;
}

function driverInit()
{
  stpCtrl.Initialize(config);
  setTimeout(function()
  {
    isInitialized = true;
    initCallback();
  },5000);
}


function onStdin(value)
{
  if(value == "cmanual")
  {
    C_manualDrive();
  }else if(value == "cauto")
  {
    C_autoDrive();
  }else if(value == "cc")
  {
    C_controller();
  }else {
    return -1;
  }
  return 1;
}

function onConfig(cfg)
{
  if(cfg == -1)
  {
    console.log("Could not read Config:" + cfgName);
  }else {
    config = cfg;
    if(!isInitialized)
    {
      driverInit();
    }
  }
}

/*Commands*/

function C_manualDrive()
{
  if(defaultDriveTask == undefined)
  {
    console.log("defaultDriveTask is undefined");
    return;
  }
  console.log("Test defaultDriveTask");
  stpCtrl.Drive(defaultDriveTask);
}

function C_autoDrive()
{
  console.log("Testing autodrive");
  stpCtrl.AutoDrivePosition(driveTo);
}

function C_controller()
{
  xCtrl.Initialize({
    onChangedPos:function(pos)
    {
      stpCtrl.AutoDrivePosition(pos);
    },
    range:{min:0,max:5000}
  });
}

var exports = module.exports;
exports.Initialize = Initialize;
