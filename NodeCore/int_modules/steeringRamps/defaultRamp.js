/*
@author Jonas Ahlf
Default Stepper Position Ramp Algorythomen
each Ramp has to implement this function
[Tasks] Render(steps,dir);
*/
var DEFAULT_FEEDRATE = 500;
var MAX_FEEDRATE = 20000;

var raises =
{
  first: {start:1000,end:2000},
  second: {start:3000,end:5000},
  third:{start:5000,end:7000},
  end:{start:7000,end:MAX_FEEDRATE},
};

function Render(steps,dir)
{
  var stepsLeft = steps;
  var tasks = [];
  /*
  * if the path to step is to low,
  * the default task will be returned
  */
  var defaultTask =
  {
    Steps:steps,
    Dir:dir,
    Feedrate:DEFAULT_FEEDRATE
  };
  if(steps > 5000)
  {
    defaultTask.Feedrate = 1000;
  }
  return [defaultTask];
  if(stepsLeft < 500)
  {


  }

  //First step
  if(stepsLeft < 5000)
  {
    return [defaultTask];
  }else if(steps < 10000)
  {
    console.log("Second");
    return secondRamp(steps,dir);
  }else if(steps < 15000)
  {
    console.log("third");
    return thirdRamp(steps,dir);
  }else {
    console.log("Last");
    return maxRamp(steps,dir);
  }

}

module.exports.Render = Render;

function firstRamp(steps,dir)
{

  //We ar going to raise 3/4 of the steps and than slow down again
  var raising = (steps * 0.75);
  var slowing = (steps * 0.25);
  console.log(raising);
  var raisingRaw = raise(raises.first.start,raises.first.end,raising);
  var slowing = slow(raises.first.end,raises.first.start,slowing);

  var tempItems = [];
  for(var i=0,j=raisingRaw.length;i<j;i++)
  {
    var currentItem = raisingRaw[i];
    tempItems.push(
      {
        Steps:currentItem[0],
        Dir:dir,
        Feedrate:currentItem[1]
      }
    );
  }

  for(var i=0,j=slowing.length;i<j;i++)
  {
    var currentItem = slowing[i];
    tempItems.push(
      {
        Steps:currentItem[0],
        Dir:dir,
        Feedrate:currentItem[1]
      }
    );
  }
  return tempItems;
}

function secondRamp(steps,dir)
{
  //We ar going to raise 1/2 quit quickly stay for 1/4 and than slow down
  var raising = (steps * 0.5);
  var midPart = (steps * 0.25);
  var slowing = (steps * 0.25);

  var raisingRaw = raise(raises.second.start,raises.second.end,raising);
  var slowing = slow(raises.second.end,raises.second.start,slowing);

  var tempItems = [];
  for(var i=0,j=raisingRaw.length;i<j;i++)
  {
    var currentItem = raisingRaw[i];
    tempItems.push(
      {
        Steps:currentItem[0],
        Dir:dir,
        Feedrate:currentItem[1]
      }
    );
  }

  //push the middle part
  tempItems.push(
    {
      Steps:midPart,
      Dir:dir,
      Feedrate:raises.second.end
    }
  );

  for(var i=0,j=slowing.length;i<j;i++)
  {
    var currentItem = slowing[i];
    tempItems.push(
      {
        Steps:currentItem[0],
        Dir:dir,
        Feedrate:currentItem[1]
      }
    );
  }
  return tempItems;
}

function thirdRamp(steps,dir)
{
  //We ar going to raise 1/4 very quickly and hold it for 2/4 and slow down 1/4
  var raising = (steps * 0.25);
  var midPart = (steps * 0.5);
  var slowing = (steps * 0.25);

  var raisingRaw = raise(raises.third.start,raises.third.end,raising);
  var slowing = slow(raises.third.end,raises.third.start,slowing);

  var tempItems = [];
  for(var i=0,j=raisingRaw.length;i<j;i++)
  {
    var currentItem = raisingRaw[i];
    tempItems.push(
      {
        Steps:currentItem[0],
        Dir:dir,
        Feedrate:currentItem[1]
      }
    );
  }
  //push the middle part
  tempItems.push(
    {
      Steps:midPart,
      Dir:dir,
      Feedrate:raises.third.end
    }
  );

  for(var i=0,j=slowing.length;i<j;i++)
  {
    var currentItem = slowing[i];
    tempItems.push(
      {
        Steps:currentItem[0],
        Dir:dir,
        Feedrate:currentItem[1]
      }
    );
  }
  return tempItems;
}

function maxRamp(steps,dir)
{
  //We ar going to raise 1/8 very fast stay 5/8 and fall down the last 2/8
  var raising = (steps * 0.125);
  var midPart = (steps * 0.625);
  var slowing = (steps * 0.25);

  var raisingRaw = raise(raises.max.start,raises.max.end,raising);
  var slowing = slow(raises.max.end,raises.max.start,slowing);

  var tempItems = [];
  for(var i=0,j=raisingRaw.length;i<j;i++)
  {
    var currentItem = raisingRaw[i];
    tempItems.push(
      {
        Steps:currentItem[0],
        Dir:dir,
        Feedrate:currentItem[1]
      }
    );
  }
  //push the middle part
  tempItems.push(
    {
      Steps:midPart,
      Dir:dir,
      Feedrate:raises.third.end
    }
  );

  for(var i=0,j=slowing.length;i<j;i++)
  {
    var currentItem = slowing[i];
    tempItems.push(
      {
        Steps:currentItem[0],
        Dir:dir,
        Feedrate:currentItem[1]
      }
    );
  }
  return tempItems;
}

/*
raises from startF (Feedrate) to endF
in stpLength steps.
*/
function raise(startF,endF,stpLength)
{
  var diff = endF - startF;
  var factor = (stpLength /diff);
  var buf = [];
  var currentF = startF;
  for(var i=0;i<factor;i++)
  {
    buf.push([factor,currentF]);
    currentF += 1;
  }
  return buf;
}

/*
raises from startF (Feedrate) to endF
in stpLength steps.
*/
function slow(startF,endF,stpLength)
{
  var diff = startF - endF ;
  var factor = (stpLength /diff);
  var buf = [];
  var currentF = startF;
  for(var i=0;i<factor;i++)
  {
    buf.push([factor,currentF]);
    currentF -= 1;
  }
  return buf;
}
