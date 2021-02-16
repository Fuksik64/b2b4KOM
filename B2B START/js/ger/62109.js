function init_rma_calendar(){
		$("#rma_add_form_begin_ymd").datepicker({
			dateFormat: iaical_dateFormat,
			dayNamesMin: iaical_daysShort, 
			monthNames: iaical_monthNames,
			onSelect: rma_add.setTime,
			firstDay: iaical_firstDay
		});
}