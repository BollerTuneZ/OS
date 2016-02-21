var socket;
var json;
var reload = 'dash';
//Initialize  ------------------------------------------------------------------------------------------------------------
function Initialize()
{
		SetupSocketIO();

}

function loadDoc(site) {
	if(site == ''){
		$( "#demo" ).load( "html_modules/" + reload + ".html" );
		console.log(reload + ".html");
	}else {
		$( "#demo" ).load( "html_modules/" + site + ".html" );
		reload = site;
		console.log(reload + ".html");
	}
}

function Init_GuiEvents() {

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
		socket.emit(json.socketname2, {siodata: chts});
	});
//Click Button ---------------------------------------------------------------------------------------------------------
	$(document.body).on('click', json.button1id, function () {
		$(json.rangeid).prop("disabled", false);
		$(json.rangeid).val('100');
		$(json.checkid).prop("checked", true);
		socket.emit(json.socketname1, {'siodata': '100'});
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
				socket.emit(json.socketname1, {'siodata': $(json.rangeid).val()});
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
			socket.emit(json.socketname1, {'siodata': $(json.rangeid).val()});
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
		}, 22);
	});
//mouseup clearInterval ------------------------------------------------------------------------------------------------
	$(document.body).on('mouseup', json.steering.idname, function (event) {
		clearInterval(interval);
		$(json.steering.idname).val("50");
		socket.emit(json.steering.socketname, {'siodata': "50"});
	});
//touch -- Start -------------------------------------------------------------------------------------------------------
	$(document.body).on('touchstart', json.steering.idname, function () {
		interval = setInterval(function () {
			socket.emit(json.steering.socketname, {'siodata': $(json.steering.idname).val()});
		}, 11);
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
		$('.dial').val(data.siodata).trigger('change');

		//$(json.label).html(data.siodata);
		//console.log(data.siodata);
	});
//Steuerung Lenkung Ende -------------------------------------------------------------------------------------------------

//ON test --------------------------------------------------------------------------------------------------
	socket.on(json.socketname1, function (data) {
		$(json.rangeid).val(data.siodata);
		//$(json.label).html(data.siodata);
		console.log(data.siodata);
	});
//ON json.socketname2 --------------------------------------------------------------------------------------------------
	socket.on(json.socketname2, function(data){
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
		$(json.temp.motor0_label_id).html( data );
	});
	socket.on(json.temp.motor1, function(data){
		$(json.temp.motor1_label_id).html( data );
	});
	socket.on(json.temp.ext0, function(data){
		$(json.temp.ext0_label_id).html( data );
	});
	socket.on(json.temp.ext1, function(data){
		$(json.temp.ext1_label_id).html( data );
	});
	socket.on(json.temp.ext2, function(data){
		$(json.temp.ext2_label_id).html( data );
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

$( ".dial1" ).change(function() {
	console.log($('.dial1').val());
});

function knop(v){
	//console.log(v);
	$('.dial2').val(v).trigger('change');
	$('.dial1').val(v).trigger('change');
}


function SetupSocketIO()
{
	//SocketIO verbinden ----------------------------------------------------------------------------------------------
		socket = io.connect();
//ON Disconnect ---------------------------------------------------------------------------------------------------
		socket.on("disconnect", function(){
			$('#onoffline').modal('show');
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
}

$(document).ready(function(){
	Initialize();
	loadDoc('');
});



