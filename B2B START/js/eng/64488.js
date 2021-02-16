$(document).ready(function() {
$("input.pickup_text").bind("keypress", function(e) {
if (e.keyCode == 13) return false;
});
});

var pickupl_animspeed = 500;

//   ustawienie szerokości elementów jak coś można usunąć
$(function(){

if($('div.pickup_list').length>0){

var pickup_min_element_width = 140;
var pickup_max_element_width = 160;
var pickup_new_element_width = 140;
var pickup_border_element = 1*2;
var pickup_element_margin = 3*2;
var pickup_wrapper = $('div.pickupl_proposed').width();

pickupNumberOfElements = Math.floor(pickup_wrapper / (pickup_min_element_width+pickup_element_margin));
pickup_new_element_width = Math.floor(pickup_wrapper / pickupNumberOfElements)-pickup_element_margin-pickup_border_element;

if(pickup_new_element_width>pickup_min_element_width){
	$('div.pickupl_site_sub').width(pickup_new_element_width);
}else{
    $('div.pickupl_site_sub').width(pickup_max_element_width);
}


}
})
/////////////////////////////////////////////////////////////////////////////////////////////////////////////

function init_pickupl_calendar(){


		$("#pickupl_calbind").datepicker({
			dateFormat: iaical_dateFormat,
			dayNamesMin: iaical_daysShort,
			defaultDate: pickup_sites.calendar.Seldate,
			beforeShowDay: shopCalendar.setHolidays,	
			minDate:  pickup_sites.calendar.Mindate,	
			monthNames: iaical_monthNames,
			nextText: iaical_monthNext,
			prevText: iaical_monthPrev,
			onSelect: pickup_sites.setTime,
			firstDay: iaical_firstDay,
			altField: '#calendar_date_select_7 input.pickupl_radio'
		}).hide();
		$("#calendar_date_select_8 div.pickupl_date_sub").click(function() {
	       $("#pickupl_calbind").show(pickupl_animspeed); 
	    });
}