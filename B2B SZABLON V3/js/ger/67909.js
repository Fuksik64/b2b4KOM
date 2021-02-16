$(document).ready(function()
{
if($('#terms_agree').length && terms_accepted=='true')
{
$('#terms_agree').click();
$('#terms_agree_box').attr('class','ramka_OFF');
}
});