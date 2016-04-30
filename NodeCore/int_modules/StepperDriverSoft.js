
var initCommand = 'RUN';

var states = 
{
	gc_ok:0x10,
	gc_fault:0x20,
	gc_buff_overflow:0x21
};

var SerialPort = require("serialport").SerialPort;

var serialport = new SerialPort("/dev/ttyUSB0");

var SerialPort = require("serialport").SerialPort
var serialPort = new SerialPort("/dev/ttyUSB0", {
  baudrate: 9600
});

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


