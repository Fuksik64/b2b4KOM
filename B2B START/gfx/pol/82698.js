/* file=82698.js; addToHead=y; */

app_shop.fn.evalAllJSFromHtml = function(html) {
    var newElement = document.createElement('div');
    newElement.innerHTML = html;
    var result = newElement.getElementsByTagName("script");
    var scripts = [];

    for (var i = 0; i < result.length; ++i) {
        if (result[i].tagName === 'SCRIPT') {
            scripts.push(result[i]);
        }
    }
    $('body').append(scripts);
}; 


var pbM = '';

var orderdetails_payments = {

    paymentID : -1,
    test : false,
    timeoutAjax : 20000,
    other_payments : '',
    retry_payment : '',


    slideSite : function(){

        if(!$('#orderdetails_payments table').size()){

            $('#orderdetails_payments').prepend('<h2>'+txt_62619_label+'</h2><table><tr></tr></table>');
        }

        if($('#orderdetails_payments table tr:last').size()){
            $('html, body').animate({
                scrollTop:$('#orderdetails_payments table tr:last').position().top -150
            }, 'fast');
        }
    },

    dialog : function(html){

        $("#ui-dialog").remove()
        dialogHTML = '';
        dialogHTML += '<div id="ui-dialog_content">'+html+'</div>';

        $('<div id="ui-dialog">'+dialogHTML+'</div>').appendTo('body');
        $('#ui-dialog').dialog({
            'wrappContent':true,
            'fixed':false,
            'fitToWindow': false
        });
        $('<h2>'+txt_62619_payment_title+'</h2>').prependTo('#dialog_wrapper');
        $('<div id="ui-dialog_button"><button onclick="$(\'#dialog_close\').click();">'+txt_62619_close_window+'</button></div>').appendTo('#dialog_wrapper');
        $('#dialog_wrapper_sub.setMaxHeightWindow').css('max-height',$('#dialog_wrapper_sub').height() - ($('#ui-dialog_button').outerHeight() + $('#dialog_wrapper h2:first').outerHeight()));

    },

    htmlStructure : function(item){

        $item = $(item);
        icon = $item.attr('icon');
        status = $item.attr('status');
        payment_id = $item.attr('payment_id');
        payment_name = $item.attr('payment_name');
        date_add = $item.find('date_add').attr('date');
        date_canceled = $item.find('date_canceled').attr('date');
        date_confirm = $item.find('date_confirm').attr('date');
        payform_cost =  $item.find('client_currency').attr('payform_cost');
        payform_cost_formatted =  $item.find('client_currency').attr('payform_cost_formatted');
        currencysign =  $item.find('client_currency').attr('currencysign');

        payform_cost_order =  $item.find('order_currency').attr('payform_cost');
        payform_cost_order_formatted =  $item.find('order_currency').attr('payform_cost_formatted');
        currencysign_order =  $item.find('order_currency').attr('currencysign');

        if(status == 'n'){
            $prepaid_item =  $('#prepaid_item_copy').clone();
            $prepaid_item.removeAttr('id').addClass('payment_form_item').show();
            $prepaid_item.find('td.ordered-icon img').attr('src',icon).attr('alt',payment_name)
            $prepaid_item.find('td.ordered-name strong').html(payment_name);

            if(payform_cost_order > 0){

                // if(currencysign != currencysign_order){
                //     $prepaid_item.find('td.prepaid_delivery_list_name small').html(txt_62619_dodatkowa_opl+payform_cost_order_formatted+'<i>'+txt_62619_l_nawias+payform_cost_formatted+txt_62619_r_nawias+'</i>');
                // }else{
                //     $prepaid_item.find('td.prepaid_delivery_list_name small').html(txt_62619_dodatkowa_opl+payform_cost_order_formatted);
                // }

                $prepaid_item.find('td.ordered-price').html(payform_cost_formatted);

            }

            $('#prepaid_delivery_list table').eq(0).append($prepaid_item);

        }



        $html = $('<tr><td class="icon" rowspan="2"><td class="date add_td"><td class="status add_td"><tr><td class="date canceled_td"><td class="status canceled_td">');

        $('td.icon',$html).append('<img alt="'+payment_name+'" src="'+icon+'"><input type="hidden" name="payformid" value="'+payment_id+'"/>');

        $('td.date.add_td',$html).html(date_add);

        if(date_confirm)
            $('td.date.canceled_td',$html).html(date_confirm);
        if(date_canceled)
            $('td.date.canceled_td',$html).html(date_canceled);


        $('td.status.add_td',$html).html(orderdetails_payments.createStatus(1,$item));

        $('td.status.canceled_td',$html).html(orderdetails_payments.createStatus(0,$item));





        return  $html
    },


    createPrzelew : function(item,currencysign,payform_cost,payform_cost_order,currencysign_order){
        $item = $(item);

        receiver = $item.find('data').attr('receiver');
        account = $item.find('data').attr('account');
        swift_bic = $item.find('data').attr('swift_bic');
        bankname = $item.find('data').attr('bankname');
        title = $item.find('data').attr('title');
        amount = $item.find('data').attr('amount');
        link = $item.find('data').attr('link');
        html = '<table class="orderdetails_transfer">';

        // payform_cost =  payform_cost;
        // currencysign =  currencysign;

        //  payform_cost_order =  payform_cost_order;  
        //  currencysign_order =  currencysign_order; 

        if(receiver)
            html += '<tr><td><span>'+txt_62619_od_nazwa+'</span></td><td><strong>'+receiver+'</strong></td></tr>';
        if(account)
            html += '<tr><td><span>'+txt_62619_konto+'</span></td><td><strong>'+account+'</strong></td></tr>';
        if(bankname)
            html += '<tr><td><span>'+txt_62619_bank+'</span></td><td><strong>'+bankname+'</strong></td></tr>';
        if(swift_bic)
            html += '<tr><td><span>'+txt_62619_swit+'</span></td><td><strong>'+swift_bic+'</strong></td></tr>';
        if(title)
            html += '<tr><td><span>'+txt_62619_tytulem+'</span></td><td><strong>'+title+'</strong></td></tr>';
        if(amount)
            html += '<tr><td><span>'+txt_62619_do_zaplaty+'</span></td><td><strong>';
        html += payform_cost;
        // if(currencysign != currencysign_order){
        //     html += '<i>'+txt_62619_l_nawias+payform_cost+txt_62619_r_nawias+'</i>';
        // }
        html += '</strong></td></tr>';
        html += '</table>';
        return  html;

    },


    createStatus : function(flaga,item){


        $item = $(item);
        payment_id = $item.attr('payment_id');
        payment_name = $item.attr('payment_name');
        automatic_booking = $item.attr('automatic_booking');
        statuss = $item.attr('status');
        icon = $item.attr('icon');

        value = $item.find('client_currency').attr('value');
        currencysign = $item.find('client_currency').attr('currencysign');
        value_order =  $item.find('order_currency').attr('value');
        currencysign_order =  $item.find('order_currency').attr('currencysign');

        value_formatted = $item.find('client_currency').attr('value_formatted');
        value_order_formatted =  $item.find('order_currency').attr('value_formatted');

        date_add = $item.find('date_add').attr('date');
        date_canceled = $item.find('date_canceled').attr('date');
        date_confirm = $item.find('date_confirm').attr('date');
        pay_link = $item.attr('pay_link');
        cancel_link = $item.attr('cancel_link');
        mark = $item.find('amount').attr('mark');

        other_payments = orderdetails_payments.other_payments;
        retry_payment = orderdetails_payments.retry_payment;

        $status = '';

        if(flaga){

            if(mark == 'negativ'){
                $status += txt_62619_wybrales2;
            } else {
                $status += txt_62619_wybrales;
            }

            if (payment_id == 27) {
                $status += txt_prepaid0011_saldo;
            } else if (payment_id == 38) {
                $status += txt_prepaid0011_kredyt;
            } else {
                $status += payment_name;
            }

            if(mark == 'negativ'){
                $status += txt_62619_jako_zwrot;
                $status += txt_62619_kwota_zwrot+value_formatted;
            } else {
                $status += txt_62619_jako;
                $status += txt_62619_kwota+value_formatted;
            }
            // 
            // if(currencysign !== currencysign_order){
            //     $status += '<i>'+txt_62619_l_nawias+value_formatted+txt_62619_r_nawias+'</i>';
            // }
            $status += '.';

            if(statuss == 'n'){
                if(mark !== 'negativ'){
                    if(automatic_booking == 1){
                        $status += txt_62619_auto;
                    }
                    if(payment_id == 5){
                        var przelewHTML = orderdetails_payments.createPrzelew($item.find('additional_info'), currencysign, value_formatted,value_order_formatted,currencysign_order);
                        if (other_payments == 'true') {
                            $status += txt_62619_w_inny;
                        } else {
                            $status += txt_62619_wplata_dane;
                        }
                        $status += przelewHTML;
                        orderdetails_payments.dialog(przelewHTML);
                    }
                    if (other_payments == 'true') {
                        if (retry_payment == 'false') {
                            $status += txt_62619_bedz2;
                            $status += '<div style="clear: both;"></div>';
                            $status += '<a href="'+cancel_link+'" class="selectAnotherPayment btn-small">'+txt_62619_w_inny2+'</a>';
                        } else {
                            $status += txt_62619_dokoncz;
                            $status += txt_62619_bedz;
                            $status += '<div style="clear: both;"></div>';
                            $status += '<a href="'+pay_link+'" title="'+txt_62619_ponow+'" class="sendAjaxLink btn-small">'+txt_62619_ponow+'</a>';
                            $status += '<a href="'+cancel_link+'" class="selectAnotherPayment btn-small">'+txt_62619_w_inny2+'</a>';
                        }
                    }
                }
            }
        } else {
            if(date_canceled){
                $status += txt_62619_rezygnacja;
            }
            if (date_confirm){
                if (mark == 'negativ'){
                    $status += txt_62619_przyj_zwrot;
                } else {
                    $status += txt_62619_przyj_wplata;
                }
            }
        }
        return $status;
    },

    ajaxLoadSite : function(flaga){
        if(!flaga){
            $('#ajaxLoadSite').remove();
            $('#ajaxLoadSite_cover').remove();
        }else{
            $('#ajaxLoadSite').remove();
            $('#ajaxLoadSite_cover').remove();
            $("body").append("<div id='ajaxLoadSite_cover'></div>");
            $('#ajaxLoadSite_cover').css({
                'height':$(document).height(),
                'width':$(window).width(),
                'position':'absolute',
                'left' : '0px',
                'top' : '0px'
            })

            $('body').append('<div id="ajaxLoadSite">');
            $("#ajaxLoadSite").css({'left': (($(window).width()/2) - ($("#ajaxLoadSite").width()/2)) });
        }
    },

    warning: function(xmlOprderPayment){

        if(xmlOprderPayment.warning.order_newpayment_voucher_error){
            errorHTML = '<div id="dialog_warning">';
            errorHTML += txt_62619_voucher_error;
            switch(xmlOprderPayment.warning.order_newpayment_voucher_error){
                case 'v1':
                    errorHTML += txt_62619_voucher_error_v1;
                    break;
                case 'v2':
                    errorHTML += txt_62619_voucher_error_v2;
                    break;
                case 'v3':
                    errorHTML += txt_62619_voucher_error_v3;
                    break;
                case 'v4':
                    errorHTML += txt_62619_voucher_error_v4;
                    break;
                case 'v5':
                    errorHTML += txt_62619_voucher_error_v5;
                    break;
                case 'v6':
                    errorHTML += txt_62619_voucher_error_v6;
                    break;
                case 'v7':
                    errorHTML += txt_62619_voucher_error_v7;
                    break;
                case 'v8':
                    errorHTML += txt_62619_voucher_error_v8;
                    break;
            }
            errorHTML += '</div>';
            orderdetails_payments.ajaxLoadSite(0);
            orderdetails_payments.dialog(errorHTML);
        }else if(xmlOprderPayment.warning.onlyHttps == ""){
            orderdetails_payments.ajaxLoadSite(0);
            orderdetails_payments.dialog('<div id="dialog_warning">'+txt_62619_https_error+'</div>');
            //  orderdetails_payments.go(0);
        }else if(xmlOprderPayment.warning.order_newpayment_hhtransfer_error == ""){
            orderdetails_payments.ajaxLoadSite(0);
            orderdetails_payments.dialog('<div id="dialog_warning">'+txt_62619_hhtransfer_error+'</div>');
            //  orderdetails_payments.go(0);
        }else if(xmlOprderPayment.warning.order_newpayment_incorrect_paymentid == ""){
            orderdetails_payments.ajaxLoadSite(0);
            orderdetails_payments.dialog('<div id="dialog_warning">'+txt_62619_incorrect_paymentid+'</div>');
            //  orderdetails_payments.go(0);
        }else if(xmlOprderPayment.warning.order_newpayment_error == ""){
            orderdetails_payments.ajaxLoadSite(0);
            orderdetails_payments.dialog('<div id="dialog_warning">'+txt_62619_newpayment_error+'</div>');
            //  orderdetails_payments.go(0);
        }else if(xmlOprderPayment.warning.order_newpayment_points_error == ""){
            orderdetails_payments.ajaxLoadSite(0);
            orderdetails_payments.dialog('<div id="dialog_warning">'+txt_62619_newpayment_points_error+'</div>');
            //  orderdetails_payments.go(0);
        }

        orderdetails_payments.go(0);


    },

    ajaxLoadSiteMessage : function(message){
        $('#ajaxLoadSite').append(message);
        $("#ajaxLoadSite").css({'left': (($(window).width()/2) - ($("#ajaxLoadSite").width()/2)) });
    },

    stringtoXML : function(text){
        if (window.ActiveXObject){
            var doc=new ActiveXObject('Microsoft.XMLDOM');
            doc.async='false';
            doc.loadXML(text);
        } else {
            var parser=new DOMParser();
            var doc=parser.parseFromString(text,'text/xml');
        }
        return doc;
    },

/////
    getOrderPayment:function(urlLink, callback) {

        orderdetails_payments.ajaxLoadSite(1);
        orderdetails_payments.ajaxLoadSiteMessage(txt_62619_loader_message);

        $.ajax({
            type: "GET",
            url: urlLink,
            dataType: "json",
            timeout: orderdetails_payments.timeoutAjax,
            success: function(xmlOprderPayment) {

                if (xmlOprderPayment.warning) {
                    orderdetails_payments.warning(xmlOprderPayment);
                } else {

                    if (xmlOprderPayment.errno == 0) {


                        switch (xmlOprderPayment.payment_type) {
                            case 'credit_card':
                                orderdetails_payments.ajaxLoadSite(0);
                                var card_form = $('#orderdetails_payments_payment_card form');

                                card_form.find('.clear_data').html(''); //czyszczenie zbędnych danch w formie

                                //   card_form.attr('target', '_blank');
                                card_form.removeAttr('onsubmit');
                                //payment_xml = orderdetails_payments.stringtoXML(xmlOprderPayment.payment_xml);
                                if(app_shop.fn.evalAllJSFromHtml){
                                    app_shop.fn.evalAllJSFromHtml(xmlOprderPayment.payment_xml);
                                }
                                payment_xml = $(xmlOprderPayment.payment_xml);

                                var cart_type = $(payment_xml).find('payform').attr('type');
                                $('#orderdetails_payments_payment_card').removeAttr('class').addClass('payment_type_'+cart_type);


                                $('#paymentdescription, div.payment_description').remove();

                                if (xmlOprderPayment.payment_description) {
                                    if (xmlOprderPayment.payment_id == '25') {
                                        $('#orderdetails_payments_payment_card').append('<div id="paymentdescription">' + xmlOprderPayment.payment_description + '</div>');
                                    } else {
                                        $('div.payment_head_info').append('<div class="payment_description">' + xmlOprderPayment.payment_description + '</div>');
                                    }
                                }

                                if (cart_type == 'one_click') {
                                    card_form.find('div.payment_card_info').hide();
                                }


                                if ($('headermessage', payment_xml).html()) {
                                    $('div.payment_headermessage').html($('headermessage', payment_xml).html());
                                    $('div.payment_head_info').show();
                                }

                                if ($('headerlogo', payment_xml).html()) {
                                    $('div.payment_headerlogo img').attr('src', $('headerlogo', payment_xml).text());
                                    $('div.payment_head_info').show();
                                }


                                if(cart_type == 'one_click' || cart_type == 'form' ){
                                    $('#firstData-info').remove();
                                    if ($('headerdescription', payment_xml).html()) {
                                        $('div.payment_headerlogo').append('<div id="firstData-info">'+$('headerdescription', payment_xml).html())
                                    }
                                }

                                card_form.find('input').attr('disabled', true);
                                card_form.find('div.payment_card_formel').hide();



                                $('item', payment_xml).each(function() {
                                    var $this = $(this);
                                    var $clas = $this.attr('class') ? $this.attr('class') : '';

                                    if ($this.attr('name') == 'creditCard[system]') {
                                        $('item["name=creditCard[system]"] option', payment_xml).each(function() {
                                            var $this = $(this)
                                            var item = $('<label>').append(
                                                $('<input>').attr({
                                                    'class': 'validate required',
                                                    'type': 'radio',
                                                    'name': 'creditCard[system]',
                                                    'value': $this.attr('value'),
                                                    'data-serialize': '#credit_card_system input'
                                                })).append($('<div>').append($('<img>').attr({'src': $this.attr('data-img')})).append($('<span>').text($this.attr('label'))));

                                            $('#credit_card_system').append(item);
                                        })

                                        if($('item["name=creditCard[system]"] option', payment_xml).size() == 1){
                                            $('#orderdetails_payments_payment_card .validate[type=radio]:first').click();
                                        }

                                    } else if ($this.attr('type') == 'checkbox') {

                                        if ($this.find('description')) {var txt = $this.find('description').html();}

                                        var item = $('<label>').append(
                                            $('<input>').attr({
                                                'class': $clas,
                                                'type': 'checkbox',
                                                'name': $this.attr('name'),
                                                'value': $this.attr('value')
                                            })).append( $('<span>').text(txt))

                                        $('#credit_card_agree').append(item);

                                    } else if ($this.attr('type') == 'link') {

                                        if ($this.find('description')) {var txt = $this.find('description').html();}

                                        var item = $('<a>').attr({
                                            'href': decodeURIComponent($this.attr('href')),
                                            'id': $this.attr('id')
                                        }).text(txt);

                                        $('#credit_card_buttons').append(item);

                                    } if ($this.attr('name') == 'useStore') {
                                        var item = $('<input>').attr({
                                            'type': 'hidden',
                                            'name': $this.attr('name'),
                                            'value': $this.attr('value'),
                                            'class': $clas
                                        });

                                        $('#credit_card_buttons').append(item);

                                    } else {
                                        var element = card_form.find('[name="' + $this.attr('name') + '"]');
                                        if($this.attr('value')){
                                            element.val($this.attr('value'));
                                        }
                                        element.attr('disabled', false).addClass($clas)
                                            .parents('.payment_card_formel').show();

                                        if($this.attr('readonly')){
                                            element.addClass('readonly correct').attr('readonly',true).attr('disabled', true);
                                        }else{
                                            element.removeClass('readonly').attr('readonly',false).attr('disabled', false);
                                        }
                                        //dodać disabled i ukrycie zbędnych danych 
                                    }



                                })


                                $('#orderdetails_payments_payment_card').dialog({
                                    'wrappContent': true,
                                    'fixed': false,
                                    'width': 700,
                                    'fitToWindow': false
                                });

                                $('<h2>' + txt_62619_payment_title + '</h2>').prependTo('#dialog_wrapper');
                                //$('<div id="ui-dialog_button"><button onclick="$(\'#dialog_close\').click();">' + txt_62619_close_window + '</button></div>').appendTo('#dialog_wrapper');

                                //$('#dialog_wrapper_sub.setMaxHeightWindow').css('max-height', $('#dialog_wrapper_sub').height() - ($('#ui-dialog_button').outerHeight() + $('#dialog_wrapper h2:first').outerHeight()));

                                $('#dialog_wrapper_sub.setMaxHeightWindow').css('max-height', $('#dialog_wrapper_sub').height() - $('#dialog_wrapper h2:first').outerHeight());


                                $('#credit_card_system').change();
                                orderdetails_payments.go(0);

                                if ($('[type="one_click"]', payment_xml).size()) {
                                    $('#orderdetails_payments_payment_card div.payment_card_info').hide();
                                }

                                if (xmlOprderPayment.payment_id == '25') {$('#payment_card_info_static').show();} else {$('#payment_card_info_static').hide();}

                                break;


                            case 'blik':
                                orderdetails_payments.ajaxLoadSite(1);
                                payment_xml = $(xmlOprderPayment.payment_xml);
                                var paymentHTML = '<form id="form-blik" method="'+payment_xml.attr('method')+'" action="'+payment_xml.attr('action')+'">';
                                if ( $('headerlogo', payment_xml).size() ) {
                                     paymentHTML +=   '<div class="form-group clearfix blik-logo" style="text-align: center;" ><div class="col-md-12"><img src="'+$('headerlogo', payment_xml).attr('scr')+'"/></div></div>';
                                }



                                if (xmlOprderPayment.payment_description) {
                                    paymentHTML +=   '<div class="payment_head_info clearfix">'+xmlOprderPayment.payment_description+'</div>';
                                }


                                $('item', payment_xml).each(function() {
                                     
                                     $this = $(this);

                                     if($this.attr('name') == 'blik_code'){
                                        paymentHTML += '<div class="form-group clearfix"><label class="control-label col-md-3 col-xs-12">'+txt_blikCode+'</label><div class="col-md-6 col-xs-12"><input class="form-control" type="text" name="'+$this.attr('name')+'" value="'+$this.attr('value')+'" required /></div></div>';
                                     }else{
                                        paymentHTML += '<input type="hidden" name="'+$this.attr('name')+'" value="'+$this.attr('value')+'" />';
                                     }


                                });
                                paymentHTML += '<div class="form-group clearfix"><label class="control-label col-md-3 col-xs-12"></label><div class="col-md-6 col-xs-12"><button class="btn-large col-md-12" type="submit">'+txt_62619_dokonaj_platnosci+'</button></div></div>';
                                paymentHTML += '</form>';

       
                                orderdetails_payments.ajaxLoadSite(0);


                                orderdetails_payments.go(1, function() {
                                    orderdetails_payments.dialog(paymentHTML);
                                });

                 

                            break;    

                            case 'transfer':
                                orderdetails_payments.go(1);
                                break;

                            case 'voucher':
                                orderdetails_payments.go(1);
                                break;

                            case 'form':

                                paymentHTML = '';
                                if (xmlOprderPayment.payment_description)
                                    paymentHTML += '<div id="paymentdescription">' + xmlOprderPayment.payment_description + '</div>';

                                if (xmlOprderPayment.form_data) {
                                    paymentHTML += '<form method="' + xmlOprderPayment.form_data.method + '" action="' + xmlOprderPayment.form_data.action + '" target="' + xmlOprderPayment.form_data.target + '">';

                                    for (i in xmlOprderPayment.form_data.inputs) {
                                        if (xmlOprderPayment.form_data.inputs[i].type == 'hidden') {
                                            paymentHTML += '<input type="' + xmlOprderPayment.form_data.inputs[i].type + '" value="' + xmlOprderPayment.form_data.inputs[i].value + '" name="' + xmlOprderPayment.form_data.inputs[i].name + '"/>';
                                        }

                                        if (xmlOprderPayment.form_data.inputs[i].type == 'radio') {
                                            paymentHTML += '<div class="orderpaymentradio"><label>';

                                            if (xmlOprderPayment.form_data.inputs[i].checked) {
                                                paymentHTML += '<input type="' + xmlOprderPayment.form_data.inputs[i].type + '" value="' + xmlOprderPayment.form_data.inputs[i].value + '" name="' + xmlOprderPayment.form_data.inputs[i].name + '" checked="checked" />';
                                            } else {
                                                paymentHTML += '<input type="' + xmlOprderPayment.form_data.inputs[i].type + '" value="' + xmlOprderPayment.form_data.inputs[i].value + '" name="' + xmlOprderPayment.form_data.inputs[i].name + '"/>';
                                            }


                                            paymentHTML += '<img src="' + xmlOprderPayment.form_data.inputs[i].label_img + '"/>';

                                            paymentHTML += '<span>' + xmlOprderPayment.form_data.inputs[i].label_name + '</span></label></div>';
                                        }


                                        if (xmlOprderPayment.form_data.inputs[i].type == 'button') {
                                            paymentHTML += '<button type="submit" ';

                                            if (xmlOprderPayment.form_data.inputs[i].className) {
                                                paymentHTML += ' value="' + xmlOprderPayment.form_data.inputs[i].value + '"';
                                            }

                                            if (xmlOprderPayment.form_data.inputs[i].className) {
                                                paymentHTML += ' class="' + xmlOprderPayment.form_data.inputs[i].className + '"';
                                            } else {
                                                paymentHTML += ' class="orderdetails_paygate_finalize"';

                                            }
                                            if (xmlOprderPayment.form_data.inputs[i].id) {
                                                paymentHTML += ' id="' + xmlOprderPayment.form_data.inputs[i].id + '"';
                                            }
                                            paymentHTML += ' onclick="$(\'#dialog_close\').click();" >';

                                            if (xmlOprderPayment.form_data.inputs[i].img) {
                                                paymentHTML += '<img src="' + xmlOprderPayment.form_data.inputs[i].img + '" />';
                                            }
                                            paymentHTML += txt_62619_dokonaj_platnosci;
                                            paymentHTML += '</button>';

                                        }
                                    }
                                    paymentHTML += '</form>';
                                }
                                orderdetails_payments.ajaxLoadSite(0);


                                orderdetails_payments.go(1, function() {
                                    orderdetails_payments.dialog(paymentHTML);
                                });

                                break;

                            case 'installment_plan':

                                paymentHTML = '';

                                if (xmlOprderPayment.form_data) {
                                    paymentHTML += '<form class="cm" method="' + xmlOprderPayment.form_data.method + '" action="' + xmlOprderPayment.form_data.action + '" target="' + xmlOprderPayment.form_data.target + '">';

                                    for (i in xmlOprderPayment.form_data.inputs) {
                                        if (xmlOprderPayment.form_data.inputs[i].type == 'hidden') {
                                            paymentHTML += '<input type="' + xmlOprderPayment.form_data.inputs[i].type + '" value="' + xmlOprderPayment.form_data.inputs[i].value + '" name="' + xmlOprderPayment.form_data.inputs[i].name + '"/>';
                                        }

                                        if (xmlOprderPayment.form_data.inputs[i].type == 'radio') {
                                            paymentHTML += '<div class="orderpaymentradio"><label>';
                                            if (xmlOprderPayment.form_data.inputs[i].checked) {
                                                paymentHTML += '<input type="' + xmlOprderPayment.form_data.inputs[i].type + '" value="' + xmlOprderPayment.form_data.inputs[i].value + '" name="' + xmlOprderPayment.form_data.inputs[i].name + '" checked="checked" />';
                                            } else {
                                                paymentHTML += '<input type="' + xmlOprderPayment.form_data.inputs[i].type + '" value="' + xmlOprderPayment.form_data.inputs[i].value + '" name="' + xmlOprderPayment.form_data.inputs[i].name + '"/>';
                                            }
                                            paymentHTML += '<img src="' + xmlOprderPayment.form_data.inputs[i].label_img + '"/>';
                                            paymentHTML += '<span>' + xmlOprderPayment.form_data.inputs[i].label_name + '</span></label></div>';
                                        }

                                        if (xmlOprderPayment.form_data.inputs[i].type == 'html') {
                                            paymentHTML += xmlOprderPayment.form_data.inputs[i].value;
                                        }


                                        if (xmlOprderPayment.form_data.inputs[i].type == 'button') {

                                           if (xmlOprderPayment.payment_description && xmlOprderPayment.payment_id == 21)
                                                paymentHTML += '<div id="paymentdescription">' + xmlOprderPayment.payment_description + '</div>';

                                            paymentHTML += '<div class="paymentbutton-wrapper" style="text-align:center;"><button type="submit" ';

                                            if (xmlOprderPayment.form_data.inputs[i].className) {
                                                paymentHTML += ' value="' + xmlOprderPayment.form_data.inputs[i].value + '"';
                                            }

                                            if (xmlOprderPayment.form_data.inputs[i].className) {
                                                paymentHTML += ' class="' + xmlOprderPayment.form_data.inputs[i].className + ' btn-large"';
                                            }else{
                                                paymentHTML += ' class="btn-large';
                                             
                                            }
                                            if (xmlOprderPayment.form_data.inputs[i].id) {
                                                paymentHTML += ' id="' + xmlOprderPayment.form_data.inputs[i].id + '"';
                                            }
                                            paymentHTML += ' >';

                                            if (xmlOprderPayment.form_data.inputs[i].img) {
                                                paymentHTML += '<img src="' + xmlOprderPayment.form_data.inputs[i].img + '" />';
                                            }
                                            paymentHTML += txt_62619_wypelnij_wniosek;
                                            paymentHTML += '</button></div>';

                                        }

                                    }
                                    paymentHTML += '</form>';

                                    if (xmlOprderPayment.payment_description && xmlOprderPayment.payment_id != 21)
                                        paymentHTML += '<div id="paymentdescription">' + xmlOprderPayment.payment_description + '</div>';



                                }
                                orderdetails_payments.ajaxLoadSite(0);


                                orderdetails_payments.go(1, function() {
                                    orderdetails_payments.dialog(paymentHTML);
                                });

                                //żagiel dodanie onsubmit
                                if ($('#zagiel_confirm').size()) {
                                    $('#zagiel_confirm').parents('form').attr('onsubmit', 'return validate_Zagiel()')
                                }

                                break;

                            default:

                                paymentHTML = '';
                                if (xmlOprderPayment.payment_description)
                                    paymentHTML += '<div id="paymentdescription">' + xmlOprderPayment.payment_description + '</div>';
                                if (xmlOprderPayment.payment_code)
                                    paymentHTML += '<div id="payment_code">' + xmlOprderPayment.payment_code + '</div>';
                                orderdetails_payments.ajaxLoadSite(0);


                                orderdetails_payments.go(1, function() {
                                    orderdetails_payments.dialog(paymentHTML);
                                });

                                break;


                        }



                    } else if (xmlOprderPayment.info == "no_data_for_payment") {
                        orderdetails_payments.go(1);
                    } else if (xmlOprderPayment.errno == 1) {
                        orderdetails_payments.paymentError();
                    }

                }
            },
            error: function() {
                orderdetails_payments.paymentError();
            }
        })

    },

    checkForm : function(cancel_link){

        if($('div.payment_card_sub .validate:visible:enabled').not('.correct').size()){
            Alertek.show_alert(creditcard_alert);
            return false;

        }else{
            return true;

        }

  // if (!$('#orderdetails_payments_payment_card form input.required.validate.error').size() && !$('#orderdetails_payments_payment_card form input.required.validate').filter(function(){return !$(this).val()}).size() )
  //       {
  //           $('#dialog_close').click();
  //           orderdetails_payments.ajaxLoadSite(1);
  //           orderdetails_payments.ajaxLoadSiteMessage(txt_62619_loader_message2);

  //           $.ajax({
  //               type: "POST",
  //               url: $('#orderdetails_payments_payment_card form').attr('action')+'?ajax=true',
  //               dataType: "json",
  //               timeout: orderdetails_payments.timeoutAjax,
  //               data: $('#orderdetails_payments_payment_card form').serializeArray(),
  //               success: function(json){

  //                   if(json.warning){
  //                       orderdetails_payments.warning(json);
  //                   }else{
  //                       if(json.errno == 0){
  //                           orderdetails_payments.ajaxLoadSite(0);
  //                           orderdetails_payments.go(0);
  //                           if(json.status == 'payment_success'){
  //                               orderdetails_payments.dialog('<div id="dialog_info">'+txt_62619_payment_success+'</div>');
  //                           }

  //                       }else {
  //                           orderdetails_payments.paymentError();
  //                       }
  //                   }
  //               },
  //               error: function(){
  //                   orderdetails_payments.paymentError();
  //               }

  //           });
  //           return false;
  //       }
  //       else
  //       {
  //           Alertek.show_alert(creditcard_alert);
  //           return false;
  //       }
    },
    cancelPayment : function(cancel_link){
        orderdetails_payments.ajaxLoadSite(1);
        orderdetails_payments.ajaxLoadSiteMessage(txt_62619_loader_message_4);
        $.ajax({
            type: "POST",
            url: cancel_link,
            dataType: "json",
            timeout: orderdetails_payments.timeoutAjax,
            success: function(json){
                if(json.warning){
                    orderdetails_payments.warning(json);
                }else{
                    if(json.errno == 0){
                        orderdetails_payments.go(1);

                    }else if(json.info == "no_data_for_payment"){
                        orderdetails_payments.ajaxLoadSite(0);
                        orderdetails_payments.go(1);

                    }else if(json.errno == 1){
                        orderdetails_payments.ajaxLoadSite(0);
                        orderdetails_payments.go(0);
                        orderdetails_payments.dialog('<div id="dialog_warning">'+txt_62619_paymentCancelError+'</div>');

                    }
                }


            },
            error: function(){
                orderdetails_payments.ajaxLoadSite(0);
                orderdetails_payments.go(0);
                orderdetails_payments.dialog('<div id="dialog_warning">'+txt_62619_paymentCancelError+'</div>');
            }
        });
    },

    choicePayment : function(){

        if(!$('#orderdetails_prepaid_methods form input[name=payform_id]:checked').size()){  Alertek.show_alert(txt_62619_select_payment_method);  return false;}

        orderdetails_payments.ajaxLoadSite(1);
        orderdetails_payments.ajaxLoadSiteMessage(txt_62619_loader_message2);


        $('#orderdetails_prepaid_methods').slideUp();

        orderdetails_payments.slideSite();

        var method = $('#orderdetails_prepaid_methods form').attr('method');
        var action = $('#orderdetails_prepaid_methods form').attr('action');
        var payform_id = $('#orderdetails_prepaid_methods form input[name=payform_id]:checked').val();
        if($('#orderdetails_prepaid_methods form input[name=voucher_id]').length > 0)
            var voucher_id = $('#orderdetails_prepaid_methods form input[name=voucher_id]').val();
        else
            var voucher_id = '';
        if($('#orderdetails_prepaid_methods form input[name=profit_points]').length > 0)
            var profit_points = $('#orderdetails_prepaid_methods form input[name=profit_points]').val();
        else
            var profit_points = '';

        ajaxUrl = action+'&ajax=true';


        if(orderdetails_payments_cancel_link){
            $.ajax({
                type: "POST",
                url: orderdetails_payments_cancel_link,
                dataType: "json",
                timeout: orderdetails_payments.timeoutAjax,
                success: function(json){
                    if(json.warning){
                        orderdetails_payments.warning(json);
                    }else{
                        if(json.errno == 0){
                            $.ajax({
                                type: "POST",
                                url: ajaxUrl,
                                dataType: "json",
                                timeout: orderdetails_payments.timeoutAjax,
                                data: {
                                    'payform_id':payform_id,
                                    'voucher_id':voucher_id,
                                    'profit_points':profit_points
                                },
                                success: function(json){
                                    if(json.warning){
                                        orderdetails_payments.warning(json);
                                    }else{
                                        if(json.errno == 0){
                                            if(json.link){
                                                orderdetails_payments.getOrderPayment(json.link+'&ajax=true');
                                            }else{
                                                orderdetails_payments.go(1);
                                            }
                                        }else if(json.info == "no_data_for_payment"){
                                            orderdetails_payments.ajaxLoadSite(0);
                                        }else if(json.errno == 1){
                                            orderdetails_payments.paymentError();
                                        }
                                    }

                                },
                                error: function(){
                                    orderdetails_payments.paymentError();
                                }
                            });

                        }else if(json.info == "no_data_for_payment"){
                            orderdetails_payments.ajaxLoadSite(0);
                            orderdetails_payments.go(1);

                        }else if(json.errno == 1){
                            orderdetails_payments.paymentError();

                        }
                    }


                },
                error: function(){
                    orderdetails_payments.paymentError();
                }
            });

        }else{
            $.ajax({
                type: "POST",
                url: ajaxUrl,
                dataType: "json",
                timeout: orderdetails_payments.timeoutAjax,
                data: {
                    'payform_id':payform_id,
                    'voucher_id':voucher_id,
                    'profit_points':profit_points
                },
                success: function(json){

                    if(json.warning){
                        orderdetails_payments.warning(json);
                    }else{
                        if(json.errno == 0){
                            if(json.link){
                                orderdetails_payments.getOrderPayment(json.link+'&ajax=true');
                            }else{
                                orderdetails_payments.go(1);
                            }
                        }else if(json.info == "no_data_for_payment"){
                            orderdetails_payments.ajaxLoadSite(0);
                        }else if(json.errno == 1){
                            orderdetails_payments.paymentError();
                        }
                    }
                },
                error: function(){
                    orderdetails_payments.paymentError();
                }
            });
        }
    },


    updateOrderdetails : function(additional_cost,currencytotal,currency){
        $('#additional_cost_prepaid').text(additional_cost);
        $('#currencytotal_prepaid').text(currencytotal);

    },
    paymentError: function(){
        orderdetails_payments.ajaxLoadSite(0);
        orderdetails_payments.go(0);
        orderdetails_payments.dialog('<div id="dialog_warning">'+txt_62619_paymentError+'</div>');
    },

    test : function(xml){
        $xml = $(xml);



        $('#orderdetails_payments table tr').remove();
        $('item',$xml).each(function(i){
            $obj = $(this);
            $('#orderdetails_payments table').append(orderdetails_payments.htmlStructure($obj));
            $('#orderdetails_prepaid_methods input[name=payform_id][value='+$('#orderdetails_payments input[name=payformid]:last').val()+']').click();
        })
    },

    go : function(flaga,callback){
        if(flaga)
            orderdetails_payments.ajaxLoadSite(1);
        orderdetails_payments.ajaxLoadSiteMessage(txt_62619_loader_message3);
        $.ajax({
            type: "POST",
            url: '/orderdetails.php?id='+orderID+'&ajax=true&action=get_prepaid_history'+ (orderKey ? '&key='+orderKey : ''),
            dataType: "xml",
            timeout: orderdetails_payments.timeoutAjax,
            success: function(xml){


                //usuniecie ze strefy Dodatkowe opłaty i usługi niepotrzebnych 
                $('#prepaid_delivery_list .payment_form_item').remove()

                $('#orderdetails_payments table:first tr').remove();

                if( $('prepaid_history item',xml).size() ){
                    $('#orderdetails_payments').show();
                }
                orderdetails_payments.other_payments = $('prepaid_history',xml).attr('other_payments');
                orderdetails_payments.retry_payment = $('prepaid_history',xml).attr('retry_payment');

                $('prepaid_history item',xml).each(function(i){
                    $obj = $(this);
                    $('#orderdetails_payments table:first').append(orderdetails_payments.htmlStructure($obj));
                    //  $('#orderdetails_prepaid_methods input[name=payform_id][value='+$('#orderdetails_payments input[name=payformid]:last').val()+']').click();
                })

                var currency = $('prepaid_history',xml).attr('currencysign');
                var additional_cost = $('prepaid_history',xml).attr('currency_additional_cost');
                var currencytotal = $('prepaid_history',xml).attr('currencytotal');
                var currencysum  = $('prepaid_history',xml).attr('currencysum');
                var currency_order = $('prepaid_history',xml).attr('ordercurrencysign');
                var additional_cost_order = $('prepaid_history',xml).attr('currencytotal');
                var currencytotal_order = $('prepaid_history',xml).attr('total');
                var currencysum_order  = $('prepaid_history',xml).attr('sum');

                // formatted
                var additional_cost_formatted = $('prepaid_history',xml).attr('currency_additional_cost_formatted');
                var currencytotal_formatted = $('prepaid_history',xml).attr('currencytotal_formatted');
                var currencysum_formatted = $('prepaid_history',xml).attr('currencysum_formatted');
                var additional_cost_order_formatted = $('prepaid_history',xml).attr('currencytotal_formatted');
                var currencytotal_order_formatted = $('prepaid_history',xml).attr('total_formatted');
                var currencysum_order_formatted  = $('prepaid_history',xml).attr('sum_formatted');

                orderdetails_payments.updateOrderdetails(additional_cost_formatted,currencytotal_formatted,currency);

                $('div.chooseMethodPaymentButton p').remove();
                $('div.chooseMethodPaymentButton2 p').remove();

                if($('prepaid_history',xml).attr('show_payment_button') == 'false'){
                    $('div.chooseMethodPaymentButton2').css('display','none');
                }else{
                    $('div.chooseMethodPaymentButton2').css('display','block');
                    if(currencysum_order > 0){

                        var currencysum_html = '<p>'+txt_62619_do_oplacenia+'<b>'+currencysum_formatted;
                        // if(currency != currency_order){ 
                        //     currencysum_html += '<i>'+txt_62619_l_nawias+currencysum_formatted+txt_62619_r_nawias+'</i>';
                        // }
                        currencysum_html += '</b></p>';


                        $('div.chooseMethodPaymentButton').prepend(currencysum_html);
                        $('div.chooseMethodPaymentButton2').prepend(currencysum_html);
                    }
                }



                if(flaga)
                    orderdetails_payments.ajaxLoadSite(0);

                if(callback){
                    callback();
                }


            },
            error: function(){
                if(flaga){
                    orderdetails_payments.paymentError();
                }
            } // jeśli błąd akcja
        });
    }



}


var orderdetails_payments_cancel_link = false;
var orderdetails_payments_init = function(){
    $(function(){
       $('#LukasRatySubmit').live('click',function(){
            if($('#LukasRatyConfirm').prop('checked'))
            {
                return true;
            }
            else
            {
                if(window['lukasnotconfirmed'])
                   alert(lukasnotconfirmed);
                return false;
            }
        });

        $('#orderdetails_payments a.sendAjaxLink').live('click', function(){
            $('#orderdetails_prepaid_methods').hide();
            orderdetails_payments.getOrderPayment($(this).attr('href')+'&ajax=true');
            return false;
        })

        $('#orderdetails_payments a.selectAnotherPayment').live('click', function(){
            $('#orderdetails_prepaid_methods').slideToggle('slow',function(){

                //    if ( !$('#orderdetails_prepaid_methods').attr('rel') && $('#orderdetails_prepaid_methods').is(':visible') ) {
                //    $('#orderdetails_prepaid_methods').attr('rel', $('#orderdetails_prepaid_methods').outerWidth(true, true));
                //      }


                if ( $('div.orderdetails_payment.o1selectedpay').length ) {
                    $('div.orderdetails_payment.o1selectedpay').click();
                }
                else {
                    //  $('div.orderdetails_payment:first').click(); 
                }
                //      $('#orderdetails_prepaid_methods form').css('width', bC*parseInt($('div.orderdetails_payment').outerWidth(true, true)));


                if($('#orderdetails_prepaid_methods').is(':visible')){
                    $('div.chooseMethodPaymentButton2').hide();
                }else{
                    // $('div.chooseMethodPaymentButton2').css('display','block');
                }
            });
            orderdetails_payments_cancel_link = $(this).attr('href')+'&ajax=true';
            return false;
        })

        $('#orderdetails_payments a.cancelPayment').live('click', function(){
            $('#orderdetails_prepaid_methods').slideUp('slow');
            orderdetails_payments.cancelPayment($(this).attr('href')+'&ajax=true');
            return false;
        })

        $('a.chooseMethodPayment2').live('click', function(){
            $('#orderdetails_prepaid_methods').slideToggle('slow',function(){

                //      if ( !$('#orderdetails_prepaid_methods').attr('rel') && $('#orderdetails_prepaid_methods').is(':visible') ) { $('#orderdetails_prepaid_methods').attr('rel', $('#orderdetails_prepaid_methods').outerWidth(true, true)); }
                //   



                if ( $('div.orderdetails_payment.o1selectedpay').length ) {
                    $('div.orderdetails_payment.o1selectedpay').click();
                }else {
                    //  $('div.orderdetails_payment:first').click(); 
                }
                //    $('#orderdetails_prepaid_methods form').css('width', bC*parseInt($('div.orderdetails_payment').outerWidth(true, true)));

                if($('#orderdetails_prepaid_methods').is(':visible')){
                    $('div.chooseMethodPaymentButton2').hide();
                }else{
                    $('div.chooseMethodPaymentButton2').css('display','block');
                }
            });
            orderdetails_payments_cancel_link = false;
            return false;
        })




        //obsluga sposobow platnosci
        /*   $('#orderdetails_prepaid_methods tr').click(function(){
         $('#orderdetails_prepaid_methods tr.activ').removeClass('activ');
         $(this).addClass('activ').find('input[type=radio]').attr('checked','true');
         }) 
         //zaznacza pierwszy jak nie ma 
         if(!$('#orderdetails_prepaid_methods tr.activ').size()){
         $('#orderdetails_prepaid_methods tr:first').click();;
         }
         */
        //wysylanie formy
        $('#orderdetails_prepaid_methods form').submit(function(){
            orderdetails_payments.choicePayment();
            return false;
        })



        //karta kredytowa wysyłanie po ajax
        $('#orderdetails_payments_payment_card form button.credit_card_submit').live('click',function(){
            return orderdetails_payments.checkForm();
        });


        //       orderdetails_payments.go(1);
    })

}

/*

 var make_payment_description_box_prepaid = function() {

 $('div.description_box').remove();

 //pcW = $('#middle_sub').width();
 pcW = $('#orderdetails_info').width();

 pcbW = parseInt($('div.orderdetails_payment').css('width'));
 var bN = $('div.orderdetails_payment').length;
 bC = Math.floor(pcW/pcbW);

 $('div.orderdetails_payment:nth-child('+bC+'n)').after('<div class="description_box"></div>');
 if ( bN % bC != 0 ) { $('div.orderdetails_payment:last').after('<div class="description_box"></div>');}

 $('div.o1selectedpay').click();

 // align_payment_boxes_prepaid();

 }

 */


var copy_description_prepaid = function(pID) {

    if ( !$('#payment_'+pID).hasClass('orderdetails_payment_disable') ) {

        $('#orderdetails_prepaid_methods div.o1selectedpay').removeClass('o1selectedpay');
        $('#orderdetails_prepaid_methods div.nodescription').removeClass('nodescription');

        $('div.description_box').hide();
        $('div.description_box').html('');

        if ( pID != 'later' ) { pID = parseInt(pID) }

        if ( $('#description_'+pID).length && $('#description_'+pID).html() != '' ) {
            if ( pID != 2 ) {
                $('#payment_'+pID).find('input.orderdetails_radio').attr("checked",true);
                $('#payment_'+pID).addClass('o1selectedpay');
                $('#payment_'+pID).nextAll('.description_box:first').html($('#description_'+pID).html());
            } else {
                $('#payment_'+pID).find('input.orderdetails_radio').attr("checked",true);
                $('#payment_'+pID).addClass('o1selectedpay');
                var bonHTML = $('#description_'+pID).html().toString();
                bonHTML = bonHTML.replace('voucher_id_copy','voucher_id');
                bonHTML = bonHTML.replace('order1_bon_copy','order1_bon');
                //$('#payment_'+pID).nextAll('.description_box:first').html(bonHTML);
                //$('#payment_'+pID).parents('div.order1_payment_wrapper').find('div.description_box').html( $('#payment_'+pID).find('.order1_payment_description').html()).show();
                $('#payment_'+pID).parents('div.order1_payment_wrapper').find('div.description_box').html(bonHTML).show();
                Order1.validateBon();
            }
            $('#payment_'+pID).nextAll('.description_box:first').show();
        } else {
            $('#payment_'+pID).find('input.orderdetails_radio').attr("checked",true);
            $('#payment_'+pID).addClass('o1selectedpay nodescription');
        }

    }
}

$(function() {

    $('div.order1_payment').click(function() {
        $('div.description_box').hide();
        copy_description_prepaid($(this).find('input[name="payform_id"]').val());

        //dla mobilki 
        $('._mobile #orderdetails_prepaid_methods form').submit();


    });


    // click w platnosc - skopiowanie opisu
    $('div.orderdetails_payment').click(function() {
        //copy_description_prepaid($(this).attr('id').replace('payment_','')); 

    });

    //   $('div.orderdetails_payment').click(function() { if ( $(this).next().attr('class') == 'description_box' ) { $('#orderdetails_prepaid_methods form').css('width', bC*parseInt($('div.orderdetails_payment').outerWidth(true, true))); } });



});