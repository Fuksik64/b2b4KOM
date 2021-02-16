$(function(){
    $('.loginPopUpShow').click(function(){
        showLoginPopUp();
$('#login_popup_radio1').click();
        return false;
    });
    $('a.login_popup_close').click(function(){
        $('#login_popup').hide();
        $('#login_popup_cover').remove();
    });
    $('#avabilityShowForm').click(function(){
    $('#cover').hide();
         $('#avabilityDialog').css('top','0').hide();
        showLoginPopUp();         
    });
	
	$('a.password_reminder').click(function()
	{
		$('#login_popup_radio2').click();
return false;
	});
	
	$('.remind_password_link').click(function (){
showLoginPopUp();
$('#login_popup_radio2').click();
return false;
});
	
	$('a.password_back').click(function()
	{
		$('#login_popup_radio1').click();
return false;
	});
})

var showLoginPopUp = function(){
    $("body").append("<div id='login_popup_cover'></div>");
    $('#login_popup_cover').css({
        'height':$(document).height(),
        'width':$(window).width(),
        'position':'absolute',
        'left' : '0px',
        'top' : '0px'
    }).click(function(){
        $('#login_popup_cover').remove();
        $('#login_popup').hide();
    }); 
    $('#login_popup').css({
        'top': -$('#login_popup').height()
    }).show();
    $('#login_popup').animate({
        'top':$(window).height() / 2 - $('#login_popup').height() / 2 + $(window).scrollTop()
    }); 
}