$(document).ready(function(){

$("span.menu_settings_bar").last().attr("id", "menu_settings_bar_first");

	$("span.menu_settings_toggle").toggle(function(){
	  $(this).addClass("menu_settings_toggle2");
	  $("div.menu_settings_panel").show();
	},function(){
	  $(this).removeClass("menu_settings_toggle2");
	  $("div.menu_settings_panel").hide();
	});

});