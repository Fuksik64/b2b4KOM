//////////////////////////////////////////////////////////////////////
var cena_raty = '';
projectorObj = new projectorClass();
//obiekt do inicjalizacji karty     
projectorInitObject = {
    'endStartFunction':projectorEndStartCallback,
    //'hide_unit':true,
    //curr_before_price:true,
    //endSetCurrentSizeFunction:projectorEndSetCurrentSizeFunctionCallback 
    'endInitFunction':projectorEndInitFunctionCallback            
}
function projectorEndStartCallback(){
    //powiadomienie o dostepnosci zmiana roziaru 
    $("#avability_product_size strong").text(projectorObj.currentSizeObj.description);
    $('#projector_price_yousave').html($('#projector_price_yousave').html().replace('.00',''));
    //console.log($('#projector_status_gfx').width());
    //przypisanie raty
    cena_raty = projectorObj.currentSizeObj.price.value * projectorObj.configObj.valueOfNumberInput;
    Calc2 = new mbank_raty('calc2',cena_raty);
    Calc2.calculator_2();
    //paddning zależny od szerokosci ikony
    // $('#projector_status_description').css('padding-left',$('#projector_status_gfx').width()+10);
    //przypisanie toltipow
    $('#projector_rebatenumber_tip_copy img').clone().attr('title',txt_toltip_1).appendTo('#projector_shipping'); 
    if(client_login){
        $('#projector_rebatenumber_tip_copy img').clone().css({
            'top': '0px'
        }).attr('title',txt_toltip_2a.replace('[xxx]', client_points)).appendTo('#projector_price_points');
    }else{
        $('#projector_rebatenumber_tip_copy img').clone().css({
            'top': '0px'
        }).attr('title',txt_toltip_2).appendTo('#projector_price_points');
    }        
    $('#projector_rebatenumber_tip_copy img').clone().css({
        'top': '0px'
    }).attr('title',txt_toltip_3).appendTo('#projector_points_recive_points');	
}
function projectorEndInitFunctionCallback(){
	
}

$('#projector_sizes_cont label.projector_size_button').live('click',function(){
    $('label.projector_size_button').removeClass('active');
    $(this).addClass('active');
    $('#projector_size_hidden').val($(this).find('input').val());
    projectorObj.setCurrentSizeObj($('#projector_size_hidden').val());
    projectorObj.start();
});
	
$(function(){
  
    $('#projector_form div.photos div.enclosures a:first').click();
   
    // tabela rozmiarow
    $('#projector_form a.show_size_cms').click(function(){
        $('#component_projector_sizes_cms_not').dialog({
            'wrappContent':true,
            'fixed':false,
            'fitToWindow': false,
            'animate': false,
            'width':700,
            'wrapperClass': 'dialog_wrapper_sizes_chart'
        });
        return false;
    })

    //inicializacja toltipow
    simple_tooltip("img.projector_rebatenumber_tip","n59581_tooltip");

    //fixy do karty
    $('#projector_status_cont div.product_section_sub').append('<div style="clear:both">');


    
    
    //centrowanie zdjęć
    centerImage('a.projector_medium_image img',300, '#ffffff');
    
    //przekopiowanie zestawow
    $('#projector_form div.photos').append($('#projector_bundle_zone')); 
    $('#projector_form div.photos').append($('#projector_bundle_zone2')); 

    //ocena usówanie .00
    $('#projector_form div.product_info_top div.comments strong span').text($('#projector_form div.product_info_top div.comments strong span').text().replace('.00',''));
    $('#product_rebatenumber_value').text($('#product_rebatenumber_value').text().replace('.00',''));
    $('#product_rebatenumber_threshold').text($('#product_rebatenumber_threshold').text().replace('.00',''));
    if($('#projector_rebatenumber div.tooltipContent').size())
        $('#projector_rebatenumber div.tooltipContent').html($('#projector_rebatenumber div.tooltipContent').html().replace(/\.00/gi,''))

    //klikniecie +
    $('#projector_number_up').click(function(){	    
        $('#projector_number').val(parseFloat($('#projector_number').val()) + parseFloat(projectorObj.currentSizeObj.unit_sellby));
        projectorObj.start();
        $('#projector_price_yousave').html($('#projector_price_yousave').html().replace('.00',''));
    })

    //klikniecie -
    $('#projector_number_down').click(function(){
        $('#projector_number').val(parseFloat($('#projector_number').val()) - parseFloat(projectorObj.currentSizeObj.unit_sellby));
        projectorObj.start();
        $('#projector_price_yousave').html($('#projector_price_yousave').html().replace('.00',''));
    })

    //blur dla inputa ilosci
    $('#projector_number').blur(function(){
        projectorObj.start();
    })


    var ind = 0;
    $('div.product_info_top > div').each(function(){
        if(ind++%2==0)
            $(this).css('background','#ff7f7f9');
    });



})

//projectorObj.currentSizeObj.amount = -1
//projectorObj.configObj.rabatIndex
//projectorObj.configObj.rebateNumberPrv