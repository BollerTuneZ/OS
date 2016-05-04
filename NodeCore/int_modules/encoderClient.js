var net = require('net');

var client;
var _callbacks = [];
var EncoderIdentity;
var lastValues = {motor:0,steering:0};
/*
* Ip: Ip of encoder arduino server
* port: ''
* callbacks:array of two callbacks (steering,motor,)
*   parameter: value
*/
function Connect(ip,port,callbacks,connectedCallback)
{
  _callbacks = callbacks;
  client = new net.Socket();
  client.connect(port, ip, function() {
    console.log('Connected');
    client.write('{"Command":"SHOW_IDENTITY"}');
    if(connectedCallback != undefined)
    {
        connectedCallback();
    }
  });
  client.on('data', onData);
}

/*
encoderType ("steering"|"motor")
*/
function SetPosition(encoderType,position)
{
  var tmpObj =
  {
    Command:"SET_ENCODER",
    ECMODE:"NON",
    Value:position
  };
  if(encoderType == "steering")
  {
    tmpObj.ECMODE = "ECS";
  }else if(encoderType == "motor")
  {
    tmpObj.ECMODE = "ECM";
  }else {
    console.log("Unkown encodertype:" + encodertype);
    return;
  }
  client.write(JSON.stringify(tmpObj));
}

function onData(data)
{
  var tmpObj;
  var splitValues = data.toString().split("}");
  var length = splitValues.length;
  if(length > 2)
  {
    //Get latest
    var latest = splitValues[length -2] + "}";
    data = latest;
  }
  try {
    //console.log(data.toString());
    tmpObj = JSON.parse(data);
  } catch (e) {
    console.log(data.toString());
    console.log(e);
    return;
  }
  if(tmpObj.Name != undefined)
  {
    EncoderIdentity = tmpObj.Name;
    console.log("Identity of Encoder is:" + EncoderIdentity);
    return;
  }
  if(tmpObj.steering != undefined)
  {
    if(tmpObj.steering != lastValues.steering)
    {
      lastValues.steering = tmpObj.steering;
      _callbacks[0](lastValues.steering);
    }
    if(tmpObj.motor != lastValues.motor)
    {
      lastValues.motor = tmpObj.motor;
      _callbacks[1](lastValues.motor);
    }
  }
}
var exports = module.exports;
exports.SetPosition = SetPosition;
exports.Connect = Connect;
