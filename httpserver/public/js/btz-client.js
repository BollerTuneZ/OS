var socket;
var json;
var reload = '';
var user = 0;
var cookie = document.cookie;


//Initialize  ------------------------------------------------------------------------------------------------------------
function Initialize(){
		SetupSocketIO();
		Init_Database();

}

function setCookie(cname, cvalue, exdays) {
	var d = new Date();
	d.setTime(d.getTime() + (exdays*24*60*60*1000));
	var expires = "expires="+d.toUTCString();
	document.cookie = cname + "=" + cvalue + " ; " + expires;
}

function deleteCookie() {
	document.cookie = "user=; expires=Thu, 01 Jan 1970 00:00:00 UTC";
	window.location.reload();
}

function loadDoc(site){
	console.log("jo");
	if(cookie == ''){
		$( "#demo" ).load( "html_modules/guest.html" );
		console.log(reload + ".html");
	}
	if(cookie == "user=guest"){
		user = 1;
		$( "#demo" ).load( "html_modules/guest.html" );
		//console.log(cookie);
	}
	if(cookie == "user=user"){
		//console.log(cookie);
		if(site == ''){
			$( "#demo" ).load( "html_modules/" + reload + ".html" );
			console.log(reload + ".html");
		}else {
			$( "#demo" ).load( "html_modules/" + site + ".html" );
			reload = site;
			console.log(reload + ".html");
		}
	}
	if(cookie == "user=admin"){
		//console.log(cookie);

		if(site == ''){
			$( "#demo" ).load( "html_modules/" + reload + ".html" );
			console.log(reload + ".html");
		}else {
			$( "#demo" ).load( "html_modules/" + site + ".html" );
			reload = site;
			console.log(reload + ".html");
		}
	}
}

function Init_GuiEvents(){

	//Click Button ----------------------------------------------------------------------------------------------------
	$(document.body).on('click', '#siosend', function () {
		var name = $('#name').val();
		var siodata = $('#siodata').val();
		socket.emit(name, {siodata: siodata});

		console.log("socket.emit(" + name + ", { siodata: " + siodata + "});");
		console.log("JSON Data: " + json.group1.checkid);
	});
//Inputgroup   -----------------------------------------------------------------------------------------------------------
//Click Button Check ---------------------------------------------------------------------------------------------------
	$(document.body).on('click', json.checkid, function () {
		var chts = $(json.checkid + ':checked').val();
		if (chts == "on") {
			console.log('On');
			chts = "1";
			//$( json.rangeid ).prop( "disabled", false );
		} else {
			console.log('Off');
			chts = "0";
			//$( json.rangeid ).prop( "disabled", true );
		}
		socket.emit(json.group1.socketname2, {siodata: chts});
	});
//Click Button ---------------------------------------------------------------------------------------------------------
	$(document.body).on('click', json.button1id, function () {
		$(json.rangeid).prop("disabled", false);
		$(json.rangeid).val('100');
		$(json.checkid).prop("checked", true);
		socket.emit(json.group1.socketname1, {'siodata': '100'});
		console.log($(json.rangeid).val());
	});
//Click Button ---------------------------------------------------------------------------------------------------------
	$(document.body).on('click', json.button2id, function () {

		$(json.rangeid).val('0');
		$(json.checkid).prop("checked", false);
		socket.emit('test', {'siodata': '0'});
		console.log($(json.rangeid).val());
	});
//mousedown setInterval ------------------------------------------------------------------------------------------------
	$(document.body).on('mousedown', json.rangeid, function () {
		var chts = $(json.checkid + ':checked').val();
		if (chts == "on") {
			interval = setInterval(function () {
				$(json.label).html($(json.rangeid).val());
				socket.emit(json.group1.socketname1, {'siodata': $(json.rangeid).val()});
			}, 22);
		}
	});
//mouseup clearInterval ------------------------------------------------------------------------------------------------
	$(document.body).on('mouseup', json.rangeid, function (event) {
		var chts = $(json.checkid + ':checked').val();
		if (chts == "on") {
			clearInterval(interval);
			$(json.label).html('Vorne');
		}
	});
//touch -- Start -------------------------------------------------------------------------------------------------------
	$(document.body).on('touchstart', json.rangeid, function () {
		interval = setInterval(function () {
			$(json.label).html($(json.rangeid).val());
			socket.emit(json.group1.socketname1, {'siodata': $(json.rangeid).val()});
			console.log($(json.rangeid).val());
		}, 11);
	});
//touch -- end ---------------------------------------------------------------------------------------------------------
	$(document.body).on('touchend', json.rangeid, function (event) {
		clearInterval(interval);
		$(json.label).html('Vorne');
	});
//Inputgroup Ende   ------------------------------------------------------------------------------------------------------

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

//ON test --------------------------------------------------------------------------------------------------
	socket.on(json.group1.socketname1, function (data) {
		$(json.rangeid).val(data.siodata);
		//$(json.label).html(data.siodata);
		console.log(data.siodata);
	});
//ON json.group1.socketname2 --------------------------------------------------------------------------------------------------
	socket.on(json.group1.socketname2, function(data){
		if(data.siodata == "1"){
			$( "#checktest" ).prop('checked', true);
		}else{
			$( "#checktest" ).prop('checked', false);
		}
		//console.log(data.siodata);
	});
}

function Init_Sensor(){


	socket.on(json.temp.motor0, function(data){
		$(json.temp.motor0_label_id).val(data.siodata).trigger('change');
	});
	socket.on(json.temp.motor1, function(data){
		$(json.temp.motor1_label_id).val(data.siodata).trigger('change');
	});
	socket.on(json.temp.ext0, function(data){
		$(json.temp.ext0_label_id).val(data.siodata).trigger('change');
	});
	socket.on(json.temp.ext1, function(data){
		$(json.temp.ext1_label_id).val(data.siodata).trigger('change');
	});
	socket.on(json.temp.ext2, function(data){
		$(json.temp.ext2_label_id).val(data.siodata).trigger('change');
	});
	socket.on(json.temp.ext3, function(data){
		$(json.temp.ext3_label_id).val(data.siodata).trigger('change');
	});


	socket.on(json.ultra.front_left_1, function(data){
		$(json.ultra.front_left_1).css('width', data+'%').attr('aria-valuenow', data);
	});
	socket.on(json.ultra.front_left_2, function(data){
		$(json.ultra.front_left_2).css('width', data+'%').attr('aria-valuenow', data);
		//console.log(data.siodata);
	});
	socket.on(json.ultra.front_right_1, function(data){
		$(json.ultra.front_right_1).css('width', data+'%').attr('aria-valuenow', data);
		//console.log(data.siodata);
	});
	socket.on(json.ultra.front_right_2, function(data){
		$(json.ultra.front_right_2).css('width', data+'%').attr('aria-valuenow', data);
		//console.log(data.siodata);
	});

	socket.on(json.ultra.rear_left_1, function(data){
		$(json.ultra.rear_left_1).css('width', data+'%').attr('aria-valuenow', data);
		//console.log(data.siodata);
	});
	socket.on(json.ultra.rear_left_2, function(data){
		$(json.ultra.rear_left_2).css('width', data+'%').attr('aria-valuenow', data);
		//console.log(data.siodata);
	});
	socket.on(json.ultra.rear_right_1, function(data){
		$(json.ultra.rear_right_1).css('width', data+'%').attr('aria-valuenow', data);
		//console.log(data.siodata);
	});
	socket.on(json.ultra.rear_right_2, function(data){
		$(json.ultra.rear_right_2).css('width', data+'%').attr('aria-valuenow', data);
		//console.log(data.siodata);
	});

	socket.on(json.enco.steering, function(data){

		//console.log(data.siodata);
	});
	socket.on(json.enco.rpm, function(data){

		//console.log(data.siodata);
	});

	socket.on(json.push.button0, function(data){

		//console.log(data.siodata);
	});
	socket.on(json.push.button1, function(data){

		//console.log(data.siodata);
	});
	socket.on(json.push.button2, function(data){

		//console.log(data.siodata);
	});
	socket.on(json.push.button3, function(data){

		//console.log(data.siodata);
	});
	socket.on(json.push.button4, function(data){

		//console.log(data.siodata);
	});
	socket.on(json.push.button5, function(data){

		//console.log(data.siodata);
	});


}

function Init_Database(){

	$(document.body).on('click', '#dbsend', function () {
		var name = $('#name').val();
		var email = $('#email').val();
		var pw = $('#pw').val();
		var accr = $('#accr').val();
		var siodata = $('#siodata').val();
		socket.emit('newacc', {'siodata': siodata, 'name': name, 'email': email, 'pw': pw, 'accr': accr });

		//console.log("socket.emit(" + name + ", { siodata: " + siodata + "});");
		//console.log("JSON Data: " + json.group1.checkid);
	});

	$(document.body).on('click', '#dbreaduser', function () {
		var name = $('#username').val();
		var pw = $('#password').val();
		socket.emit('readuser', {'name': name, 'pw': pw });

		//console.log("socket.emit(" + name + ", { siodata: " + siodata + "});");
		//console.log("JSON Data: " + json.group1.checkid);
	});

	$(document.body).on('click', '#keysend', function () {
		var key = $('#key').val();

		socket.emit('readkey', {'key': key});

		//console.log("socket.emit(" + name + ", { siodata: " + siodata + "});");
		//console.log("JSON Data: " + json.group1.checkid);
	});
	$(document.body).on('click', '#login', function () {
		var name = $('#username').val();
		var pw = $('#password').val();
		socket.emit('login', {'name': name, 'pw': pw });

		//console.log("socket.emit(" + name + ", { siodata: " + siodata + "});");
		//console.log("JSON Data: " + json.group1.checkid);
	});



}

function SetupSocketIO(){
	//SocketIO verbinden ----------------------------------------------------------------------------------------------
		socket = io.connect();
//ON Disconnect ---------------------------------------------------------------------------------------------------
		socket.on("disconnect", function(){
			$('#onoffline').modal('show');
			window.location.reload();
		});
//ON Connect ------------------------------------------------------------------------------------------------------
		socket.on("connect", function(){
			$('#onoffline').modal('hide');
			
		});
	socket.on("id_event",function(data){
		json = data;
		//console.log(json);
		Init_GuiEvents();
		Init_Sensor();

		});
	socket.on('warning', function(data){
		//$(json.label).html(data.siodata);
		console.log(data.siodata);
		$('#warning').modal('show');
	});
	socket.on("login", function(data){
		console.log(data.accr);
		setCookie('user', data.accr, 10);
		window.location.reload();
	});
}

$(document).ready(function(){

	if(cookie == ''){
		setCookie('user', 'guest', 10);
	}
	$("userlabel").text(cookie);
	loadDoc('dash');
	Initialize();

});




