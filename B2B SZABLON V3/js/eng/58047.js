$(document).ready(function() {  


$("#n56412_main_menu span.n56412_cat_second_level").not(":visible").css("display","block").hide();
$("#n56412_main_menu span.n56412_cat_third_level").not(":visible").css("display","block").hide();



/////////////////////////////////////////// first level
if($("a[rel='toggle']"))
{
$("a[rel='toggle']").click(function(){
$(this).parent().toggleClass("firstLevelOnClickActiv").next().toggle(200);
return false;

});
}
//////////////////////////////////////// second level
if($("a[rel='toggle2']"))
{
$("a[rel='toggle2']").click(function(){

$(this).next().toggle(200);
return false;

});
}
/////////////////////////////////////////////// third level
if($("a[rel='toggle3']"))
{
$("a[rel='toggle3']").click(function(){

$(this).next().toggle(200);
return false;

});
}

});