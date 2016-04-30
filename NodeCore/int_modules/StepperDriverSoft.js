var SerialPort = require("serialport").SerialPort;
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

var port = new SerialPort("/dev/ttyUSB1", {
	baudrate: 9600
});
port.on('data',function(data)
{
	console.log('Data' + data);
});

function Initialize(baudRate,callback)
{
	console.log("Initializing")

	port.on('open',function()
	{
		console.log("Port opend");
			setTimeout(function()
		{
			port.write(initCommand,function(e,b){
				if (e) {
					console.log('Error: ', e.message);
				}
				console.log("Bytes written:" + b);
			});
		},1000);


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
