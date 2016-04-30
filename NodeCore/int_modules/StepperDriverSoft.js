var SerialPort = require("serialport").SerialPort;
var port;
var initCommand = 'RUN';
var initialized = false;

module.exports =
{
	Initialize:Initialize,
	Drive:Drive
};

var gc =
{
	move:'M',
	dir:'D',
	feedrate:'F'
};
var lastDirection = 'X';
var lastFeedrate = 0;

var gc_status =
{
	ok:0x10,
	fault:0x20,
	buf_overflow:0x21
};


function Initialize(baudRate,callback)
{
	port = new SerialPort("/dev/ttyUSB0", {
	  baudrate: baudRate
	});
	port.on('open',function()
	{
		port.write(initCommand,function(e,b){
			if (err) {
				console.log('Error: ', err.message);
			}
		});
		port.on('data',function(data)
		{
			if(data == states.gc_ok)
			{
				initialized = true;
				callback(true);
			}else {
				callback(false);
			}
		});
	})
}

/* Dir : 'L' || 'R'
*
*/
function Drive(steps,dir,feedrate,callback)
{
	if(!initialized){return -1;}
	var buffer = "";
	var dirState = false,feedrateState=false;
	if(dir != lastDirection)
	{
		buffer += gc.dir + dir + "E";
		port.on('data',function(data)
		{
			lastDirection = dir;
			if(data == states.gc_ok)
			{
				dirState = true;
			}
		});
		port.write(buffer);
	}else {
		dirState = true;
	}

	while(!dirState){}
	buffer = "";
	if(feedrate != lastFeedrate)
	{
		buffer += gc.feedrate + feedrate + "E";
		port.on('data',function(data)
		{
			if(data == states.gc_ok)
			{
				feedrateState = true;
			}
		});
		port.write(buffer);
	}
	while(!feedrateState){}
	buffer = "";
	buffer += gc.feedrate + feedrate + "E";
	port.on('data',function(data)
	{
		if(data == states.gc_ok)
		{
			if(callback != undefined)
			{
				callback(true);
			}else {
				callback(false);
			}
		}
	});
	port.write(buffer);

}



serialPort.on('data', function (data) {
	if(data == states.gc_ok)
	{
		console.log("State is OK");
	}else if(data == states.gc_fault)
	{
		console.log("State is FAULT");
	}else if(data == states.gc_buff_overflow)
	{
		console.log("State is Overflow");
	}else
	{
		console.log('Data: ' + data);
	}
});

serialPort.on('open', function () {
	setInterval(writeToSlave,1000);
});

function writeToSlave()
{
  serialPort.write(initCommand, function(err, bytesWritten) {
    if (err) {
      return console.log('Error: ', err.message);
    }
    console.log(bytesWritten, 'bytes written');
  });
}
