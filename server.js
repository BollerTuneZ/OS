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

app.get('/', function(req, res) {  
        res.sendFile(__dirname + '/public/index.html');
});
 
httpServer.listen(conf.port);  
console.log('Server Läuft unter http://localhost:' + conf.port);  

 

 
//Socket connection handler
io.sockets.on('connection', function (socket) {
        console.log(socket.id);
 
        socket.on('led:on', function (data) {
           console.log('LED ON RECEIVED');
           
        });
 
        socket.on('led:off', function (data) {
            console.log('LED OFF RECEIVED');
 
        });
        
        socket.on('led:trigger', function (data) {
            console.log('LED Trigger RECEIVED');
 
        });
        
    });
 
 