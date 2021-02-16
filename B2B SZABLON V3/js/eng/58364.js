var rma_add_alert = "Fill out all fields of the form.";
var rma_add_msg1 = "Enter the product name";
var rma_add_msg2 = "Enter the product serial number";
var rma_add_msg3 = "Enter the date of purchase";
var rma_add_msg4 = "Describe the fault";
var rma_add_msg5 = "Specify the place of purchase";
var rma_add_msg6 = "Enter the address to which you want to get a refund";
var rma_add_msg7 = "Enter the bank account no.";
var rma_add_msg8 = "Enter the data to cheque";

function init_rma_calendar(){
        $("#rma_add_form_begin_ymd").datepicker({
            dateFormat: iaical_dateFormat,
            dayNamesMin: iaical_daysShort, 
            monthNames: iaical_monthNames,
            onSelect: rma_add.setTime,
            firstDay: iaical_firstDay
        });
}