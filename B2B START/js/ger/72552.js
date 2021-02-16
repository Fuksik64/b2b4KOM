$(function(){

$('#menu_categories2 li').hover(
function(){
    $(this).find('>ul').show();
    $(this).find('>a, >span').addClass('activ');
},

function(){
    $(this).find('>ul').hide();
    $(this).find('>a, >span').removeClass('activ');
}
   
)
})