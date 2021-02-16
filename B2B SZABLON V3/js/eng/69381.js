$('.step2 .saveQuantity').live('click',function(){
$('.productslist_product_action input').prop('checked',true)
return false
});

$('.step1 a.orders_more').live('click',function(){
$('.step1').hide();
$('.step2').show();
return false
});




$('.step2 #return_go_next').live('click',function(){  

if(!$('.step2 .productslist_product_action input:checked').size()){
    Alertek.show_alert('Wybierz produkty do zwrotu');
    return false;
}else{
 //   $('.step1, .step2').hide();
 //   $('.step3a').show();
 //   return false;
}
   

})


$('.step3 #return_go_next').live('click',function(){  

if($('.step3 label.return_type input').size()){
if(!$('.step3 label.return_type input:checked').size()){
    Alertek.show_alert('Wybierz sposób zwrotu towaru'); 
    return false;
}else{
    
 //   return false;
}

}  


   

})





$('.step3d div.return_delitem').live('click',function(){  
  $('.step3d div.return_delitem.active').removeClass('active');  
  $(this).addClass('active').find('input.order1_delitem_radio').prop('checked',true);

})

$('.step4a div.pickupl_return').live('click',function(){  
  $('.step4a div.pickupl_return').removeClass('active');  
  $(this).addClass('active').find('input').prop('checked',true);

})

$('.step5a div.return_form').live('click',function(){  
  $('.step5a div.return_form').removeClass('active');  
  $(this).addClass('active').find('input').prop('checked',true);


  if($(this).is('#disable_button')){
      if($('#disable_button input.return_form').val().length < 3){
          $('#return_go_next').attr('disabled','disabled').css('opacity','0.6');
      }

  }

})



$('label.return_type').live('click',function(){    $('label.return_type.active').removeClass('active');    $(this).addClass('active');})


$(function(){
init_orderdetails_info();

$('#disable_button input.return_form').keyup(function(){
    if($('#disable_button input.return_form').val().length < 3){
        $('#return_go_next').attr('disabled','disabled').css('opacity','0.6');
    }else{
            $('#return_go_next').attr('disabled',false).css('opacity','1');
    }
})
})