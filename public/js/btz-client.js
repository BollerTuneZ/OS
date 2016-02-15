$(document).ready(function(){
//Lädt JSON File  -------------------------------------------------------------------------------------------------
	$.getJSON("../json/test.json", function(json) {
//SocketIO verbinden ----------------------------------------------------------------------------------------------
		var socket = io.connect();
//ON Disconnect ---------------------------------------------------------------------------------------------------
		socket.on("disconnect", function(){
			$('#onoffline').modal('show')
		});
//ON Connect ------------------------------------------------------------------------------------------------------
		socket.on("connect", function(){
			$('#onoffline').modal('hide')
		});
//ON json.socketname1 ---------------------------------------------------------------------------------------------
		socket.on(json.socketname1, function(data){
			$(json.rangeid).val(data.siodata);
			//$(json.label).html(data.siodata);
		});
//ON json.socketname2 ---------------------------------------------------------------------------------------------
		socket.on(json.socketname2, function(data){
			//$( "#checktest" ).val(data.siodata);
			console.log(data.siodata);
		});
//Click Button ----------------------------------------------------------------------------------------------------
		$(document.body).on('click', '#siosend' ,function(){
			var name = $('#name').val();
			var siodata = $('#siodata').val();
			socket.emit(name, { siodata: siodata });
			console.log( "socket.emit(" + name + ", { siodata: " + siodata + "});" );
		});
//Inputgroup   ----------------------------------------------------------------------------------------------------
		$(document.body).on('click', json.checkid ,function(){
			var chts = $(json.checkid + ':checked').val();
			if(chts == "on"){
				console.log('On');
				chts = "1";
				$( json.rangeid ).prop( "disabled", false );
			}else{
				console.log('Off');
				chts = "0";
				$( json.rangeid ).prop( "disabled", true );
			}
			socket.emit(json.socketname2 , { siodata: chts });
		});
//Click Button ----------------------------------------------------------------------------------------------------
		$(document.body).on('click', json.button1id ,function(){
			$(json.rangeid).prop( "disabled", false );
			$(json.rangeid).val('100');
			$(json.checkid).prop( "checked", true );
			socket.emit(json.socketname1, { 'siodata': '100' });
			console.log( $(json.rangeid).val());
		});
//Click Button ----------------------------------------------------------------------------------------------------
		$(document.body).on('click', json.button2id ,function(){
			$(json.rangeid).prop( "disabled", true );
			$(json.rangeid).val('0');
			$(json.checkid).prop( "checked", false );
			socket.emit('test', { 'siodata': '0' });
			console.log( $(json.rangeid).val());
		});
//mousedown setInterval -------------------------------------------------------------------------------------------
		$(document.body).on('mousedown', json.rangeid ,function(){
		});
//mouseup clearInterval -------------------------------------------------------------------------------------------
		$(document.body).on('mouseup', json.rangeid ,function(event){
		});
//touch -- Start --------------------------------------------------------------------------------------------------
		$(document.body).on('touchstart', json.rangeid ,function(){
			interval = setInterval(function(){
				$(json.label).html($(json.rangeid).val())
				socket.emit(json.socketname1, { 'siodata': $(json.rangeid).val() });
			},11);
		});
//touch -- end ----------------------------------------------------------------------------------------------------
		$(document.body).on('touchend', json.rangeid ,function(event){
			clearInterval(interval);
			$(json.label).html('Vorne')
		});
	});
});

