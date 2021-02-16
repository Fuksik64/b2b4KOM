var rma_add_alert = "Wypełnij wszystkie pola formularza.";
var rma_add_msg1 = "Podaj nazwę produktu";
var rma_add_msg2 = "Podaj numer seryjny produktu";
var rma_add_msg3 = "Podaj datę zakupu produktu";
var rma_add_msg4 = "Opisz usterkę";
var rma_add_msg5 = "Opisz miejsce zakupu produktu";
var rma_add_msg6 = "Podaj adres, na który chcesz otrzymać zwrot pieniędzy";
var rma_add_msg7 = "Podaj numer konta bankowego";
var rma_add_msg8 = "Podaj dane do czeku";

function init_rma_calendar(){
		$("#rma_add_form_begin_ymd").datepicker({
			dateFormat: iaical_dateFormat,
			dayNamesMin: iaical_daysShort, 
			monthNames: iaical_monthNames,
			onSelect: rma_add.setTime,
			firstDay: iaical_firstDay
		});
}