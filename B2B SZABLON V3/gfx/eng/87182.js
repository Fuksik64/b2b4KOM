/* file=87182.js; addToHead=y; */
var runGC = {
  _status : 'error', // status karty
  _obj : '', // popup
  _nbr : '', // numer karty
  _pin : '', // numer pin karty
  _addNbr : '', // pole do wpisania numeru w popupie
  _addPin : '', // pole do wpisania pinu w popupie

  update : function(){
    runGC._nbr.val(runGC._addNbr.val());
    runGC._pin.val(runGC._addPin.val());
  },

  validate : function(){

    runGC._obj.parents('#dialog_wrapper').addClass('load-content');

    $.ajax({
      url: '/ajax/gift-cards-and-vouchers.php',
      type: 'POST',
      dataType: 'json',
      timeout: 4000,
      data: {
        action : 'auth',
        number: runGC._nbr.val(),
        pin: runGC._pin.val()
      },

      complete : function(jqXHR, textStatus){
        if( $.inArray(textStatus, ['nocontent', 'error', 'timeout', 'abort', 'parsererror']) !== -1){
          runGC._status = 'false';
          runGC._obj.parents('#dialog_wrapper').removeClass('load-content');
          $('#dialog_close').click();
      }
      },

      success : function(json){
        var statTxt = '';

          if (json.result.success == true) {
            runGC._status = 'true';
            runGC._obj.removeClass('error').addClass('success');
            $('#giftcard_form .giftcard_inputs > div').hide();

            statTxt = txt_order1_giftcard_04 + runGC._nbr.val() + '<a href="#">['+txt_order1_giftcard_05+']</a>';

            $('#giftcard_form .giftcard_status strong').html(txt_order1_giftcard_03);
            $('#giftcard_form .giftcard_status small').html(statTxt);

            if ($('form.order1_form').length) {
              $('#giftcard_form .giftcard_inputs button').addClass('btn_arrow').html(txt_order1_giftcard_06);
            } else {
              $('#giftcard_form .giftcard_inputs button').addClass('btn_arrow').html(txt_order1_giftcard_08);
            }

          } else {
            runGC._status = 'error';
            runGC._obj.removeClass('success').addClass('error');
            $('#giftcard_form .giftcard_inputs > div').show();

            if (json.error && json.error!=='') {
              statTxt = json.error;
            } else {
              statTxt = txt_order1_giftcard_02;
            }
            $('#giftcard_form .giftcard_status strong').html(txt_order1_giftcard_01);
            $('#giftcard_form .giftcard_status small').html(statTxt);

          };

        runGC._obj.parents('#dialog_wrapper').removeClass('load-content');
      }

    })
  },

  build : function(){
    var gcHtml = '';
    gcHtml += '<div class="giftcard_form_wrapp" style="display: none;">';
    gcHtml += '<div class="giftcard_form" id="giftcard_form">';
    gcHtml += '<span class="big_label">'+txt_order1_giftcard_gc1+'</span>';
    gcHtml += '<p>'+txt_order1_giftcard_gc2+'</p>';
    if ($('#description_190 > *').length) gcHtml += '<div style="margin: -15px 0 15px;">'+$('#description_190 > *').html()+'</div>';
    gcHtml += '<div class="giftcard_status"><div><strong></strong><small></small></div></div>';
    gcHtml += '<div class="giftcard_inputs">';
    gcHtml += '<div class="form-group">';
    gcHtml += '<label class="control-label">'+txt_order1_giftcard_gc3+'</label>';
    gcHtml += '<input class="form-control" value="" name="add_number" type="text" placeholder="'+txt_order1_giftcard_gc3a+'"></input>';
    gcHtml += '</div>';
    gcHtml += '<div class="form-group">';
    gcHtml += '<label class="control-label">'+txt_order1_giftcard_gc4+'</label>';
    gcHtml += '<input class="form-control" value="" name="add_pin" type="password" placeholder="'+txt_order1_giftcard_gc4a+'"></input>';
    gcHtml += '</div>';
    gcHtml += '<button class="btn-large">'+txt_order1_giftcard_gc5+'</button>';
    gcHtml += '</div>';
    gcHtml += '</div>';
    gcHtml += '</div>';
    if ($('form.order1_form').length) $('form.order1_form').after(gcHtml);
    if ($('form#order1_payform').length) $('form#order1_payform').after(gcHtml);
  },

  fields : function(){
    runGC._obj = $('#giftcard_form');
    runGC._nbr = $('#payment_190 input[name="voucher_id"]');
    runGC._pin = $('#payment_190 input[name="pin_value"]');
    runGC._addNbr = runGC._obj.find('input[name="add_number"]');
    runGC._addPin = runGC._obj.find('input[name="add_pin"]');
    runGC._addNbr.val(runGC._nbr.val());
    runGC._addPin.val(runGC._pin.val()); 
  },

  init : function(){

    if (!$('#payment_190 input[name="voucher_id"]').length) $('#payment_190 > div').append('<input value="" type="hidden" name="voucher_id" disabled="disabled" />');
    if (!$('#payment_190 input[name="pin_value"]').length) $('#payment_190 > div').append('<input value="" type="hidden" name="pin_value" disabled="disabled" />');

    runGC.build();

    runGC.fields();
    
    $('#giftcard_form .giftcard_inputs input').live('keyup change blur',function(){
      runGC.update();
    });

    $('form div#payment_190').on('click',function(){
      if (!$('#order1_prepaid.inactive_shippings').length) {
        runGC.go();
      }
    });

    $('form.order1_form button.order1_button, #order1_payform .chooseMethodPayment').on('click',function(){
      if (!$('#order1_prepaid.inactive_shippings').length && $('#payment_190.o1selectedpay').length && runGC._status == 'error') {
        runGC.go();
        return false;
      }
    })

    $('#giftcard_form .giftcard_status a').live('click',function(){
      runGC._obj.removeClass('error').removeClass('success');
      $('#giftcard_form .giftcard_inputs > div').show();
        $('#giftcard_form .giftcard_inputs button').removeClass('btn_arrow').html(txt_order1_giftcard_07);
        return false;
      });

    $('#giftcard_form .giftcard_inputs button').live('click',function(){
      if ($(this).hasClass('btn_arrow')) {
        $('#payment_190').parents('form').submit();
        $('#dialog_close').click();
      } else {
        runGC.validate();
      }
      return false;
    });

    $('.order1_payment').not('#payment_190').on('click',function(){
      $('#payment_190 input[name="voucher_id"], #payment_190 input[name="pin_value"]').attr('disabled','disabled'); 
    });

  },

  go : function(){

    if (!$('.giftcard_form_wrapp > *').length && !$('#giftcard_form').length) {
        $('.giftcard_form_wrapp').remove();
        runGC.build();
    }
    
    $('#giftcard_form').dialog({
        'wrappContent': true,
        'fixed': false
    });

    runGC.fields();

    runGC._nbr.removeAttr('disabled');
    runGC._pin.removeAttr('disabled');

  }
};

app_shop.run(function(){
  runGC.init();
},'all','#payment_190');


window.WrapMatchOrder1 = function(sel, count, className){
    $('.order1_payment_wrapper').find('>*').unwrap();
    $('div.order1_payitems_wrapper div.description_box').remove();
    count = parseFloat(count);
    var elemWidth = (100 / count) - 1;
    sel.width(elemWidth+'%');
    for(var i = 0; i < sel.length; i+=count) {
      sel.slice(i, i+count).wrapAll('<div class="'+className+'" />');
    }
    $('div.order1_payment_wrapper').append('<div class="description_box"></div>');
}


$('#order1_bon').live('input paste',function(){
    Order1.validateBon()
})


/*var bC = 7;
var pcW = 756;
var pcbW = 108;
var bS = 0;  */
var limit_exceeded=0;

var Order1 = {
    calendar : {},
    flag : 1,
    subflag : 1,
    timeStamp : '',
  
    chooseDeliveryMethod : function(box) {
        if ( box.is('.checked')) 
        {}
        else
        {
            $(".order1_big_checkbox").toggleClass("checked");
            $(".order1_delivery_title").toggleClass("active_title");
            $(".order1_shippings").toggleClass("inactive_shippings");
            $(".order1_shippings").children('.order1_delitem').each(function(){
                Order1.toggleDelivery($(this));
            });
            $(".order1_shippings").next('.order1_comment_background').css("visibility","visible");
            $(".inactive_shippings").next('.order1_comment_background').css("visibility","hidden");
            var previd=$('.o1selected').attr("id");
            var deliveryprefix;
            var deliverymethod;
            if(previd.length == 12)
            {
                deliveryprefix=previd.substring(0,11);
                deliverymethod=previd.substring(11,12);
            }
            else
            {
                deliveryprefix=previd.substring(0,12);
                deliverymethod=previd.substring(12,13);
            }
            var nextid;
            var firstid=$('.order1_delitem').not('.o1inactive').not('.o1disabled').not('.o1dis_inactive').eq(0).attr("id");
            if(deliverymethod=="1")
            {
                nextid=deliveryprefix + "0";
                Order1.subflag = Order1.flag;
                Order1.setFlag(1);
                $("button.order1_button").removeClass("order1_idle");
            }
            else
            {
                nextid=deliveryprefix + "1";
                if(Order1.subflag == 0)
                {
                    Order1.validateBon();
                }
            }
            Order1.deselectDelivery($("#"+previd));
            if($(".order1_shippings").children().not(".o1disabled").is("#"+nextid))
            {
                Order1.selectDelivery($("#"+nextid));
                $("#"+nextid).click();
            }
            else
            {
                Order1.selectDelivery($("#"+firstid));
                $("#"+firstid).click();
            }
      
      
            if($('#payment_2.o1selectedpay').length && $('#order1_dvp.inactive_shippings').length){
                $('#payment_2').click();
            }
        }
    },
  
    showFields : function(id,calendar,time,prepaid,totaltime,minutetime)
    {
        
        //do salda
        //if($('#order1_balance').length>0){ //jesli jest tabela salda aktualizujemy 
        Order1.getDeliveryAndPayform(id,$('#order1_payform input[name=payform_id]:checked').eq(0).val());
        //}


        // dni do podsumowania
        var day_totaltime = ''; 
        var time_array = minutetime.split('#');
        var onlyDays = true;


        if(time_array[0] && time_array[0] > 0){
            if(time_array[0] == 1){
                day_totaltime = time_array[0] + order1_showFields_day;
            }else{
                day_totaltime = time_array[0] + order1_txt_dni;
            }
        }

        if(order1_txt_godz2 != ''){
	        if(time_array[1] && time_array[1] > 0){
	            if(order1_txt_godz2 != ''){
	                var order1_txt_godz_variety = app_shop.fn.variety(time_array[1], order1_txt_godz, order1_txt_godz2); 
	                day_totaltime += time_array[1] + order1_txt_godz_variety;
	            } else {
	                day_totaltime += time_array[1] + order1_txt_godz;
	            }
	            onlyDays = false;
	        }

	        if(time_array[2] && time_array[2] > 0){
	            day_totaltime += time_array[2] + order1_txt_min;
	            onlyDays = false;
	        }
        }




        

        $('.basketedit_summary_shipment_time > span, .order1_dvp_time_pick > div').hide();

        if(onlyDays && time_array[4] && time_array[4] == 0 && txt_order1_shipping_10 !=''){
            if((id=="0-0") || (id=="0-1")){
                $('.order1_delivery_time_pick_txt_auto').show().html(txt_order1_shipping_11);
                $('.order1_delivery_time_pick_auto').show().find('.order1_delivery_time_pick span').html(txt_order1_shipping_11);
                $('div.shipping_time_order1').hide();
            }else{
                $('.order1_delivery_time_pick_txt_auto').show().html(txt_order1_shipping_10); 
                $('.order1_delivery_time_pick_auto').show().find('.order1_delivery_time_pick span').html(txt_order1_shipping_10);     
                $('div.shipping_time_order1').show();  
            }
            $('div.basketedit_summary_shipment_time > b').html(txt_order1_shipping[parseInt(time_array[3])]); 
            $('.order1_delivery_time_pick_auto .order1_delivery_time_pick_value').html(txt_order1_shipping[parseInt(time_array[3])]); 
            
        }else{
            if((id=="0-0") || (id=="0-1")){
                if(time_array[0] == 0 && time_array[1] == 0 && time_array[2] == 0){
                    $('.order1_delivery_time_pick_txt_4').show();
                }else{
                    $('.order1_delivery_time_pick_txt_3').show();
                }
                $('div.shipping_time_order1').hide();
            }
            else{$('.order1_delivery_time_pick_txt_1').show();$('div.shipping_time_order1').show(); }

            $('.order1_delivery_time_pick').find('span').html(day_totaltime);  
            $('div.basketedit_summary_shipment_time > b').html(day_totaltime); 
        }
  

        $('.order1_time_pick_button').hide();
        $('.order1_delivery_time_pick_hour').html('').hide();

        if(id[id.length-1] == 1)
        {
            $("#order1_calendar_info").show()
            $("#order1_dvp_calendar_info").hide()
        }
        else{
            $("#order1_calendar_info").hide()
            $("#order1_dvp_calendar_info").show()
        }
   
        if((calendar != 'n') && (calendar !='') && !((id=="0-0") || (id=="0-1")))
        {
      
            $('.order1_time_pick_button').show();
            $('#calendar_select_active').val(1);
      

            
            if((id=="16-0") || (id=="16-1"))
            {
                if ($('#order1_calendar_deliveryown').size()) {
                    $("#order1_calendar_deliveryown").show()
                    $('#calendar_dateown_select').click();
                    $("#order1_calendar_standard").hide()
                } else {
                    $("#order1_calendar_standard").show()
                    Order1.printDates(time);
                }
            }
            else
            {
                if ($('#order1_calendar_deliveryown').size()) {
                    $("#order1_calendar_deliveryown").hide()
                }
                $("#order1_calendar_standard").show()
                Order1.printDates(time);
            }
            if (calendar == 't') {
                $('#calendar_select_hour_div').show();
            } else {
                $('#calendar_select_hour_div').hide();
            }
        }
        else
        {
            $('#calendar_select_active').val(0);

            $("#order1_calendar").hide();
            $('#calendar_select_hour_div,#order1_calendar_standard').hide();
        }
        if(prepaid == '1' && !saldo_payform_hide)
        {
            $("#order1_payform").show()
        }
        else
        {
            $("#order1_payform").hide()
        }
        
        if (payments_in_row == '') payments_in_row = 7;
        window.WrapMatchOrder1($('div.order1_payment:visible'), payments_in_row, 'order1_payment_wrapper clearfix');
        $('#order1_payform .o1selectedpay').click();
        $('#order1_calendar_wrapper').hide();
        
    },

    toggleDelivery : function(obiekt) {
        if ( obiekt.is('.o1dis_inactive') || obiekt.is('.o1disabled')) 
        {
            obiekt.toggleClass("o1dis_inactive").toggleClass("o1disabled");
        }
        else
        {
            obiekt.toggleClass("o1inactive");
        }
    },
  
    selectDelivery : function(obiekt) {
        obiekt.toggleClass("o1selected");
        obiekt.find("input[type=radio]").attr("checked",true);
    
        if(obiekt.find(".order1_delitem_price_point input").is(':checked')){
            $('input[name="shipping_for_points"]').val(1);
        }else{
            $('input[name="shipping_for_points"]').val(0);
        }
    
        Order1.showComment(obiekt);
        $(".order1_text").val("");
    },
  
    deselectDelivery : function(obiekt) {
        obiekt.removeClass("o1selected");
        obiekt.find("input[type=radio]").removeAttr("checked");
    },
  
    chooseDelivery : function(obiekt) {
        $('#order1_prepaid_comment_text,#order1_dvp_comment_text').hide();
        if (obiekt.parent().is('.inactive_shippings'))
        {
            Order1.chooseDeliveryMethod(obiekt.parent().prev('.order1_delivery_label').children('.order1_big_checkbox checked'));
            Order1.deselectDelivery($('.o1selected'));
            Order1.selectDelivery(obiekt);
        }
        else
        {
            Order1.deselectDelivery($('.o1selected'));
            Order1.selectDelivery(obiekt);
        }

        //zaliczka ukrywanie form
        if (obiekt.parent().is('#order1_dvp')){
          $('.hideForCod').hide();
        }else{
          $('.hideForCod').show();
        }

    
    if($('div.o1selectedpay:visible').size()){
      $('div.o1selectedpay').click(); 
    }else{
      $('div.order1_payment:visible:first').click();
    }
    

    },
  
    showComment : function(obiekt) {
        var comment=obiekt.find("input").attr("title");
        if (comment == "")
        {
            $('.order1_delitem_comment').hide();
        //obiekt.siblings(".order1_comment_background").children().html("").hide()
        }
        else
        {
            $('.order1_delitem_comment').hide();
            var txt_delivery = obiekt.find('input.order1_delitem_radio').attr("title");
            obiekt.find('.order1_delitem_comment').show().html(txt_delivery);
        //obiekt.siblings(".order1_comment_background").children().html(deliveryComment+comment).show()
        } 
    },
  
    getDeliveryAndPayform : function(d_id,p_id) {
        clearTimeout(Order1.timeStamp);
        $('#order1_balance').addClass('loading_ajax');
        $('table#order1_balance').stop().fadeTo('fast', 0.5);
        
        Order1.timeStamp = setTimeout(function(){
        
            var add_insurance_value = $('input[name=add_insurance]').is(':checked') ? 1 : 0;
            
            var _DeliveryData = $('input[name=shipping_for_points]').val() == 1 ? {delivery:d_id,payform_id:p_id,add_insurance:add_insurance_value,shipping_for_points: 1} : {delivery:d_id,payform_id:p_id,add_insurance:add_insurance_value}

            $.getJSON('/ajax/basket-cost.php',_DeliveryData, function(data) {

                $('table#order1_balance').fadeTo('fast', 1);
                $('#order1_balance').removeClass('loading_ajax');
                $('#balance_products_worth').text(data.products_worth+data.currency_sign);
                $('#balance_prepaid_cost').text(data.total_additional_cost+data.currency_sign);
                $('#balance_total_to_pay').text(data.total_to_pay+data.currency_sign);


                var advance_value = '';
                if ($('#order1_dvp.inactive_shippings').length) {
                    if (advVal_mode=='total') {
                        advance_value = Math.round((parseFloat(advVal_prepaid)+parseFloat(data.shipping_cost_after_rebate))*100)/100;
                    } else {
                        advance_value = advVal_prepaid;
                    }
                } else {
                    advance_value = advVal_dvp;
                }

                $('strong.advance_value').html(format_price(advance_value,{
                    mask: currency_format,
                    currency: symbol.replace(/\s+/g, ''),
                    currency_space: currency_space,
                    currency_before_price: currency_before_value
                })); 


                $('strong.worth_value').html(format_price(data.products_worth,{
                    mask: currency_format,
                    currency: symbol.replace(/\s+/g, ''),
                    currency_space: currency_space,
                    currency_before_price: currency_before_value
                })); 



                $('strong.paymentcost_value').html(format_price(data.prepaid_cost,{
                    mask: currency_format,
                    currency: symbol.replace(/\s+/g, ''),
                    currency_space: currency_space,
                    currency_before_price: currency_before_value
                })); 
        
                if((data.prepaid_cost) && (data.prepaid_cost > 0)){
                    $('strong.paymentcost_value').parent().show();
                }else{
                    $('strong.paymentcost_value').parent().hide();
                }
          
        
          
                $('strong.total_rebate').html(format_price(data.total_rebate_without_shipping,{
                    mask: currency_format,
                    currency: symbol.replace(/\s+/g, ''),
                    currency_space: currency_space,
                    currency_before_price: currency_before_value
                })); 
                
                if((data.total_rebate_without_shipping) && (data.total_rebate_without_shipping > 0)){
                    $('strong.total_rebate').parent().show();
                }else{
                    $('strong.total_rebate').parent().hide();
                }
                    



                if(data.shipping_cost_points){
                    $('strong.shipping_value').html(data.shipping_cost_points + order1_pkt)
                }else{
                    if((data.shipping_cost_after_rebate > 0)){
                        $('strong.shipping_value').html(format_price(data.shipping_cost_after_rebate,{
                            mask: currency_format,
                            currency: symbol.replace(/\s+/g, ''),
                            currency_space: currency_space,
                            currency_before_price: currency_before_value
                        }));                        
                        $('strong.shipping_value').addClass('plus_sign');
                    } else {
                        if(data.shipping_cost > 0){
                            $('strong.shipping_value').html('<span><del>'+format_price(data.shipping_cost,{
                                mask: currency_format,
                                currency: symbol.replace(/\s+/g, ''),
                                currency_space: currency_space,
                                currency_before_price: currency_before_value
                            })+'</del></span> '+order1_gratis);
                            $('strong.shipping_value').removeClass('plus_sign');
                        } else {
                            $('strong.shipping_value').html(order1_gratis);
                            $('strong.shipping_value').removeClass('plus_sign');
                        }   
                    }

                        
                }

                if (data.shipping_undefined == true) {
                    $('strong.shipping_value').parent().hide();
                } else {
                    $('strong.shipping_value').parent().show();
                }
                     
                /*if((data.shipping_cost_after_rebate) && (data.shipping_cost_after_rebate > 0)){
                    $('strong.shipping_value').parent().show();
                }else{
                    $('strong.shipping_value').parent().hide();
                }*/


                if((data.prepaid_discount) && (data.prepaid_discount > 0)){
                    $('strong.prepaid_discount_value').parent().show();
                    $('strong.prepaid_discount_value').html(format_price(data.prepaid_discount,{
                        mask: currency_format,
                        currency: symbol.replace(/\s+/g, ''),
                        currency_space: currency_space,
                        currency_before_price: currency_before_value
                    })); 
                }else{
                    $('strong.prepaid_discount_value').parent().hide();
                }
        


                $('strong.insurance_value').html(format_price(data.insurance_cost,{
                    mask: currency_format,
                    currency: symbol.replace(/\s+/g, ''),
                    currency_space: currency_space,
                    currency_before_price: currency_before_value
                }));   

                if((data.insurance_cost) && (data.insurance_cost > 0)){
                    $('strong.insurance_value').parent().show();
                }else{
                    $('strong.insurance_value').parent().hide();
                }



                $('strong.topay_value').html(format_price(data.total_to_pay,{
                    mask: currency_format,
                    currency: symbol.replace(/\s+/g, ''),
                    currency_space: currency_space,
                    currency_before_price: currency_before_value
                })+((client_data_uses_vat != 'false' && app_shop.vars.vat_registered != 'false') ? gross_txt : ''));    

                if(parseFloat(limit_balance_value) < parseFloat(data.total_to_pay))
                {
                    limit_exceeded=1;
                    $('div.limit_exceeded').attr('style','display:block;');
                    $('strong.limit_touse').css('color','#FF0000');
                }

                //

                var price=saldo_balance_value;
                var price_total=parseFloat(data.total_to_pay);


                if(price>price_total)
                {
                    price=parseFloat(data.total_additional_cost)+parseFloat(data.products_worth)-price_total;

                }

                $('strong.saldo_value').html(format_price(price,{
                    mask: currency_format,
                    currency: symbol.replace(/\s+/g, ''),
                    currency_space: currency_space,
                    currency_before_price: currency_before_value
                })); 
                //



                //
  
                  
                if(!saldo_limit_flag && data.total_to_pay > 0){
                    $('#order1_prepaid .balance_title').html(saldo_txt['prepaid'][0]);
                    $('#order1_dvp .balance_title').html(saldo_txt['dvp'][0]);
                    saldo_payform_hide = false;    
                    if($('#order1_prepaid .o1selected').length > 0){
                        $("#order1_payform").show();
                    }
                            
                }else if(!saldo_limit_flag && data.total_to_pay == 0){
                    $('#order1_prepaid .balance_title').html(saldo_txt['prepaid'][1]);
                    $('#order1_dvp .balance_title').html(saldo_txt['dvp'][1]);
                    saldo_payform_hide = true;  
                    $("#order1_payform").hide();
                            
                }else if(saldo_limit_flag && data.total_to_pay > 0){
                    $('#order1_prepaid .balance_title').html(saldo_txt['prepaid'][2]);
                    $('#order1_dvp .balance_title').html(saldo_txt['dvp'][2]);
                    saldo_payform_hide = false; 
                    if($('#order1_prepaid .o1selected').length > 0){
                        $("#order1_payform").show();
                    }
                      
                }else if(saldo_limit_flag && data.total_to_pay == 0){
                    $('#order1_prepaid .balance_title').html(saldo_txt['prepaid'][3]);
                    $('#order1_dvp .balance_title').html(saldo_txt['dvp'][3]);
                    saldo_payform_hide = true; 
                    $("#order1_payform").hide();
                      
                }
                  
       
      
                if(data.total_to_pay > 0){
                    $('div.order1_balance_info').show();
      
                }else{
                    $('div.order1_balance_info').hide();
                }
        
            });   
  
         
      
      
        },300);
    },
  
    selectPayment : function(obiekt) {
        if ( obiekt.find('div.order1_payment_description').html() != '' ) {
            obiekt.toggleClass("o1selectedpay");
        }
        else {
            obiekt.toggleClass("o1selectedpay nodescription");
        }
        obiekt.find("input").attr("checked",true);
    },
  
    deselectPayment : function(obiekt) {
        obiekt.removeClass("o1selectedpay");
        obiekt.removeClass("nodescription");
        obiekt.find("input").removeAttr("checked");
    },
  
    choosePayment : function(obiekt) {

        var paymentName = obiekt.data('payment_name') || ' ';
        $('#discount_paiment_name').text(paymentName)

        Order1.deselectPayment($('.o1selectedpay'));
        Order1.selectPayment(obiekt);   
    
        //do salda
        //if($('#order1_balance').length>0){ //jesli jest tabela salda aktualizujemy 
            
        Order1.getDeliveryAndPayform($('#order1_delivery input[name=shipping]:checked').eq(0).val(),$('#order1_payform input[name=payform_id]:checked').eq(0).val());
    //}
    
    },
  
    setFlag : function(num) {
        Order1.flag = num;
    },
  
    validateBon : function() {
        app_shop.vars.view == 1 ? $("#order1_bon").val($("#order1_bon_copy").val()) : $("#order1_bon_copy").val($("#order1_bon").val());

        if( $("#order1_bon").val() == '')
        {
            Order1.setFlag(0);
            $("button.order1_button").addClass("order1_idle");
        }
        else
        {
            Order1.setFlag(1);
            $("button.order1_button").removeClass("order1_idle");
        }
    },
  
    hideBon: function() {
        $("div.order1_bon").hide()
        Order1.setFlag(1);
        $("button.order1_button").removeClass("order1_idle");
    },
  
    showBon : function() {
        $("div.order1_bon").show()
        Order1.validateBon();
    },
  
    checkForm : function() {
        if (Order1.flag)
        {
            return true;
        }
        else
        {
            Alertek.show_alert(order1_bonalert);
            return false;
        }
    },
  
    selectDate : function(obiekt) {
        obiekt.toggleClass("o1selecteddate");
        obiekt.find("input[type=radio]").attr("checked",true);
    },
    
    inputDate : function(obiekt)
    {
        $('.order1_delivery_time_pick_value').html(obiekt.find("input[type=radio]").attr('value'));

        $('div.basketedit_summary_shipment_time > b').html(obiekt.find("input[type=radio]").attr('value')); 
        $('.basketedit_summary_shipment_time > span, .order1_dvp_time_pick > div').hide();
        $('.order1_delivery_time_pick_txt_2').show();
   
    },
    
    deselectDate : function(obiekt) {
        obiekt.removeClass("o1selecteddate");
        obiekt.find("input[type=radio]").removeAttr("checked");
    },
  
    chooseDate : function(obiekt) {
        Order1.deselectDate($('.o1selecteddate'));
        Order1.selectDate(obiekt);
  
    },
    setTime : function(dateText,inst) {
        $("#order1_calbind").hide(order1_animspeed);
        var czas = $("#order1_calbind").datepicker('getDate');
        $("#calendar_date_select_7 span.order1_date_day").text(czas.getDate());
        $("#calendar_date_select_7 span.order1_date_month").text(iaical_monthNames2[parseInt(czas.getMonth())]);
        $("#calendar_date_select_7").click();
  
    },
  
    printDates : function(time)
    {
        shopCalendar.printDays(Order1.calendar.D1,Order1.calendar.M1,Order1.calendar.Y1,time,'calendar_date_select_',7,Order1.calendar.holi)
    },

    working_days : function(days)
    {
        Working_days = days;
        $("#order1_calbind").datepicker( "refresh" );
    }
}

function init_order1_calendar()
{
    //$('input[type=radio]').css({'height':'14px', 'width':'14px','padding':'0px'});
    
    $("#order1_calbind").datepicker({
        dateFormat: iaical_dateFormat,
        dayNamesMin: iaical_daysShort,
        defaultDate: Order1.calendar.Seldate,
        beforeShowDay: shopCalendar.setHolidays,    
        minDate:  Order1.calendar.Mindate,  
        monthNames: iaical_monthNames,
        nextText: iaical_monthNext,
        prevText: iaical_monthPrev,
        onSelect: Order1.setTime,
        firstDay: iaical_firstDay,
        altField: '#calendar_date_select_7 input.order1_radio'
    }).hide();
    $("#calendar_date_select_8 div.order1_date_sub").live('click',function() {
        $("#order1_calbind").show(order1_animspeed); 
    });
//$('#order1_delivery div.o1selected').live('',click(););
    
};

/*
function order1_dialog(idd)
{
    $("body").append("<div id='dialog_cover'></div>");
    $('#dialog_cover').css({
        'height':$(document).height(),
        'width':$(window).width(),
        'position':'fixed',
        'background':'#000',
        'opacity':0.6,
        'left' : '0px',
        'top' : '0px',
        'z-index':900
    }).click(function(){
        idd.hide();
        $('#dialog_cover').hide();
        $('#dialog_close2').remove();
    });
           
    $('#order1_calendar_wrapper').append("<div id='dialog_close2'>x</div>");
    $('#dialog_close2').css({
        'position':'absolute',
        'font-weight':'bold',
        'font-size':'18px',
        'right':'8px',
        'top':'0px',
        'cursor':'pointer'
    }).click(function(){
        idd.hide();
        $('#dialog_cover').hide();
        $(this).remove();
    });
        
    var hW = idd.height() / 2;
    idd.css({
        'top':($(window).height() /2) + hW + $(window).scrollTop()
    }).show();
    $('#dialog_cover').show();
    $('.ui-datepicker').css({
        'padding':'10px'
    });
};

*/
        function Order1_attachClicks()
        {
            $('#calendar_date_select_1').click(function(){
                Order1.inputDate($(this));
            });
            $('#calendar_date_select_2').click(function(){
                Order1.inputDate($(this));
            });
            $('#calendar_date_select_3').click(function(){
                Order1.inputDate($(this));
            });
            $('#calendar_date_select_4').click(function(){
                Order1.inputDate($(this));
            });
            $('#calendar_date_select_5').click(function(){
                Order1.inputDate($(this));
            });
            $('#calendar_date_select_6').click(function(){
                Order1.inputDate($(this));
            });
            $('#calendar_date_select_7').click(function(){
                Order1.inputDate($(this));
            });
        };

    
function order1_init(){
    if ( $('#order1_payform').length ) {
 
        $("input.order1_text").bind("keypress", function(e) {
            if (e.keyCode == 13) return false;
        });

         $('[name="calendar_select_hour"]').keyup(function(e) {
                var temp = $('.order1_delivery_time_pick_value').html();
                $('.order1_delivery_time_pick_hour').html(calendar_in_time+$(this).val());
                if($('[name="calendar_select_hour"]').val().length > 4){
                    $('.order1_delivery_time_pick_hour').show();
                }else{
                    $('.order1_delivery_time_pick_hour').hide();
                }

        });



     $('.runTopLayerOrder').click(function(){
            Order1.inputDate($('.o1selecteddate'));
            Order1_attachClicks();
     
            $('#order1_calendar_wrapper').show();
            if(!$('div.o1selecteddate').size()){$('#calendar_date_select_1').click()}
        });
    
    
    

        $('.o1selected').click();
        $('div.o1selectedpay').click();

        if(typeof(only_virtual)!='undefined' && only_virtual=='yes')
        {
            $('#order1_delivery').hide();
            $('form.order1_form > div.order1_label').hide();
            $('#delivery_0-1').click();
        }


        // ZALICZKI
        $('div.order1_shippings').click(function(){
            var objAdv = $('#advance_value, div.basketedit_product_summary.advance, #order1_payform_label_advance');
            var objOrd = $('#order1_payform_label_order');
            if (advance_type == 'default') {
                if ($('#advance_value').length) { objAdv.show(); objOrd.hide(); }
            } else {
                if (advance_type == 'prepaid') {
                    if (!$(this).hasClass('inactive_shippings') && $(this).attr('id')=='order1_prepaid'){ objAdv.show(); objOrd.hide(); } else { objAdv.hide(); objOrd.show(); }
                } else {
                    if (advance_type == 'dvp') {
                        if (!$(this).hasClass('inactive_shippings') && $(this).attr('id')=='order1_dvp'){ objAdv.show(); objOrd.hide(); } else { objAdv.hide(); objOrd.show(); }
                   } else { objOrd.show(); }
                }
            }
            
        });

        /* stare zaliczki
        if($('#order1_dvp').hasClass('inactive_shippings'))
            $('#advance_value').hide()
        else
            $('#advance_value').show();

        $('div.order1_shippings').click(function(){
            if($('#order1_dvp').hasClass('inactive_shippings'))
                $('#advance_value').hide()
            else
                $('#advance_value').show();
        });
        */


        //ubezpiecznie -- saldo
        $('#insurance_products_order1 input[name=add_insurance]').click(function(){
            if($('#order1_balance').length>0){ //jesli jest tabela salda aktualizujemy 
                Order1.getDeliveryAndPayform($('#order1_delivery input[name=shipping]:checked').eq(0).val(),$('#order1_payform input[name=payform_id]:checked').eq(0).val());
            }
        })

     /*   $('div.order1_payment').click(function() { 
            $('div.description_box').hide();
            if ( !$(this).is('.nodescription')) {  
                $(this).parents('div.order1_payment_wrapper').find('div.description_box').html( $(this).find('.order1_payment_description').html()).show();
            }
        });  */
  
        if($('#payment_2.o1selectedpay').length && $('#order1_dvp.inactive_shippings').length){
            $('#payment_2').click();
        }

        if($('.o1selected')){
            $('.o1selected').find("input[type=radio]").attr("checked",true); 
        }
        if($('.o1selected')){
            $('.order1_payment').eq(0).addClass("order1_first");
        }
  
        $('div.order1_delitem_pricebox input').click(function(){
            $(this).parents('div.order1_delitem_pricebox').find('input').removeAttr("checked");
            $(this).attr("checked",true); 
        })
  
        if($('.inactive_shippings')){
            $('.inactive_shippings').children('.order1_delitem').each(function(){
                Order1.toggleDelivery($(this));
            });
            $(".inactive_shippings").next('.order1_comment_background').css("visibility","hidden");
        } 

        $('#tsCheck input').click(function(){
            Order1.getDeliveryAndPayform($('#order1_delivery input[name=shipping]:checked').eq(0).val(),$('#order1_payform input[name=payform_id]:checked').eq(0).val());
        });
    
    
        if(limit_mode=='y') $('#order1_payform').addClass('payform_credit');
 
        if(!$('#order1_payform').is(':visible'))
            Order1.choosePayment($('#payment_later'));
        Order1.hideBon();
    }


    $('div.o1selectedpay').click();
}