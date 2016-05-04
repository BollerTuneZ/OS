var stpCtrl = require('./../int_modules/steeringControl');
var cfgReader = require('./../int_modules/configReader');

var cfgName = "steeringCtrlTest",cfgDefaultDriveTask ="defaultDriveTask";
var config = undefined,defaultDriveTask =undefined;
var isInitialized = false,initCallback;
var driveTo = 100;

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
  }else {
    return -1;
  }
  return 1;
}

function onConfig(cfg)
{
  if(cfg == -1 || cfg == undefined)
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
  stpCtrl.Drive(driveTo);
}


var exports = module.exports;
exports.Initialize = Initialize;
