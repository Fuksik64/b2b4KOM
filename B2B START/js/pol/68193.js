$(function(){
$('#client_new_social li strong').click(function(){

    $('#client_new_social form').not($('#social_networking_'+$(this).attr('rel'))).hide();
    $('#social_networking_'+$(this).attr('rel')).toggle();
});
})