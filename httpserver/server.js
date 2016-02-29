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

    function readkey(key) {
        r.table('user').get(key).run(conn, function (error, result) {
            if (error) throw error;
            console.log(JSON.stringify(result, null, 1));
        });
    }

    function newacc(name, email, pw, accr) {
        r.table('user').insert([
            {
                name: name,
                email: email,
                password: pw,
                accrights: accr
            }
        ]).run(connection, function (err, result) {
            if (err) throw err;
            console.log(JSON.stringify(result, null, 2));
        });
    }

    function readdb() {
        //Datenbank auslesen
        r.table('authors').run(connection, function (err, cursor) {
            if (err) throw err;
            cursor.toArray(function (err, result) {
                if (err) throw err;
                console.log(JSON.stringify(result, null, 2));
            });
        });
    }

    function readuser(name) {

    }
/*
     r.db('test').tableCreate('authors').run(connection, function(err, result) {
        if (err) throw err;
        console.log(result);
    });
   // console.log(connection);


*/

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
    socket.on( "insertdb" , function(data) {
        console.log(data);
        insertdb();
    });
    socket.on( "readtable" , function(data) {
        console.log(data);
        readtable();
    });

    socket.on( "readuser" , function(data) {
        console.log(data.name);
        readuser(data.name);

    });

    socket.on("newacc", function (data) {
        console.log(data.name, data.email, data.pw, data.accr);
        newacc(data.name, data.email, data.pw, data.accr);
    });
    socket.on("readkey", function (data) {
        console.log(data.key);
        readkey(data.key);
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

});
