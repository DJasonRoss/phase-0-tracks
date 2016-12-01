console.log("Script begin...")

var gif = document.getElementById("theylivedwi");
gif.style.visibility = 'hidden';


function removeBorder() {
	var photo = document.getElementById("tl-photo");
	photo.style.border = "0px solid black";
	photo.style.visibility = 'hidden';
	var gif = document.getElementById("theylivedwi");
	gif.style.visibility = 'visible';

}


