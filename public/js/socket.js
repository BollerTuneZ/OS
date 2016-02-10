$(document).ready(function(){
	// WebSocket
	var socket = io.connect();
	
	socket.on("disconnect", function(){
        $('#myModal').modal('show')
    });
    socket.on("connect", function(){
		$('#myModal').modal('hide')
    });
    
    $( "#siosend" ).click(function() {
  alert( "Handler for .click() called." );
});

/*
    function socketiotest() {
		// range auslesen 
		console.log("sio");
		var name = $('#name').val();
		var siodata = $('#siodata').val();
		var siodataname = $('#siodataname').val();
		
		console.log(name + " " + siodataname + " " + siodata);

		// Socket senden 
		socket.emit(name, { siodataname: siodata });
		}
	
	$('#siosend').click(socketiotest);
*/
	
	
	
	
	
});

