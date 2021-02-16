/*app_shop.run(function(){

  $('.no-touch #search .product_wrapper_sub').hover(function(){
    if(app_shop.vars.view != 1 && app_shop.vars.view != 2){
       $(this).parent().css('min-height',$(this).parent().outerHeight());
         $(this).addClass('details');
         $(this).find('.sizes_wrapper').resize();
         if( ($(window).height() + $(window).scrollTop()) - ($(this).offset().top + $(this).outerHeight()) < 0){
         }
    }
  },function(){
    if(app_shop.vars.view != 1 && app_shop.vars.view != 2){
      $(this).removeClass('details');
      $(this).removeClass('details-overflow');
    }
  });

 $('#search .sizes_wrapper').vertiscroll({  color:'#666',radius:'0',background:'#f1f1f1',width:'5',areawidth:'5', 'footer': 0 });

},'all','#search');*/

app_shop.run(function(){
  $('#search div.product_wrapper').removeAttr('style');
},1,'#search');
app_shop.run(function(){
  $('#search div.product_wrapper').removeAttr('style');
},2,'#search');
app_shop.run(function(){
  $('#search div.product_wrapper').removeAttr('style');
},3,'#search');
app_shop.run(function(){
  $('#search div.product_wrapper').removeAttr('style');
},4,'#search');