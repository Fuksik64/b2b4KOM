var activeObject;

function passAction() {
  if(activeObject.is("a")) {
    window.location = activeObject.attr("href");
  }
  else {
    activeObject.parent().submit();
  }
}

function setUnload() {
	$(window).bind('beforeunload',function (e) {

	  e = e || window.event;

	  // For IE and Firefox prior to version 4
	    e.returnValue = confirmmessage;

	  // For Safari
	  return confirmmessage;

	 });
}
$(document).ready(function() {
	if($("form.order2_form").length)
	{
      setUnload();
	 $("input[type='submit'], a, button[type='submit']").not("input.order2_button_order, input.order2_button_next, a.n57856_orderlink, a.n57856_nextlink, a.order2_button_change, a.order2_button_change_stock, a.order2_button_change_address, a.order2_button_change2,  a.order2_change_delivery_link, a.order2_instalment").click(function() {
        
        //return false;
        activeObject = $(this);
        $("#ui-dialog").remove()
        dialogHTML = '';
        dialogHTML += '<div id="menu_notice"><strong>'+confirmmessage2+'</strong></div>';
       
        $('<div id="ui-dialog">'+dialogHTML+'</div>').appendTo('body');
        $('<h2>'+confirmwarning+'</h2>').prependTo('#menu_notice');
        $('#ui-dialog').dialog({
            'wrappContent':true,
            'fixed':false,
            'fitToWindow': false
        });
        $('<div id="ui-dialog_button"><button onclick="$(window).unbind(\'beforeunload\'); passAction();">'+stop_order_button+'</button><button onclick="setUnload(); $(\'#dialog_close\').click();">'+continue_order_button+'</button></div>').appendTo('#dialog_wrapper');
        $('#dialog_wrapper_sub.setMaxHeightWindow').css('max-height',$('#dialog_wrapper_sub').height() - ($('#ui-dialog_button').outerHeight() + $('#dialog_wrapper h2:first').outerHeight()));
        return false;
	 });
	 $("input.order2_button_order, input.order2_button_next, a.n57856_orderlink, a.n57856_nextlink, a.order2_button_change, a.order2_button_change_stock, a.order2_button_change_address, a.order2_button_change2,  a.order2_change_delivery_link").click(function() { $(window).unbind('beforeunload'); if($(this).is("input.order2_button_order, a.n57856_orderlink")) { orderdetails_payments.ajaxLoadSite(1); orderdetails_payments.ajaxLoadSiteMessage(order_send_preloadertxt); } return true;});
	}
	
	
});