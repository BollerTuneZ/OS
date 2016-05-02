var serialport = require('serialport');
var gpio = require('wpi-gpio');

var SerialPort = serialport.SerialPort;
var initCommand = 'RUN';
var initialized = false;

var listenerCallback;
var onBusyChanged;

//GPIO pin to trigger emergencystop at the arduino
var eStopPin = -1;

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
	ok:16,
	fault:32,
	buf_overflow:33,
	ready : 'R',
	busy : 'B',
	eStop:'S'
};
var port;

/*
*connectionInfo{
 baudrate:INT,
 port:STRING,
 eStopPin:INT
}
*/
function Initialize(connectionInfo,callback,onBusyCallback)
{
	console.log("Initializing")
	eStopPin = connectionInfo.eStopPin;
	InitializeIntPin();
	onBusyChanged = onBusyCallback;
	port = new SerialPort(connectionInfo.port, {
		baudrate: connectionInfo.baudrate,
		parser: serialport.parsers.readline('\n')
	});

	port.on('data',function(data)
	{
		//console.log('Data' + data);
		if(listenerCallback != undefined)
		{
			listenerCallback(data);
		}
	});

	port.on('open',function()
	{
		connectDevice(callback);
	});
}

function InitializeIntPin()
{
	gpio.mode(eStopPin,'out', function(err) {
		if(err)
		{
			console.log(err);
		}
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
		console.log("Here");
		if(data == 16)
		{
			console.log("Here ok!");
			initialized = true;
			listenerCallback = GenReceive;
			callback(true);
		}else{
			console.log('Error' + data);
		}
	}
	writeInit();
	function repeat()
	{
		if(!initialized)
		{
			writeInit();
			setTimeout(repeat,500);
		}
	}
	setTimeout(function()
	{
		repeat();
	},500);

}

function GenReceive(data)
{

	if(data[0] == gc_status.ready)
	{
		console.log("Ready");
		if(onBusyChanged != undefined)
		{
			onBusyChanged(true);
		}
	}else if(data[0] == gc_status.busy)
	{
		console.log("Busy");
		if(onBusyChanged != undefined)
		{
			onBusyChanged(false);
		}
	}else if(data[0] == gc_status.ok)
	{
		console.log("OK");
	}else if(data[0] == gc_status.fault)
	{
		console.log("FAULT");
	}else if(data[0] == gc_status.buf_overflow)
	{
		console.log("buf_overflow");
	}else if(data[0] == gc_status.eStop)
	{
		console.log("Interrupt has been triggered");
	}else {
		//console.log('Raw:' + data);
	}
}

function triggerEStop()
{
	gpio.write(eStopPin, 1, function(err) {
				gpio.write(eStopPin, 0);
		});
}

function EmergencyStop()
{
	triggerEStop();
}

/* Dir : 'L' || 'R'
*
*/
function Drive(steps,dir,feedrate,callback)
{
	if(!initialized){callback("not init");}
	var buffer = "";
	if(dir != lastDirection)
	{
		console.dir("ajust direction");
		buffer += gc.dir + dir + "E";

		port.write(buffer,function(e,b){
			if (e) {
				console.log('Error: ', e.message);
			}
			console.log("Bytes written:" + b);
		});
		lastDirection = dir;
	}

	buffer = "";
	if(feedrate != lastFeedrate)
	{
		console.dir("ajust feedrate");
		buffer += gc.feedrate + feedrate + "E";
		port.write(buffer,function(e,b){
			if (e) {
				console.log('Error: ', e.message);
			}
			console.log("Bytes written:" + b);
		});
		lastFeedrate = feedrate;
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

var exports = module.exports;
exports.Initialize = Initialize;
exports.Drive = Drive;
exports.EmergencyStop = EmergencyStop;
