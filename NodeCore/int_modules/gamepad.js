var xbox = require('xbox-controller-node');
var btzMath = require('./BTZ_Math');

var controllerMax = 1700;
var config;
var currentState = false;
/*
INIT OBJ:
onChangedPos:callback
range: min,max
*/
function Initialize(initObj)
{
  config = initObj;
  xbox.on('leftstickMove', _posSteeringChanged);
}

function SetState(onOff)
{
  currentState = onOff;
}

function _posSteeringChanged(position)
{
  if(!currentState){return;}
  console.log("Controller Position:" + position);
  var mapped = btzMath.MapVal(position,-1700,1700,config.range.min,config.range.max);
  console.log("Mapped Position:" + mapped);
  config.onChangedPos(mapped);
}

var exports = module.exports;
exports.Initialize = Initialize;
exports.SetState = SetState;
