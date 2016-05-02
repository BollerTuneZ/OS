var encLib = require("./encoderClient");


var ip = '192.168.1.170';
var port = 1010;

function onSteering(value)
{
  console.log("Steering Position:"+value);
}
function onMotor(value)
{
  console.log("Motor Position:"+value);
}

function changePosition()
{
  console.log("Set both positions to 0");
  //encLib.SetPosition("steering",0);
  encLib.SetPosition("motor",0);
}

encLib.Connect(ip,port,[onSteering,onMotor]);

var stdin = process.openStdin();

stdin.addListener("data", function(d) {

    changePosition();
  });
