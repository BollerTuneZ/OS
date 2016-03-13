// server.js
var express        = require('express');  
var app            = express();  
var httpServer = require("http").createServer(app);  
var conf = require('./config.json');
var json = require('./public/json/test.json');
var io = require('socket.io').listen(httpServer);
var r = require('rethinkdb');
var md5 = require('js-md5');
var util = require("./intern_modules/util.js");
var connection = null;
var ip = "";

'use strict';

var os = require('os');
var ifaces = os.networkInterfaces();

//Data Buffer
var statusMaxBuffer = 500;
var statusBuf = [];

Object.keys(ifaces).forEach(function (ifname) {
    var alias = 0;

    ifaces[ifname].forEach(function (iface) {
        if ('IPv4' !== iface.family || iface.internal !== false) {
            // skip over internal (i.e. 127.0.0.1) and non-ipv4 addresses
            return;
        }
        if (alias >= 1) {
            // this single interface has multiple ipv4 addresses
           // console.log(ifname + ':' + alias, iface.address);
        } else {
            // this interface has only one ipv4 adress
           // console.log(ifname, iface.address);
            ip = iface.address;
        }
        ++alias;
    });
});




app.use(express.static(__dirname + '/public'));

app.get('/', function(req, res) {
    res.sendFile(__dirname + '/public/index.html');
});
console.log(util.StrF("Hallo {0}!","Welt"));

httpServer.listen(conf.port);
console.log('Server Läuft unter http://localhost:' + conf.port);
console.log('Server IP Adresse http://' + ip + ':' +conf.port);

var counter = 0;
var vdata;


// Core Server Events
io.sockets.on('status',function(statusPacket)
{
	statusBuf.push(statusPacket);
	var statusBufLength = statusBuf.length;
	if(statusBufLength > statusMaxBuffer)
	{
		statusBuf = util.ShrinkArray(statusBuf,1);
	}
});

function clientFirstStart(socket)
{
	socket.emit('c_fStatus',{statusPackets:statusBuf});
}

r.connect( {host: 'localhost', port: 28015, db: 'test'}, function(err, conn) {
    if (err) throw err;



//Socket connection handler
    io.sockets.on('connection', function (socket) {
		
		clientFirstStart(socket);
		
        var address = socket.handshake.address;

        console.log(address);

        function readkey(key) {
            r.table('user').get(key).run(conn, function (error, result) {
                if (error) throw error;
                console.log(JSON.stringify(result, null, 1));
                console.log(result.name);
            });
        }

        function newacc(name, email, pw, accr) {

            md5(pw);
            var hash = md5.create();
            hash.update(pw);
            hash.hex();
            console.log(hash.hex());

            r.table('user').insert([
                {
                    name: name,
                    email: email,
                    password: hash,
                    accrights: accr
                }
            ]).run(conn, function (err, result) {
                if (err) throw err;
                console.log(JSON.stringify(result, null, 2));
            });
        }



        /*
        function readuser(name) {

            r.table('user').filter({name: name}).run(connection, function(err, cursor){
                if (err) throw err;
                cursor.toArray(function (err, result) {
                    if (err) throw err;
                   // console.log(JSON.stringify(result, null, 2));
                    io.emit(json.temp.ext3, { 'siodata' : vdata });
                });
            });
        }
         r.db('test').tableCreate('authors').run(connection, function(err, result) {
            if (err) throw err;
            console.log(result);
        });
       // console.log(connection);
    */



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

        socket.on( "login" , function(data) {
            //console.log(data.name);
            //readuser(data.name);
            login(data.name, data.pw);


            function login(namein, pwin) {

                r.table('user').filter({name: namein}).run(conn, function(err, cursor){
                    if (err) throw err;
                    console.log(namein);
                    cursor.each(function (err, result) {
                        if (err) throw err;
                        if (namein === result.name && pwin === result.password){
                            socket.emit('login', {'name': result.name, 'pw': result.password, 'accr': result.accrights });
                            socket.emit('restore', {'name': result.name, 'pw': result.password, 'accr': result.accrights });
                            console.log(result.name);
                            console.log(namein + " = " + result.name);
                            console.log(pwin + " = " + result.password);
                            console.log(result.accrights);
                            //console.log(socketid);
                        }else {
                            console.log("Login Versuch Fehlgeschlagen!");
                            socket.emit('loginfail', {'siodata': "Fail"});

                        }
                    });



                });
            }
        });

        socket.on("newacc", function (data) {
            console.log(data.name, data.email, data.pw, data.accr);
            newacc(data.name, data.email, data.pw, data.accr);
        });
        socket.on("readkey", function (data) {
            console.log(data.key);
            readkey(data.key);
        });

        socket.on("hello", function (data) {
            console.log("Hello");
	socket.emit('welt');
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
