var express = require('express');
var expressApp = express();
var httpServer = require("http").createServer(expressApp);
var io = require('socket.io').listen(httpServer);


httpServer.listen(3000);

io.sockets.on("connection",function(socket)
{
	console.log("Client connected with id:" + socket.handshake.address);
	socket.on("hello",function(data){console.log("Hello");});
});

io.sockets.on("hello",function(d)
{
	console.log("Hello has spoken");
});
