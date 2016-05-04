/*
@author Jonas ahlf
algorithms
*/

var exports = module.exports;
exports.CalculateFeeds = calculateFeeds;
exports.MapVal = mapVal;

/*
* s = the distance which should be traveled
* cF = the currentFeeds
* value = the actual distance
*/
function calculateFeeds(s,cF,value)
{
  return ((s*cF)/value);
}


function mapVal(x, in_min, in_max, out_min, out_max)
{
  return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}
