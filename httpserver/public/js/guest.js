$(document).ready(function(){
	init();
});

function init()
{
	socket.on('welt',function()
	{
		console.log("Welt");
	});
}

function sayHello()
{
	socket.emit('hello');
}

