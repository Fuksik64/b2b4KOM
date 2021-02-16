$(function(){
$('.show_tab').click(function(){

  if(app_shop.vars.view == 1){
    $(this).toggleClass('tab_hidden').toggleClass('tab_visible');
    $($(this).attr('href')).slideToggle('fast');
  }
    return false

})
})