var test = require('./tests/softStepperTest');

console.log("MultiTest test");
test.Initialize();
setInterval(test.TestOne,10000);
