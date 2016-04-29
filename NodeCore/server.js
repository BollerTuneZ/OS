var test = require('./tests/steeringTest');

console.log("MultiTest test");
test.Initialize();
setTimeout(function()
{
  test.MultiTest();
}5000);
