// server.js
var express        = require('express');  
var app            = express();  
var httpServer = require("http").createServer(app);  
var conf = require('./config.json');
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
 
        socket.on('test', function (data) {

            console.log(data.siodata);
            io.sockets.emit('test', { siodata: data.siodata });
        });

        socket.on('test2', function (data) {
            console.log(data.siodata);
            io.sockets.emit('test2', { siodata: data.siodata });
        });
        
        socket.on('led:trigger', function (data) {
            console.log('LED Trigger RECEIVED');
 
        });



        
    });
 
 