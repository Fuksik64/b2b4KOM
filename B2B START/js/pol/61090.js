$(document).ready(function() {  

/////////////////////////////////////////// pierwszy poziom
if($("a[rel='toggle']"))
{
$("a[rel='toggle']").click(function(){
$(this).parent().next().toggle(200);
return false;

});
}
//////////////////////////////////////// drugi poziom 
if($("a[rel='toggle2']"))
{
$("a[rel='toggle2']").click(function(){

$(this).parent().next().toggle(200);
return false;

});
}
/////////////////////////////////////////////// trzeci poziom
if($("a[rel='toggle3']"))
{
$("a[rel='toggle3']").click(function(){

$(this).parent().next().toggle(200);
return false;

});
}

});