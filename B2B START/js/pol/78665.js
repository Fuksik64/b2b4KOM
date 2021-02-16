////////
app_shop.fn.update_bundle = function(){

    var product = $('#projector_product_hidden').val();
    var size = $('#projector_size_hidden').val();
    var data = $('#projector_bundle_zone input').serialize();
    size = (size == 'onesize') ? 'uniw': size;

    $('#projector_form').addClass('load-content');

    $.getJSON('ajax/projector.php?product='+product+'&size='+size+'&'+data+'&get=sizeprices,sizeavailability,sizedelivery',function(json){
        if(!$.isEmptyObject(json.sizeprices)){
          projectorObj.currentSizeObj.price = json.sizeprices;  
        }
        if(!$.isEmptyObject(json.sizedelivery)){
          projectorObj.currentSizeObj.delivery = json.sizedelivery; 
        }
        if(!$.isEmptyObject(json.sizeavailability)){
          projectorObj.currentSizeObj.availability = json.sizeavailability; 
        }   
        if(!$.isEmptyObject(json.sizeavailability.shipping_time)){
          projectorObj.currentSizeObj.shipping_time = json.sizeavailability.shipping_time; 
        }
        //$('#projector_size_hidden').val($(this).data('type'));
        projectorObj.setCurrentSizeObj($('#projector_size_hidden').val());
        projectorObj.start();   

         $('#projector_form').removeClass('load-content');
    }).error(function() { $('#projector_form').removeClass('load-content'); });

}

////

$('.product_bundle_size .select_button').live('click',function(){
        var wrapper = $(this).parents('li.product_bundle');

        var amount = $(this).attr('data-amount');
        var type = $(this).attr('data-type');
        wrapper.find('input.bundled_quantity').attr('data-amount',amount);
        wrapper.find('input[name^=bundled_size]').val(type);
        
        if(!$(this).is('.active')){app_shop.fn.update_bundle();}
        wrapper.find('.select_button').removeClass('active');
        $(this).addClass('active');

       
});

$('#projector_bundle_zone .bundled_quantity').live('change',function(){
    if($(this).val() <= 0){$(this).val(0); app_shop.fn.update_bundle(); return false;} 
    Basketedit.number_check($(this));  
    app_shop.fn.update_bundle();
});

$('#projector_bundle_zone .delQuantity').live('click', function(){
    if(!$(this).is('.disabled')){
        var input = $(this).parent().find('input[type=text]');
        var unit_sellby =  parseFloat(Basketedit.getValues(input).unit_sellby);
        var quantity_product =  parseFloat(input.val())-unit_sellby;
        input.val(quantity_product).change();
    }
});
$('#projector_bundle_zone .addQuantity').live('click',function(){
    if(!$(this).is('.disabled')){
        var input = $(this).parent().find('input[type=text]');
        var unit_sellby =  parseFloat(Basketedit.getValues(input).unit_sellby);
        var quantity_product =  parseFloat(input.val())+unit_sellby;
        input.val(quantity_product).change(); 
    }
});

$('a.bundle_size_show').live('click',function(){
    $(this).parents('.product_bundle_size').toggleClass('hidde_sizes');
})


app_shop.run(function() {
  $('#projector_bundle_zone li.product_bundle .product_bundle_size').each(function(){
      var tmp_elements = $(this).find('.select_button:not(.select_button.disabled):first');
      if(tmp_elements.size()){
        tmp_elements.addClass('active');
				tmp_elements.parents('.product_bundle_size').find('input[type=hidden]').val(tmp_elements.attr('data-type'));
      }else{
        $(this).find('.select_button:first').addClass('active');
				$(this).find('input[type=hidden]').val($(this).find('.select_button:first').attr('data-type'));
      } 
  })
  $('#projector_status_description_wrapper').before($('#projector_bundle_zone'));
  app_shop.fn.update_bundle();     
}, 'all','#projector_bundle_zone', true);