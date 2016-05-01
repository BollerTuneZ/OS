var SerialPort = require("serialport").SerialPort;
var initCommand = 'RUN';
var initialized = false;

var listenerCallback;

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

var port = new SerialPort("/dev/ttyUSB1", {
	baudrate: 9600
});

port.on('data',function(data)
{
	console.log('Data' + data);
	if(listenerCallback != undefined)
	{
		listenerCallback(data);
	}
});


function Initialize(callback)
{
	console.log("Initializing")

	port.on('open',function()
	{
		connectDevice(callback);
	});
}

function connectDevice(callback)
{
	if(initialized){return;}
	function writeInit()
	{
		port.write(initCommand,function(e,b){
			if (e) {
				console.log('Error: ', e.message);
			}
			console.log("Bytes written:" + b);
		});
	}
  listenerCallback = function(data)
	{
		if(data == gc_status.gc_ok)
		{
			initialized = true;
			callback(true);
		}
	}
	writeInit();
	if(!initialized)
	{
		setTimeout(connectDevice,1000,callback);
	}
}

/* Dir : 'L' || 'R'
*
*/
function Drive(steps,dir,feedrate,callback)
{
	if(!initialized){callback("not init");}
	var buffer = "";
	var dirState = false,feedrateState=false;
	if(dir != lastDirection)
	{
		console.dir("ajust direction");
		buffer += gc.dir + dir + "E";
		port.on('data',function(data)
		{
			console.log('Data' + data);
			lastDirection = dir;
			if(data == gc_status.gc_ok)
			{
				dirState = true;
			}
		});
		port.write(buffer,function(e,b){
			if (e) {
				console.log('Error: ', e.message);
			}
			console.log("Bytes written:" + b);
		});
	}else {
		dirState = true;
	}


	buffer = "";
	if(feedrate != lastFeedrate)
	{
		console.dir("ajust feedrate");
		buffer += gc.feedrate + feedrate + "E";

		port.on('data',function(data)
		{
			console.log('Data' + data);
			if(data == gc_status.gc_ok)
			{
				feedrateState = true;
				lastFeedrate = feedrate;
			}
		});

		port.write(buffer,function(e,b){
			if (e) {
				console.log('Error: ', e.message);
			}
			console.log("Bytes written:" + b);
		});
	}

	buffer = "";
	buffer += gc.move + steps + "E";
	console.log(buffer);
	port.write(buffer,function(e,b){
		if (e) {
			console.log('Error: ', e.message);
		}
		console.log("Bytes written:" + b);
	});

}
