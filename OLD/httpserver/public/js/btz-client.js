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
		$( "#demo" ).load( "html_modules/guest.html" ,function()
		{
			$('#btnOk').on('click',function(){ console.log("Hello World!");});
		});
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
	
	console.log(json.front.checkid);
	//Inputgroup   -----------------------------------------------------------------------------------------------------------
//Click Button Check ---------------------------------------------------------------------------------------------------
	$(document.body).on('click', json.front.checkid, function () {
		var chts = $(json.front.checkid + ':checked').val();
		if (chts == "on") {
			console.log('On');
			chts = "1";
			//$( json.rangeid ).prop( "disabled", false );
		} else {
			console.log('Off');
			chts = "0";
			//$( json.rangeid ).prop( "disabled", true );
		}
		socket.emit(json.front.socketname1, {'siodata': chts});
	});
//Click Button ---------------------------------------------------------------------------------------------------------
	$(document.body).on('click', json.front.buttonid1, function () {
		$(json.front.rangeid).prop("disabled", false);
		$(json.front.rangeid).val('100');
		$(json.front.checkid).prop("checked", true);
		socket.emit(json.front.socketname1, {'siodata': '100'});
		console.log($(json.rangeid).val());
	});
//Click Button ---------------------------------------------------------------------------------------------------------
	$(document.body).on('click', json.front.buttonid2, function () {

		$(json.front.rangeid).val('0');
		$(json.front.checkid).prop("checked", false);
		socket.emit(json.front.socketname1, {'siodata': '0'});
		console.log($(json.front.rangeid).val());
	});
//mousedown setInterval ------------------------------------------------------------------------------------------------
	$(document.body).on('mousedown', json.front.rangeid, function () {
		var chts = $(json.front.checkid + ':checked').val();
		if (chts == "on") {
			interval = setInterval(function () {
				$(json.front.label).html($(json.front.rangeid).val());
				socket.emit(json.front.socketname1, {'siodata': $(json.front.rangeid).val()});
			}, 22);
		}
	});
//mouseup clearInterval ------------------------------------------------------------------------------------------------
	$(document.body).on('mouseup', json.front.rangeid, function (event) {
		var chts = $(json.front.checkid + ':checked').val();
		if (chts == "on") {
			clearInterval(interval);
			$(json.front.label).html('Vorne');
		}
	});
//touch -- Start -------------------------------------------------------------------------------------------------------
	$(document.body).on('touchstart', json.front.rangeid, function () {
		interval = setInterval(function () {
			$(json.front.label).html($(json.front.rangeid).val());
			socket.emit(json.front.socketname1, {'siodata': $(json.front.rangeid).val()});
			console.log($(json.front.rangeid).val());
		}, 11);
	});
//touch -- end ---------------------------------------------------------------------------------------------------------
	$(document.body).on('touchend', json.front.rangeid, function (event) {
		clearInterval(interval);
		$(json.front.label).html('Vorne');
	});
//Inputgroup Ende   ------------------------------------------------------------------------------------------------------

//Inputgroup  Hinten -----------------------------------------------------------------------------------------------------------
//Click Checkbox ---------------------------------------------------------------------------------------------------
	$(document.body).on('click', json.rear.checkid, function () {
		
		var chts = $(json.rear.checkid + ':checked').val();
		if (chts == "on") {
			console.log('On');
			chts = "1";
			//$( json.rangeid ).prop( "disabled", false );
		} else {
			console.log('Off');
			chts = "0";
			//$( json.rangeid ).prop( "disabled", true );
		}
		socket.emit(json.rear.socketname1, {'siodata': chts});
	});
//Click Button ---------------------------------------------------------------------------------------------------------
	$(document.body).on('click', json.rear.buttonid1, function () {
		$(json.rear.rangeid).prop("disabled", false);
		$(json.rear.rangeid).val('100');
		$(json.rear.checkid).prop("checked", true);
		socket.emit(json.rear.socketname1, {'siodata': '100'});
		console.log($(json.rangeid).val());
	});
//Click Button ---------------------------------------------------------------------------------------------------------
	$(document.body).on('click', json.rear.buttonid2, function () {

		$(json.rear.rangeid).val('0');
		$(json.rear.checkid).prop("checked", false);
		socket.emit(json.rear.socketname1, {'siodata': '0'});
		console.log($(json.rear.rangeid).val());
	});
//mousedown setInterval ------------------------------------------------------------------------------------------------
	$(document.body).on('mousedown', json.rear.rangeid, function () {
		var chts = $(json.rear.checkid + ':checked').val();
		if (chts == "on") {
			interval = setInterval(function () {
				console.log(json.rear.rangeid);
				$(json.rear.label).html($(json.rear.rangeid).val());
				socket.emit(json.rear.socketname1, {'siodata': $(json.rear.rangeid).val()});
			}, 22);
		}
	});
//mouseup clearInterval ------------------------------------------------------------------------------------------------
	$(document.body).on('mouseup', json.rear.rangeid, function (event) {
		var chts = $(json.rear.checkid + ':checked').val();
		if (chts == "on") {
			clearInterval(interval);
			$(json.rear.label).html('Hinten');
		}
	});
//touch -- Start -------------------------------------------------------------------------------------------------------
	$(document.body).on('touchstart', json.rear.rangeid, function () {
		interval = setInterval(function () {
			$(json.rear.label).html($(json.rear.rangeid).val());
			socket.emit(json.rear.socketname1, {'siodata': $(json.rear.rangeid).val()});
			console.log($(json.rear.rangeid).val());
		}, 11);
	});
//touch -- end ---------------------------------------------------------------------------------------------------------
	$(document.body).on('touchend', json.rear.rangeid, function (event) {
		clearInterval(interval);
		$(json.rear.label).html('Vorne');
	});
//Inputgroup Hinten Ende   ------------------------------------------------------------------------------------------------------

	
//Inputgroup  All -----------------------------------------------------------------------------------------------------------
//Click Checkbox ---------------------------------------------------------------------------------------------------
	$(document.body).on('click', json.all.checkid, function () {
		
		var chts = $(json.all.checkid + ':checked').val();
		if (chts == "on") {
			console.log('On');
			$(json.front.checkid).prop("checked", true);
			$(json.rear.checkid).prop("checked", true);
			chts = "1";
			//$( json.rangeid ).prop( "disabled", false );
		} else {
			console.log('Off');
			$(json.front.checkid).prop("checked", false);
			$(json.rear.checkid).prop("checked", false);
			chts = "0";
			//$( json.rangeid ).prop( "disabled", true );
		}
		socket.emit(json.all.socketname1, {'siodata': chts});
	});
//Click Button ---------------------------------------------------------------------------------------------------------
	$(document.body).on('click', json.all.buttonid1, function () {
		$(json.all.rangeid).prop("disabled", false);
		$(json.all.rangeid).val('100');
		$(json.all.checkid).prop("checked", true);
		
		$(json.front.rangeid).prop("disabled", false);
		$(json.front.rangeid).val('100');
		$(json.front.checkid).prop("checked", true);
		
		$(json.rear.rangeid).prop("disabled", false);
		$(json.rear.rangeid).val('100');
		$(json.rear.checkid).prop("checked", true);
		
		socket.emit(json.all.socketname1, {'siodata': '100'});
		console.log($(json.rangeid).val());
	});
//Click Button ---------------------------------------------------------------------------------------------------------
	$(document.body).on('click', json.all.buttonid2, function () {

		$(json.all.rangeid).val('0');
		$(json.all.checkid).prop("checked", false);
		
		$(json.front.rangeid).val('0');
		$(json.front.checkid).prop("checked", false);
		
		$(json.rear.rangeid).val('0');
		$(json.rear.checkid).prop("checked", false);
		
		socket.emit(json.all.socketname1, {'siodata': '0'});
		console.log($(json.all.rangeid).val());
	});
//mousedown setInterval ------------------------------------------------------------------------------------------------
	$(document.body).on('mousedown', json.all.rangeid, function () {
		var chts = $(json.all.checkid + ':checked').val();
		if (chts == "on") {
			interval = setInterval(function () {
				var val = $(json.all.rangeid).val();
				console.log(json.all.rangeid);
				$(json.all.label).html(val);
				$(json.front.rangeid).val(val);
				$(json.rear.rangeid).val(val);
				socket.emit(json.all.socketname1, {'siodata': val });
			}, 22);
		}
	});
//mouseup clearInterval ------------------------------------------------------------------------------------------------
	$(document.body).on('mouseup', json.all.rangeid, function (event) {
		var chts = $(json.all.checkid + ':checked').val();
		if (chts == "on") {
			clearInterval(interval);
			$(json.all.label).html('Alle');
			$(json.front.label).html('Vorne');
			$(json.rear.label).html('Hinten');
			
		}
	});
//touch -- Start -------------------------------------------------------------------------------------------------------
	$(document.body).on('touchstart', json.all.rangeid, function () {
		interval = setInterval(function () {
			$(json.all.label).html($(json.all.rangeid).val());
			socket.emit(json.all.socketname1, {'siodata': $(json.all.rangeid).val()});
			console.log($(json.all.rangeid).val());
		}, 11);
	});
//touch -- end ---------------------------------------------------------------------------------------------------------
	$(document.body).on('touchend', json.all.rangeid, function (event) {
		clearInterval(interval);
		$(json.all.label).html('Alle');
			$(json.front.label).html('Vorne');
			$(json.rear.label).html('Hinten');
	});
//Inputgroup All Ende   ------------------------------------------------------------------------------------------------------


	//Click Button ----------------------------------------------------------------------------------------------------
	$(document.body).on('click', '#siosend', function () {
		var name = $('#name').val();
		var siodata = $('#siodata').val();
		socket.emit(name, {siodata: siodata});

		console.log("socket.emit(" + name + ", { siodata: " + siodata + "});");
		console.log("JSON Data: " + json.group1.checkid);
	});


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

function onStatus(data)
{
	
}

function Init_Sensor(){

	socket.on('c_status',onStatus);
	
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
	
	socket.on(json.front.socketname1, function(data){
		console.log(data);
		$(json.front.rangeid).val(data.siodata);
		
	});
	
	socket.on(json.rear.socketname1, function(data){
		console.log(data);
		$(json.rear.rangeid).val(data.siodata);
	});
	
	socket.on(json.all.socketname1, function(data){
		console.log(data);
		$(json.front.rangeid).val(data.siodata);
		$(json.rear.rangeid).val(data.siodata);
		$(json.all.rangeid).val(data.siodata);
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
		console.log(json);
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
	socket.on('loginfail', function (data) {

		var label = document.getElementById('login_label');
		label.value = data.siodata;
		//$(document.body).('#login_label').innerHTML = data.siodata;
		console.log(data.siodata);
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




