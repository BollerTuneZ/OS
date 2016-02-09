var express        = require('express') 
,	app            = express();  
var server = require("http").createServer(server);
var io = require('socket.io')(server);
var conf = require('./config.json');

server.listen(conf.port);  
// Portnummer in die Konsole schreiben
// console.log('Der Server läuft nun unter http://127.0.0.1:' + conf.port + '/');

app.use(express.static(__dirname + '/public'));
 
app.get('/', function(req, res) {  
        res.sendFile(__dirname + '/public/index.html');
        console.log("Hallo");
});

// Websocket
io.sockets.on('connection', function (socket) {
	
});

console.log('Der Server läuft nun unter http://127.0.0.1:' + conf.port + '/');