$(document).ready(function() {
	if($("#client-save-form").length)
	{
      setUnload();
	 $("input[type='submit'], a, button").not("a.n54677_anonymous, input.n54677_button").click(function() {

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
	 $("a.n54677_anonymous, input.n54677_button").click(function() { $(window).unbind('beforeunload'); orderdetails_payments.ajaxLoadSite(1); orderdetails_payments.ajaxLoadSiteMessage(order_send_preloadertxt); return true;});
	}


});