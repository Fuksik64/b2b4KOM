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
  //  $('#projector_price_yousave').html($('#projector_price_yousave').html().replace('.00',''));
    //console.log($('#projector_status_gfx').width());
    //przypisanie raty
    cena_raty = projectorObj.currentSizeObj.price.value * projectorObj.configObj.valueOfNumberInput;
  //  Calc2 = new mbank_raty('calc2',cena_raty);
  //  Calc2.calculator_2();
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
  
  formatPrice();
}
function projectorEndInitFunctionCallback(){

    $projector_form = $('#projector_form');
    $('div.enclosures',$projector_form).find('a:first').click();
    centerConternt( $('a.projector_medium_image img',$('div.photos')) );
   $('#projector_sizes_cont').after($('a.show_size_cms'))

  //  $('#projector_form div.photos div.enclosures a:first').click();

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

    //kopiowanie

    $projector_form.find('div.photos').append($('#projector_bundle_zone'));
    $projector_form.find('div.photos').append($('#projector_bundle_zone2'));
    $('#projector_form').find('div.product_info').prepend($('#projector_form').find('h1,div.projector_description'));
  //  $('div.product_info',$projector_form).prepend($('h1,div.projector_description',$projector_form));
    

    //klikniecie +
    $('#projector_number_up').click(function(){     
        $('#projector_number').val(parseFloat($('#projector_number').val()) + parseFloat(projectorObj.currentSizeObj.unit_sellby));
        projectorObj.start();
    //    $('#projector_price_yousave').html($('#projector_price_yousave').html().replace('.00',''));
    })

        //klikniecie -
    $('#projector_number_down').click(function(){
        $('#projector_number').val(parseFloat($('#projector_number').val()) - parseFloat(projectorObj.currentSizeObj.unit_sellby));
        projectorObj.start();
     //   $('#projector_price_yousave').html($('#projector_price_yousave').html().replace('.00',''));
    })

    //blur dla inputa ilosci
    $('#projector_number').blur(function(){
        projectorObj.start();
    })

}

$('#projector_sizes_cont label.projector_size_button').live('click',function(){
    $('label.projector_size_button').removeClass('active');
    $(this).addClass('active');
    $('#projector_size_hidden').val($(this).find('input').val());
    projectorObj.setCurrentSizeObj($('#projector_size_hidden').val());
    projectorObj.start();
});
  


//projectorObj.currentSizeObj.amount = -1
//projectorObj.configObj.rabatIndex

/*
fun_mobile.push([function(wrapper){
    var $kon = wrapper;
 //   $kon.prepend($('h1,div.projector_description',$kon));     
 //   $('div.product_info',$kon).append($('#n67367'));
 //   $('h1,div.projector_description').addClass('col-xs-12');
},'#projector_form'])

var _tmp_function = function(wrapper){
    var $kon = wrapper;
         
 //   $('div.product_info',$kon).append($('#n67367'));

};

fun_tablet.push([_tmp_function,'#projector_form']);
fun_pc.push([_tmp_function,'#projector_form']);  */
//projectorObj.configObj.rebateNumberPrv