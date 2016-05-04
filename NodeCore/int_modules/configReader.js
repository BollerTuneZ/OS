var fs = require('fs');
/*
var fs = require('fs');
var obj;
fs.readFile('file', 'utf8', function (err, data) {
  if (err) throw err;
  obj = JSON.parse(data);
});
*/

var basePath = __dirname + "/../data/";

var cfgPaths =
[
  ["steeringCtrlTest",basePath + "tests/steeringCtrlTest.json"],
  ["defaultDriveTask",basePath + "tests/defaultDriveTask.json"]
];

/*
reads json from file and returns it as object
callback will be fire on done or error(-1)
*/
function ReadConfig(cfgName,callback)
{
  function readData(p)
  {
    var obj;
    fs.readFile(p, 'utf8', function (err, data) {
      callback(-1);
      obj = JSON.parse(data);
      callback(obj);
    });
  }
  var path = getPathByName(cfgName);
  if(path == "")
  {
    callback(-1);
  }
  readData(path);
}

function getPathByName(name)
{
  for(var i=0,j=cfgPaths.length;i<j;i++)
  {
    if(cfgPaths[i][0] == name){
      return cfgPaths[i][1];
    }
  }
  return "";
}


var exports = module.exports;
exports.ReadConfig = ReadConfig;
