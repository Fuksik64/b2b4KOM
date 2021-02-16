function formatPrice()
{
window['format'] = function( m, v){
    if (!m || isNaN(+v)) {
        return v; //return as it is.
    }
    //convert any string to number according to formation sign.
    var v = m.charAt(0) == '-'? -v: +v;
    var isNegative = v<0? v= -v: 0; //process only abs(), and turn on flag.
   
    //search for separator for grp & decimal, anything not digit, not +/- sign, not #.
    var result = m.match(/[^\d\-\+#]/g);
    var Decimal = (result && result[result.length-1]) || '.'; //treat the right most symbol as decimal
    var Group = (result && result[1] && result[0]) || ',';  //treat the left most symbol as group separator
   
    //split the decimal for the format string if any.
    var m = m.split( Decimal);
    //Fix the decimal first, toFixed will auto fill trailing zero.
    v = v.toFixed( m[1] && m[1].length);
    v = +(v) + ''; //convert number to string to trim off *all* trailing decimal zero(es)

    //fill back any trailing zero according to format
    var pos_trail_zero = m[1] && m[1].lastIndexOf('0'); //look for last zero in format
    var part = v.split('.');
    //integer will get !part[1]
    if (!part[1] || part[1] && part[1].length <= pos_trail_zero) {
        v = (+v).toFixed( pos_trail_zero+1);
    }
    var szSep = m[0].split( Group); //look for separator
    m[0] = szSep.join(''); //join back without separator for counting the pos of any leading 0.

    var pos_lead_zero = m[0] && m[0].indexOf('0');
    if (pos_lead_zero > -1 ) {
        while (part[0].length < (m[0].length - pos_lead_zero)) {
            part[0] = '0' + part[0];
        }
    }
    else if (+part[0] == 0){
        part[0] = '';
    }
   
    v = v.split('.');
    v[0] = part[0];
   
    //process the first group separator from decimal (.) only, the rest ignore.
    //get the length of the last slice of split result.
    var pos_separator = ( szSep[1] && szSep[ szSep.length-1].length);
    if (pos_separator) {
        var integer = v[0];
        var str = '';
        var offset = integer.length % pos_separator;
        for (var i=0, l=integer.length; i<l; i++) {
           
            str += integer.charAt(i); //ie6 only support charAt for sz.
            //-pos_separator so that won't trail separator on full length
            if (!((i-offset+1)%pos_separator) && i<l-pos_separator ) {
                str += Group;
            }
        }
        v[0] = str;
    }

    v[1] = (m[1] && v[1])? Decimal+v[1] : "";
    return (isNegative?'-':'') + v[0] + v[1]; //put back any negation and combine integer and fraction.
};

//
//default:

if(currency_format=="")
	currency_format='###,##0.00';
if(currency_before_value=="")
	currency_before_value="false";
if(currency_space=="")
	currency_space="true";
if(currency_decimal_separator=="")
	currency_decimal_separator=",";
if(symbol=="")
	symbol="zł";

if(currency_space=='true')
	symbol=' '+symbol;
	

if($('#projector_price_value_wrapper span.projector_price').length)
{
var price=parseFloat($('#projector_price_value_wrapper span.projector_price').html());
var price_formatted=format(currency_format, price);

//price_formatted=price_formatted.toString();
price_formatted=price_formatted.replace(",",currency_grouping_separator);
price_formatted=price_formatted.replace(".",currency_decimal_separator);

if(currency_before_value=='true')
	price_formatted=symbol+price_formatted;
else
	price_formatted+=symbol;
	
$('#projector_price_value_wrapper span.projector_price').html(price_formatted);
}

if($('#projector_price_maxprice span.projector_price').length)
{
var maxprice=parseFloat($('#projector_price_maxprice span.projector_price').html())
var maxprice_formatted=format(currency_format, maxprice);

maxprice_formatted=maxprice_formatted.replace(",",currency_grouping_separator);
maxprice_formatted=maxprice_formatted.replace(".",currency_decimal_separator);

if(currency_before_value=='true')
	maxprice_formatted=symbol+maxprice_formatted;
else
	maxprice_formatted+=symbol;
	
$('#projector_price_maxprice span.projector_price').html(maxprice_formatted);
}

if($('#projector_price_srp span.projector_price').length)
{
var srp=parseFloat($('#projector_price_srp span.projector_price').html())
var srp_formatted=format(currency_format, srp);

srp_formatted=srp_formatted.replace(",",currency_grouping_separator);
srp_formatted=srp_formatted.replace(".",currency_decimal_separator);

if(currency_before_value=='true')
	srp_formatted=symbol+srp_formatted;
else
	srp_formatted+=symbol;	
	
$('#projector_price_srp span.projector_price').html(srp_formatted);
}

if($('#projector_price_yousave span.projector_price').length)
{
var yousave=parseFloat($('#projector_price_yousave span.projector_price').html())
var yousave_formatted=format(currency_format, yousave);

yousave_formatted=yousave_formatted.replace(",",currency_grouping_separator);
yousave_formatted=yousave_formatted.replace(".",currency_decimal_separator);

if(currency_before_value=='true')
	yousave_formatted=symbol+yousave_formatted;
else
	yousave_formatted+=symbol;
	
$('#projector_price_yousave span.projector_price').html(yousave_formatted);
}

if($('#projector_shipping span.projector_price').length)
{
var shipping=parseFloat($('#projector_shipping span.projector_price').html())
var shipping_formatted=format(currency_format, shipping);

shipping_formatted=shipping_formatted.replace(",",currency_grouping_separator);
shipping_formatted=shipping_formatted.replace(".",currency_decimal_separator);

if(currency_before_value=='true')
	shipping_formatted=symbol+shipping_formatted;
else
	shipping_formatted+=symbol;

	$('#projector_shipping span.projector_price').html(shipping_formatted);
}


/*if($('#projector_sellbyrecount span').length)
{
var sellby=parseFloat($('#projector_sellbyrecount span').html())
var sellby_formatted=format(currency_format, sellby);

sellby_formatted=sellby_formatted.replace(",",currency_grouping_separator);
sellby_formatted=sellby_formatted.replace(".",currency_decimal_separator);

if(currency_before_value=='true')
	sellby_formatted=symbol+sellby_formatted;
else
	sellby_formatted+=symbol;
	
$('#projector_sellbyrecount span').html(sellby_formatted);
}*/


}

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
	
	formatPrice();
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

    //klikniecie na rozmiar i zmiana danych 

    /*
	if($('#projector_form').length>0) {
		var urlParams = parseURLParams(location.href);
		if(urlParams.action=='opinion_key') {
			$('#opinions_58676').click();
			location.hash = '#tabs_58676';
		}
	}*/
    var ind = 0;
    $('div.product_info_top > div').each(function(){
        if(ind++%2==0)
            $(this).css('background','#ff7f7f9');
    });



})

//projectorObj.currentSizeObj.amount = -1
//projectorObj.configObj.rabatIndex
//projectorObj.configObj.rebateNumberPrv