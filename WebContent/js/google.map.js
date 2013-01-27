//// Start Google Maps ////
function initialize() {

}
function loadScript() {
	var script = document.createElement("script");
	script.type = "text/javascript";
	script.src = "http://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&sensor=TRUE_OR_FALSE&callback=initialize";
	document.body.appendChild(script);
}
window.onload = loadScript;
// // End Google Maps ////