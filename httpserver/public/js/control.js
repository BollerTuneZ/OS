$(document).ready(function(){
	init();
}); 

function init(){
	
	//Inputgroup Blinker   ---------------------------------------------------------------------------------------------------
//Click Button Blinker Aus ---------------------------------------------------------------------------------------------------
	$(document.body).on('click', json.blinker.idname0, function () {
		socket.emit(json.blinker.socketname0, {siodata: '0'});
	});
//Click Button Links ---------------------------------------------------------------------------------------------------
	$(document.body).on('click', json.blinker.idnamel, function () {
		socket.emit(json.blinker.socketnamel, {'siodata': 'Links'});
	});
//Click Button Rechts---------------------------------------------------------------------------------------------------
	$(document.body).on('click', json.blinker.idnamer, function () {
		socket.emit(json.blinker.socketnamer, {'siodata': 'Rechts'});
	});
//Inputgroup Ende   ------------------------------------------------------------------------------------------------------


//Steuerung Motor --------------------------------------------------------------------------------------------------------
// mousedown setInterval -----------------------------------------------------------------------------------------------
	$(document.body).on('mousedown', json.motor.idname, function () {
		// var chts = $(json.checkid + ':checked').val();
		interval = setInterval(function () {
			//$(json.label).html($(json.rangeid).val());
			console.log($(json.motor.idname).val());
			socket.emit(json.motor.socketname, {'siodata': $(json.motor.idname).val()});
		}, 22);

	});
//mouseup clearInterval ------------------------------------------------------------------------------------------------
	$(document.body).on('mouseup', json.motor.idname, function (event) {
		clearInterval(interval);
	});
//touch -- Start -------------------------------------------------------------------------------------------------------
	$(document.body).on('touchstart', json.motor.idname, function () {
		interval = setInterval(function () {
			socket.emit(json.motor.socketname, {'siodata': $(json.motor.idname).val()});
		}, 11);
	});
//touch -- end ---------------------------------------------------------------------------------------------------------
	$(document.body).on('touchend', json.motor.idname, function (event) {
		clearInterval(interval);
		// $(json.label).html('Vorne');
	});
//ON json.motor.    ----------------------------------------------------------------------------------------------------
	socket.on(json.motor.socketname, function (data) {
		$(json.motor.idname).val(data.siodata);
		//$(json.label).html(data.siodata);
		//console.log(data.siodata);
	});
//Steuerung Motor Ende ---------------------------------------------------------------------------------------------------

//Steuerung Lenkung ------------------------------------------------------------------------------------------------------
// mousedown setInterval -----------------------------------------------------------------------------------------------
	$(document.body).on('mousedown', json.steering.idname, function () {
		interval = setInterval(function () {
			socket.emit(json.steering.socketname, {'siodata': $(json.steering.idname).val()});
			console.log($(json.steering.idname).val());
		}, 22);
	});
//mouseup clearInterval ------------------------------------------------------------------------------------------------
	$(document.body).on('mouseup', json.steering.idname, function (event) {
		clearInterval(interval);
		console.log("clear");
		$(json.steering.idname).val("50");
		socket.emit(json.steering.socketname, {'siodata': "50"});
	});

//touch -- Start -------------------------------------------------------------------------------------------------------
	$(document.body).on('touchstart', json.steering.idname, function () {
		interval = setInterval(function () {
			socket.emit(json.steering.socketname, {'siodata': $(json.steering.idname).val()});
		}, 22);
	});
//touch -- end ---------------------------------------------------------------------------------------------------------
	$(document.body).on('touchend', json.steering.idname, function (event) {
		clearInterval(interval);
		$(json.steering.idname).val("50");
		socket.emit(json.steering.socketname, {'siodata': $(json.steering.idname).val()});
		// $(json.label).html('Vorne');
	});

//ON json.steering.    -----------------------------------------------------------------------------------------
	socket.on(json.steering.socketname, function (data) {
		$(json.steering.idname).val(data.siodata);
	//	$('.dial1').val(data.siodata).trigger('change');
		//$(json.label).html(data.siodata);
		//console.log(data.siodata);
	});
//Steuerung Lenkung Ende -------------------------------------------------------------------------------------------------

	
	
};