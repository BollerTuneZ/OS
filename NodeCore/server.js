var test = require('./tests/softStepperTest');

console.log("MultiTest test");
test.Initialize();
setInterval(test.TestOne,10000);

function startTesting(success)
{
  if(success)
  {
    console.log("Start testing");
    test.TestOne();
    setTimeout()
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
