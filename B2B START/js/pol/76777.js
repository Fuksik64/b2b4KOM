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


    $('a.add_opinion').live('click',function(){
        $('#component_projector_opinions_add').appendTo('#component_projector_opinions').show();
        $('#component_projector_opinions').dialog({
            'wrappContent':true,
            'fixed':false,
            'fitToWindow': false,
            'animate': false,
            'width':700,
            'wrapperClass': 'dialog_wrapper_sizes_chart'
        });
        return false;
    });

    app_shop.fn.imageCreate = function(data){
        pictureHTML = [];
        enclosureHTML = [];
        pictureHTML.push('<ul class="bxslider">');
        enclosureHTML.push('<div id="bx-pager" class="enclosures align_row" data-align="img#css">');
        for(i in data.enclosures){
            pictureHTML.push('<a href="',data.enclosures[i].url,'" class="projector_medium_image" data-imagelightbox="f">');
            pictureHTML.push('<img class="photo" itemprop="image" src="',data.enclosures[i].medium,'" alt=""></img></a></li>');
            enclosureHTML.push('<a href="" data-slide-index="',i,'"><img alt="" src="',data.enclosures[i].icon,'"/></a>');                       
        }
        pictureHTML.push('</ul>');
        enclosureHTML.push('</ul>');

        app_shop.vars.bx_projector.destroySlider();
        $('#projector_form .bxslider').remove();
        $('#projector_form .photos').prepend(pictureHTML.join('')+enclosureHTML.join(''));
        app_shop.fn.init_pr_bx();
        $('#bx-pager').iai_align();
    }

    app_shop.fn.sizeCreate = function(data){
        sizesHTML = [];
        var activeSize = $('#projector_sizes_cont .select_button.active').data('type');
        for(i in data.sizes){
            var sizeClass = (data.sizes[i].amount == 0) ? 'select_button disabled' : 'select_button';
            sizeClass += (activeSize == data.sizes[i].type) ? ' active' : '';
            sizesHTML.push('<label class="',sizeClass,'" data-type="',data.sizes[i].type,'">',data.sizes[i].description,'</label>');
        }
        sizesHTML.join('');
        $('#projector_sizes_cont .select_button').remove();
        $('#projector_sizes_cont .product_section_sub').prepend(sizesHTML.join(''));
        if($('#projector_sizes_cont .select_button.active').size()){
            $('#projector_sizes_cont .select_button.active').click();
        }else{
            $('#projector_sizes_cont .select_button:first').click();
        }
    }

    app_shop.fn.nameCreate = function(data){
        $('#projector_form h1').html(data.name);
        $('#breadcrumbs .bc-product-name span').html(data.name);
       // $('div.projector_description').html(data.cleardescription);
    }

    app_shop.fn.init_pr_bx = function(){
            app_shop.vars.bx_projector = $('#projector_form .bxslider').bxSlider({
              pagerCustom: '#bx-pager',
              adaptiveHeight: true,
              nextText: '<i class="icon-angle-right"></i>',
              prevText: '<i class="icon-angle-left"></i>'
            });
    }

    app_shop.fn.init_multi_vers = function(){

        $('#projector_rebatenumber').after('<span class="show_tip css_tip css_tip_small"><i class="icon-question"></i></span>');
        $projector_form = $('#projector_form');
        $('.fancy-select').fancyList({
          'fnItemClick': function(element){

            var product_id = element.data('product'); 
            element.parent().find('.selected').removeClass('selected');
            element.addClass('selected');
            var curr_url = element.find('a').attr('href');
         //   console.log(product_id);

         	var multiversions_selected = '&multiversions[selected]='+$.map($('#multi_versions .selected'),function(item){return $(item).data('values_id')}).join(',');;
                multiversions_selected += '&multiversions[last_selected]=' + element.data('values_id');
            $.ajax({
              url: '/ajax/projector.php?product='+product_id+'&get=multiversions'+multiversions_selected,
                    type: "get",
                    dataType: "json",
                    success: function(json) {
                       for(i in json.multiversions){
                          var items = json.multiversions[i].items;
                          var version_id = json.multiversions[i].id;
                          var itemHandler = $('#mw_'+version_id);
                          
                          itemHandler.removeClass('conflict');
                          for(j in items){
                            //  var version_item_id = '#v_'+$.map(items[j].values, function(item){return  item.id}).sort(function(a, b){return b-a}).join('_');

                              var version_item_id = '#v'+ items[j].values_id;
                              var version_itemHandler = $(version_item_id);
                              version_itemHandler.removeClass('disabled');
                              version_itemHandler.attr('data-product',items[j].products[0].product_id);
                             
                              version_itemHandler.find('a').attr('href',items[j].products[0].url);

                              if(items[j].disabled === true){
                                  if(version_itemHandler.is('.selected')){        
                                          itemHandler.addClass('conflict');
                                      }
                                      version_itemHandler.addClass('disabled');
                                  }
                              }
                          } 


                          ////
                          if($('#multi_versions .fancy-select.conflict').size()){
                              projectorObj.configObj.disableBuyButtonTXT = app_shop.txt.txt_74629_2;
                          }else{
                            projectorObj.configObj.disableBuyButtonTXT = '';               
                            if(product_id && product_data_arr[''+product_id+'']){
                                product_data.sizes = product_data_arr[''+product_id+''].sizes;
                                app_shop.fn.nameCreate(product_data_arr[''+product_id+'']);
                                app_shop.fn.sizeCreate(product_data);
                                app_shop.fn.imageCreate(product_data_arr[''+product_id+'']);
                                $('#projector_product_hidden').val(product_id);
                            }
                            app_shop.fn.change_url(curr_url);

                          }
                          
                          projectorObj.start();
                    },
                    error:function() {}
            });




          
          }

        });

    }

    app_shop.fn.init_pr_bx();
    app_shop.fn.init_multi_vers();


   // $('div.enclosures',$projector_form).find('a:first').click();
   // centerConternt( $('a.projector_medium_image img',$('div.photos')) );
//   $('#projector_sizes_cont').after($('a.show_size_cms'))

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
    simple_tooltip("span.show_tip","n59581_tooltip");

    //fixy do karty
    $('#projector_status_cont div.product_section_sub').append('<div style="clear:both">');

    //kopiowanie

  //  $projector_form.find('div.photos').append($('#projector_bundle_zone'));
  //  $projector_form.find('div.photos').append($('#projector_bundle_zone2'));
  //  $('#projector_form').find('div.product_info').prepend($('#projector_form').find('h1,div.projector_description'));
  //  $('div.product_info',$projector_form).prepend($('h1,div.projector_description',$projector_form));
    

    //klikniecie +
    $('#projector_number_up').click(function(){     
        $('#projector_number').val(parseFloat($('#projector_number').val()) + parseFloat(projectorObj.currentSizeObj.unit_sellby));
        projectorObj.start();
    //    $('#projector_price_yousave').html($('#projector_price_yousave').html().replace('.00',''));
    });

        //klikniecie -
    $('#projector_number_down').click(function(){
        $('#projector_number').val(parseFloat($('#projector_number').val()) - parseFloat(projectorObj.currentSizeObj.unit_sellby));
        projectorObj.start();
     //   $('#projector_price_yousave').html($('#projector_price_yousave').html().replace('.00',''));
    });

    //blur dla inputa ilosci
    $('#projector_number').blur(function(){
        projectorObj.start();
    });

    //projectorObj.currentSizeObj.price.promotiontilldate = '2015-03-10'

    function CountdownTimer(elm,tl){
   this.initialize.apply(this,arguments);
  }

  CountdownTimer.prototype={
   initialize:function(elm,tl) {
    this.elem = elm;
    this.tl = tl;
    this.tid = '';
   },countDown:function(){
    var timer='';
    var today=new Date();
    var day=Math.floor((this.tl-today)/(24*60*60*1000));
    var hour=Math.floor(((this.tl-today)%(24*60*60*1000))/(60*60*1000));
    var min=Math.floor(((this.tl-today)%(24*60*60*1000))/(60*1000))%60;
    var sec=Math.floor(((this.tl-today)%(24*60*60*1000))/1000)%60%60;

    var me=this;

    if( ( this.tl - today ) > 0 ){
     timer += '<label class="projector_label">'+app_shop.txt.txt_74629_1+'</label><div>';
     if(this.addZero(day) > 0)
        timer += '<span class="number-wrapper"><div class="line"></div><div class="caption">dni</div><span class="number day">'+this.addZero(day)+'</span></span>';
     timer += '<span class="number-wrapper"><div class="line"></div><div class="caption">godzin</div><span class="number hour">'+this.addZero(hour)+'</span></span>';
     timer += '<span class="number-wrapper"><div class="line"></div><div class="caption">minut</div><span class="number min">'+this.addZero(min)+'</span></span><span class="number-wrapper"><div class="line"></div><div class="caption">sekund</div><span class="number sec">'+this.addZero(sec)+'</span></span></div>';
     this.elem.html(timer);
     this.tid = setTimeout( function(){me.countDown();},1000 );
    }else{
     clearTimeout(this.tid);
     this.elem.remove();
     return;
    }
   },addZero:function(num){ return ('0'+num).slice(-2); }
  }
$(function(){
  if(projectorObj.currentSizeObj.price.promotiontilldate){
    $('#projector_prices_wrapper').after('<div id="CDT" class="product_section"></div>'); 
    var timer = new CountdownTimer($('#CDT'),new Date(projectorObj.currentSizeObj.price.promotiontilldate));
    timer.countDown();
  } 
})




}

$('#projector_sizes_cont .select_button').live('click',function(){
    $('#projector_sizes_cont .select_button').removeClass('active');
    $(this).addClass('active');
    $('#projector_size_hidden').val($(this).data('type'));
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