//////////////////////////////////////////////////////////////////////
var cena_raty = '';
projectorObj = new projectorClass();
//obiekt do inicjalizacji karty     
projectorInitObject = {
    'endStartFunction':projectorEndStartCallback,
    'formatPrice':_formatPrice,
    //'hide_unit':true,
    //curr_before_price:true,
    //endSetCurrentSizeFunction:projectorEndSetCurrentSizeFunctionCallback 
    'endInitFunction':projectorEndInitFunctionCallback            
}
//zewnętrzna funkcja do formatowania cen
function _formatPrice(obj){

    return format_price(obj.price,{
               mask: app_shop.vars.currency_format,
               currency: obj.currency,//.replace(/\s+/g, ''),
               currency_space: app_shop.vars.currency_space,
               currency_before_price: app_shop.vars.currency_before_value})
}

function projectorEndStartCallback(){
    //powiadomienie o dostepnosci zmiana roziaru 
    $("#avability_product_size strong").text(projectorObj.currentSizeObj.description);
  //  $('#projector_price_yousave').html($('#projector_price_yousave').html().replace('.00',''));
    //console.log($('#projector_status_gfx').width());
    //przypisanie raty
    cena_raty = projectorObj.currentSizeObj.price.value * projectorObj.configObj.valueOfNumberInput;
  //  Calc2 = new mbank_raty('calc2',cena_raty);
  //  Calc2.calculator_2();
    //paddning zależny od szerokosci ikony
    // $('#projector_status_description').css('padding-left',$('#projector_status_gfx').width()+10);
    //przypisanie toltipow
   // $('#projector_rebatenumber_tip_copy img').clone().attr('title',txt_toltip_1).appendTo('#projector_shipping'); 


    if(client_login){
        $('<span class="show_tip css_tip css_tip_small"><i class="icon-question"></i></span>').attr('title',txt_toltip_2a.replace('[xxx]', client_points)).appendTo('#projector_price_points');
    }else{
        $('<span class="show_tip css_tip css_tip_small"><i class="icon-question"></i></span>').attr('title',txt_toltip_2).appendTo('#projector_price_points');
    }        
    $('<span class="show_tip css_tip css_tip_small"><i class="icon-question"></i></span>').attr('title',txt_toltip_3).appendTo('#projector_points_recive_points');  
  

}
function projectorEndInitFunctionCallback(){

    app_shop.fn.init_pr_bx();
    app_shop.fn.init_multi_vers();

    //inicializacja toltipow
    simple_tooltip("span.show_tip","n59581_tooltip");
    if(product_data.base_price && product_data.base_price.promotiontilldate){
          $('#projector_prices_wrapper').after('<div id="CDT" class="product_section CDT-uniw"></div>'); 
          app_shop.vars.countDown = new CountdownTimer($('#CDT'),new Date(product_data.base_price.promotiontilldate+'T23:59:59'));
          app_shop.vars.countDown.countDown();
      } 
}



//projectorObj.configObj.rebateNumberPrv