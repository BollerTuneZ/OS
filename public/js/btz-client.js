$(document).ready(function(){
	// WebSocket
	var socket = io.connect();
	socket.on("disconnect", function(){
        $('#myModal').modal('show')
    });
    socket.on("connect", function(){
		$('#myModal').modal('hide')
    });
	//Event click on siosend
	$(document.body).on('click', '#siosend' ,function(){
		var name = $('#name').val();
		var siodata = $('#siodata').val();
		socket.emit(name, { siodata: siodata });
		console.log( "socket.emit(" + name + ", { siodata: " + siodata + "});" );
	});

	//input-group
	//Event click on checktest
	$(document.body).on('click', '#checktest' ,function(){
		var chts = $('#checktest:checked').val();
		if(chts == "on"){
			console.log('On');
			chts = "1";
			$( "#rangetest" ).prop( "disabled", false );
		}else{
			console.log('Off');
			chts = "0";
			$( "#rangetest" ).prop( "disabled", true );
		}
		socket.emit('test2', { siodata: chts });
	});
	//Event click on btn-on
	$(document.body).on('click', '#btn-on' ,function(){
		$( "#rangetest" ).prop( "disabled", false );
		$( "#rangetest" ).val('100');
		$( "#checktest" ).prop( "checked", true );
		socket.emit('test', { 'siodata': '100' });
		console.log( $( "#rangetest" ).val());
	});
	//Event click on btn-off
	$(document.body).on('click', '#btn-off' ,function(){
		$( "#rangetest" ).prop( "disabled", true );
		$( "#rangetest" ).val('0');
		$( "#checktest" ).prop( "checked", false );
		socket.emit('test', { 'siodata': '0' });
		console.log( $( "#rangetest" ).val());
	});
	//Event mousedown on rangetest
	$(document.body).on('mousedown', '#rangetest' ,function(){
		interval = setInterval(function(){
			$('#rangetestlabel').html($('#rangetest').val())
			socket.emit('test', { 'siodata': $('#rangetest').val() });
		},11);
	});
	//Event mousedown on rangetest
	$(document.body).on('mouseup', '#rangetest' ,function(event){
		clearInterval(interval);
		$('#rangetestlabel').html('Vorne')
	});
});

