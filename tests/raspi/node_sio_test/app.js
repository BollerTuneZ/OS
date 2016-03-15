var express = require('express');
var expressApp = express();
var httpServer = require("http").createServer(expressApp);
var io = require('socket.io').listen(httpServer);


httpServer.listen(3000);

io.sockets.on("connection",function(socket)
{
setInterval(function(){socket.emit("response_node",{test:"Hallo"});},1000);
	console.log("Client connected with id:" + socket.handshake.address);
	socket.on("hello_2",function(data){console.log(JSON.parse(data).val);});
});

io.sockets.on("hello",function(d)
{
	console.log("Hello has spoken");
});

