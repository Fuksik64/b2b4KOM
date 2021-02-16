$(document).ready(function(){

	$("JflowNew").jFlow({
		slides: "#SlidesMainZone1",
		controler: "#ControllerMainZone1",	
		slidesPrev: "#SlidesPrevMainZone1",	
		slidesNext: "#SlidesNextMainZone1",	
		clas: "ControllMainZone1",
		clas_selected: "activ",
		widthCounter: "1",
		jumpCounter: "3",		
		animate: "yes",
		time_animate: "10000",
		width: "590",
		height: "247",
		duration: 1000
	});
});