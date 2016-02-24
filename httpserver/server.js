// server.js
var express        = require('express');  
var app            = express();  
var httpServer = require("http").createServer(app);  
var conf = require('./config.json');
var json = require('./public/json/test.json');
var io = require('socket.io').listen(httpServer);

r = require('rethinkdb');

var connection = null;
r.connect( {host: 'localhost', port: 28015, db: 'test'}, function(err, conn) {
    if (err) throw err;
    connection = conn;


/*
        r.table('authors').get('114c9d3a-bfc3-4d30-9500-ac43761d371b').run(conn, function(error, result){
            if (error) throw error;
            console.log(JSON.stringify(result, null, 1 ));
        });


    r.table('authors').insert([
        { name: "William Adama", tv_show: "Battlestar Galactica",
            posts: [
                {title: "Decommissioning speech", content: "The Cylon War is long over..."},
                {title: "We are at war", content: "Moments ago, this ship received word..."},
                {title: "The new Earth", content: "The discoveries of the past few days..."}
            ]
        },
        { name: "Laura Roslin", tv_show: "Battlestar Galactica",
            posts: [
                {title: "The oath of office", content: "I, Laura Roslin, ..."},
                {title: "They look like us", content: "The Cylons have the ability..."}
            ]
        },
        { name: "Jean-Luc Picard", tv_show: "Star Trek TNG",
            posts: [
                {title: "Civil rights", content: "There are some words I've known since..."}
            ]
        }
    ]).run(connection, function(err, result) {
        if (err) throw err;
        console.log(JSON.stringify(result, null, 2));
    });
*/
    r.table('authors').run(connection, function(err, cursor) {
        if (err) throw err;
        cursor.toArray(function(err, result) {
            if (err) throw err;
            console.log(JSON.stringify(result, null, 2));
        });
    });


   // console.log(test);



/*
     r.db('test').tableCreate('authors').run(connection, function(err, result) {
        if (err) throw err;
        console.log(result);
    });
   // console.log(connection);


*/
});



 
app.use(express.static(__dirname + '/public'));
 
app.get('/', function(req, res) {  
        res.sendFile(__dirname + '/public/index.html');
});

httpServer.listen(conf.port);  
console.log('Server Läuft unter http://localhost:' + conf.port);  
var counter = 0;
var vdata;
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
        console.log(data.siodata + "Zeile 60");
        test(vdata = data.siodata);
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


    function test(vdata){
        io.emit(json.ultra.front_left_1,vdata);
        io.emit(json.temp.motor1, { 'siodata' : vdata });
        io.emit(json.temp.motor0, { 'siodata' : vdata });
        io.emit(json.temp.ext0, { 'siodata' : vdata });
        io.emit(json.temp.ext1, { 'siodata' : vdata });
        io.emit(json.temp.ext2, { 'siodata' : vdata });
        io.emit(json.temp.ext3, { 'siodata' : vdata });
    }


});

