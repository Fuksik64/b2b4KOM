var order1_animspeed = 500;

function init_order1_calendar(){
//$(&#039;input[type=radio]&#039;).css({&#039;height&#039;:&#039;14px&#039;, &#039;width&#039;:&#039;14px&#039;,&#039;padding&#039;:&#039;0px&#039;});

		$("#order1_calbind").datepicker({
			dateFormat: iaical_dateFormat,
			dayNamesMin: iaical_daysShort,
			defaultDate: Order1.calendar.Seldate,
			beforeShowDay: shopCalendar.setHolidays,	
			minDate:  Order1.calendar.Mindate,	
			monthNames: iaical_monthNames,
			nextText: iaical_monthNext,
			prevText: iaical_monthPrev,
			onSelect: Order1.setTime,
			firstDay: iaical_firstDay,
			altField: '#calendar_date_select_7 input.order1_radio'
		}).hide();
		$("#calendar_date_select_8 div.order1_date_sub").click(function() {
	       $("#order1_calbind").show(order1_animspeed); 
	    });
 $('#order1_delivery div.o1selected').click();
}