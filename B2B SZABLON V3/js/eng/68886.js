var order1_animspeed = 500;

	function init_order1_calendar()
	{
	//$('input[type=radio]').css({'height':'14px', 'width':'14px','padding':'0px'});

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
			$("#calendar_date_select_8 div.order1_date_sub").live('click',function() {
			   $("#order1_calbind").show(order1_animspeed); 
			 });
	 //$('#order1_delivery div.o1selected').live('',click(););

	};

$(document).ready(function() {

	$("input.order1_text").bind("keypress", function(e) {
		if (e.keyCode == 13) return false;
	});




	function order1_dialog(idd)
	{
		$("body").append("<div id='dialog_cover'></div>");
               $('#dialog_cover').css({
                   'height':$(document).height(),
                   'width':$(window).width(),
                   'position':'fixed',
                   'background':'#000',
                   'opacity':0.6,
                   'left' : '0px',
                   'top' : '0px',
                   'z-index':900
			}).click(function(){
				idd.hide();
				$('#dialog_cover').hide();
				$('#dialog_close2').remove();
			});

	      $('#order1_calendar_wrapper').append("<div id='dialog_close2'>x</div>");
		$('#dialog_close2').css({
			 'position':'absolute',
			 'font-weight':'bold',
			 'font-size':'18px',
			 'right':'8px',
			 'top':'0px',
			 'cursor':'pointer'
			 }).click(function(){
			       idd.hide();
			       $('#dialog_cover').hide();
			       $(this).remove();
		 });

		var hW = idd.height() / 2;
		idd.css({
                       'top':($(window).height() /2) + hW + $(window).scrollTop()
                }).show();
		$('#dialog_cover').show();
		$('.ui-datepicker').css({'padding':'10px'});
	};



	$('.runTopLayerOrder').click(function(){
	    Order1.inputDate($('.o1selecteddate'));
	    Order1_attachClicks();

		$('.order1_delivery_time_pick_hour').show();

		$('[name="calendar_select_hour"]').keyup(function(e) {
		    var temp = $('.order1_delivery_time_pick_value').html();
		    $('.order1_delivery_time_pick_hour').html(calendar_in_time+$(this).val());
		});

		order1_dialog($('#order1_calendar_wrapper'));


	});

	$('.closeToplayerOrder').click(function(){
	    $('#order1_calendar_wrapper').hide();
	    $('#dialog_cover').hide();
	    $('#dialog_close2').remove();


	});

	function Order1_attachClicks()
	{
		$('#calendar_date_select_1').click(function(){Order1.inputDate($(this));});
		$('#calendar_date_select_2').click(function(){Order1.inputDate($(this));});
		$('#calendar_date_select_3').click(function(){Order1.inputDate($(this));});
		$('#calendar_date_select_4').click(function(){Order1.inputDate($(this));});
		$('#calendar_date_select_5').click(function(){Order1.inputDate($(this));});
		$('#calendar_date_select_6').click(function(){Order1.inputDate($(this));});
		$('#calendar_date_select_7').click(function(){Order1.inputDate($(this));});
	};

$('.o1selected').click();

if(typeof(only_virtual)!='undefined' && only_virtual=='yes')
{
$('#order1_delivery').hide();
$('#delivery_0-1').click();
}

if($('#order1_dvp').hasClass('inactive_shippings'))
$('#advance_value').hide()
else
$('#advance_value').show();

$('div.order1_shippings').click(
function()
{
if($('#order1_dvp').hasClass('inactive_shippings'))
$('#advance_value').hide()
else
$('#advance_value').show();
}
);



});