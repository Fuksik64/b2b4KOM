$(document).ready(function()
{
$('a.password_reminder_signin').click(function()
	{
		$('#signin-form_radio2').click();
return false;
	});
	
	$('a.password_back_signin').click(function()
	{
		$('#signin-form_radio1').click();
return false;
	});
});