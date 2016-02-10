function loadDoc(site) {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
     document.getElementById("demo").innerHTML = xhttp.responseText;
    }
  };
  
xhttp.open("GET", "html_modules/" + site + ".html", true);
xhttp.send();
console.log(site + ".html");

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








		