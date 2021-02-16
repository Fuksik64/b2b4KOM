$(function(){

$('#menu_categories2 li').hover(
function(){
    $(this).find('>ul').show();
    $(this).find('>a').addClass('activ');
},

function(){
    $(this).find('>ul').hide();
    $(this).find('>a').removeClass('activ');
}
   
)
})