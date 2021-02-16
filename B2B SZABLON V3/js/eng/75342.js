app_shop.run(function(){
  $('#basketedit_gifts').on('click','.basketedit_gifts_btn',function(){  
     $('div.basketedit_gifts_wrapper').toggle();
     $(this).toggleClass('active');
     $('#basketedit_gifts li').not('.gift_label_needs').find('.gift_item_icon').css('height',$('#basketedit_gifts li').maxHeight());
  })
  $(function(){
    $('#basketedit_gifts li').not('.gift_label_needs').find('.gift_item_icon').css('height',$('#basketedit_gifts li').maxHeight());  
  })
  
}, 'all', '#basketedit_gifts');