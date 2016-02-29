//loadDoc('dbdash');

//Click Button ----------------------------------------------------------------------------------------------------

$(document.body).on('click', '#siosend', function () {
    var name = $('#name').val();
    var siodata = $('#siodata').val();
    socket.emit(name, {siodata: siodata});

    console.log("socket.emit(" + name + ", { siodata: " + siodata + "});");
    console.log("JSON Data: " + json.group1.checkid);
});
$(document.body).on('click', '#siosend', function () {
    var name = $('#name').val();
    var siodata = $('#siodata').val();
    socket.emit(name, {siodata: siodata});

    console.log("socket.emit(" + name + ", { siodata: " + siodata + "});");
    console.log("JSON Data: " + json.group1.checkid);
});