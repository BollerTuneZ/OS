function loadDoc(site) {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
     document.getElementById("demo").innerHTML = xhttp.responseText;
    }
  };
  
  xhttp.open("GET", "html_modules/" + site + ".html", true);
  xhttp.send();

}
function toggleFullScreen() {
  if (!document.fullscreenElement &&    // alternative standard method
      !document.mozFullScreenElement && !document.webkitFullscreenElement && !document.msFullscreenElement ) {  // current working methods
    if (document.documentElement.requestFullscreen) {
      document.documentElement.requestFullscreen();
    } else if (document.documentElement.msRequestFullscreen) {
      document.documentElement.msRequestFullscreen();
    } else if (document.documentElement.mozRequestFullScreen) {
      document.documentElement.mozRequestFullScreen();
    } else if (document.documentElement.webkitRequestFullscreen) {
      document.documentElement.webkitRequestFullscreen(Element.ALLOW_KEYBOARD_INPUT);
    }
  } else {
    if (document.exitFullscreen) {
      document.exitFullscreen();
    } else if (document.msExitFullscreen) {
      document.msExitFullscreen();
    } else if (document.mozCancelFullScreen) {
      document.mozCancelFullScreen();
    } else if (document.webkitExitFullscreen) {
      document.webkitExitFullscreen();
    }
  }
}


window.addEventListener('load', function(){
    var el = document.getElementById('touchsurface2')
    var inner = document.getElementById('inner')
    var hidetimer = null
    swipedetect(el, function(swipedir){
        if (swipedir != 'none'){
            clearTimeout(hidetimer)
            var bgimage = swipedir + 'arrow.png' // naming convention is "leftarrow.png", "rightarrow.png" etc
            inner.style.background = 'transparent url(' + bgimage + ') center center no-repeat'
            hidetimer = setTimeout(function(){ // reset background image after 1 second
                inner.style.background = ''
            }, 1000)
        }
    })
}, false)
	
	
	
window.onscroll = function() {scrolltoggle()};
var x = 0;
function scrolltoggle() {
    if (document.body.scrollTop > 1 || document.documentElement.scrollTop > 1) {
	    var elmnt = document.getElementById("sidebar-wrapper");
	    //console.log(elmnt.clientWidth);
	    if (elmnt.clientWidth == "250"){
		    $("#wrapper").toggleClass("toggled");
	    }
    } 
}

window.onclick = function() {clicktoggle()};
var x = 0;
function clicktoggle() {
    
	    var elmnt = document.getElementById("sidebar-wrapper");
	    //console.log(elmnt.clientWidth);
	    if (elmnt.clientWidth == "250"){
		    $("#wrapper").toggleClass("toggled");
	    }
}
var x ;
function cam() {
    
	   var x = document.getElementById("ip").value;
		console.log(x);
		document.getElementById("cam1").src = "x";
}

var app = angular.module('myApp', ['btford.socket-io']).
    factory('mySocket', function (socketFactory) {
        return socketFactory();
    }).
    controller('ArduController', function ($scope,mySocket) {

        $scope.ledOn = function () {

            mySocket.emit('led:on');
            console.log('LED ON');
        };


        $scope.ledOff = function () {

            mySocket.emit('led:off');
            console.log('LED OFF');  
        }; 
        
        $scope.ledtrigger = function () {

            mySocket.emit('led:trigger');
            console.log('LED OFF');  
        };    
});








		