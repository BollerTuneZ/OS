// server.js
var express        = require('express');  
var app            = express();  
var httpServer = require("http").createServer(app);  
var conf = require('./config.json');
var json = require('./public/json/test.json');
var io = require('socket.io').listen(httpServer);

 
app.use(express.static(__dirname + '/public'));
 
app.get('/', function(req, res) {  
        res.sendFile(__dirname + '/public/index.html');
});

httpServer.listen(conf.port);  
console.log('Server Läuft unter http://localhost:' + conf.port);  

//Socket connection handler
io.sockets.on('connection', function (socket) {
    console.log(socket.id);
	
	socket.emit('id_event',json);
	
    socket.on(json.group1.socketname1, function (data) {
            socket.broadcast.emit(json.group1.socketname1, { siodata: data.siodata });
    });
    socket.on(json.group1.socketname2, function (data) {
        socket.broadcast.emit(json.group1.socketname2, { siodata: data.siodata });
    });
    socket.on(json.motor.socketname, function (data) {
        console.log(data.siodata);
        socket.broadcast.emit(json.motor.socketname, { siodata: data.siodata });
    });
    socket.on(json.steering.socketname, function (data) {
        console.log(data.siodata);
        socket.broadcast.emit(json.steering.socketname, { siodata: data.siodata });
    });
    socket.on(json.blinker.socketname0, function (data) {
        console.log(data.siodata);
       // socket.broadcast.emit(json.blinker.socketname0, { siodata: data.siodata });
    });
    socket.on(json.blinker.socketnamel, function (data) {
        console.log(data.siodata);
        // socket.broadcast.emit(json.blinker.socketnamel, { siodata: data.siodata });
    });
    socket.on(json.blinker.socketnamer, function (data) {
        console.log(data.siodata);
        // socket.broadcast.emit(json.blinker.socketnamer, { siodata: data.siodata });
    });


});

