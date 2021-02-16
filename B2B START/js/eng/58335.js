$(document).ready(function() {
	if($("#client-save-form").length)
	{
	$(window).bind('beforeunload',function (e) {

	  e = e || window.event;

	  // For IE and Firefox prior to version 4
	    e.returnValue = confirmmessage;

	  // For Safari
	  return confirmmessage;

	 });
	 $("a.n54677_anonymous, input.n54677_button").click(function() { $(window).unbind('beforeunload'); return true;});
	}


});