
var bundleSizeLabel="Größe: "
var noBundle="Set nicht verfügbar."
var disableBundleButton="Der Warenkorb kann nicht hinzugefügt werden, weil kein Produkt ausgewählt wurde."
var collection_txt_1="Ausgewählte Artikel in den Warenkorb legen"
var collection_txt_2="Ausgewählte Artikel in den Warenkorb legen"
$('.bundled_options_select .dropdown-menu a').live('click.bundle',function(){var $this=$(this);var value=$this.attr('data-value');var $parent=$this.parents('.dropdown');if(!$this.is('.selected')){$('body').addClass('load-content');$parent.find('input').val(value);$parent.find('button span').html($this.html());$parent.find('.selected').removeClass('selected');$this.addClass('selected');var productID=$this.parents('li.product_bundle').find('.bundled_product').val();var sizeID=$this.parents('li.product_bundle').find('.product_bundle_size').find('.dropdown-menu a.selected').data('value');if(!sizeID||sizeID=='undefined')
sizeID='uniw';$.getJSON('/ajax/projector.php?product='+productID+'&size='+sizeID+'&get=sizeprices,sizeavailability,sizedelivery,bundleprice',function(json){$this.parents('li.product_bundle').find('.price b').text(json.sizeprices.price_formatted);app_shop.fn.update_bundle();}).error(function(){bundleUpdate_ajax_callback();});}});app_shop.fn.sizeCreate_bundle=function(data,target){if($.isEmptyObject(data.items))app_shop.fn.update_bundle();var sizesHTML=[];var sizeInput='';if(target.find('input.product_bundle_size').length){sizeInput=target.find('input.product_bundle_size');}else if(target.find('.dropdown.product_bundle_size').length){sizeInput=target.find('.dropdown.product_bundle_size > input.select_hidden');}
var activeSize=sizeInput.val();var sizeName=sizeInput.attr('name');var titleName=sizeInput.next().find('b').html();target.find('.product_bundle_size').remove();if(data.items.uniw){target.append('<input class="product_bundle_size" type="hidden" value="uniw" name="'+sizeName+'" >');return false;}
for(i in data.items){var sizeClass=(data.items[i].amount==0)?'disabled':'';selected=(activeSize==data.items[i].type)?' selected="selected" ':' ';sizesHTML.push('<option class="',sizeClass,selected,'" value="',data.items[i].type,'" data-amount="',data.items[i].amount,'">',data.items[i].description,'</option>');}
target.append($('<select data-label="'+titleName+'" class="product_bundle_size" name="'+sizeName+'" >').append(sizesHTML.join('')));app_shop.fn.replaceSelects(target.find('select.product_bundle_size'),'product_bundle_size_');};app_shop.fn.update_bundle=function(){$("#alert_cover").hide();$("ul.product_bundle").find("[name^=bundled_product],[name^=bundled_size]").attr("disabled",false);var product=$("#projector_product_hidden").val();var size=$("#projector_size_hidden").val();var data=$("#projector_bundle_product input, #projector_bundle_product select").serialize();data+="&"+
$.map($("input.bundled_quantity").not(":checked"),function(obj){return $(obj).attr("name")+"=0";}).join("&");data=data.replace("onesize","uniw");size=size=="onesize"?"uniw":size;$("#projector_bundle_product input.bundled_quantity").not(":checked").parents("li.product_bundle").find("[name^=bundled_product],[name^=bundled_size]").attr("disabled",true);$("body").addClass("load-content");$.getJSON("/ajax/projector.php?product="+
product+"&size="+
size+"&"+
data+"&get=sizeprices,sizeavailability,sizedelivery,bundleprice,bundle",function(json){if(!$.isEmptyObject(json.sizeprices)){projectorObj.currentSizeObj.price=json.sizeprices;projectorObj.currentSizeObj.price.maxprice=json.sizeprices.beforerebate;projectorObj.currentSizeObj.price.maxprice_net=json.sizeprices.beforerebate_net;}
if(!$.isEmptyObject(json.sizedelivery)){projectorObj.currentSizeObj.delivery=json.sizedelivery;}
if(!$.isEmptyObject(json.sizeavailability)){projectorObj.currentSizeObj.availability=json.sizeavailability;}
if(!$.isEmptyObject(json.sizeavailability.shipping_time)){projectorObj.currentSizeObj.shipping_time=json.sizeavailability.shipping_time;}
if(json.bundleprice)
projectorObj.currentSizeObj.bundle_price=json.bundleprice;projectorObj.setCurrentSizeObj($("#projector_size_hidden").val());if($("#projector_form.collection").length&&!$('li.product_bundle input.bundled_quantity[type="checkbox"]:checked').size()){projectorObj.configObj.disableBuyButtonTXT=disableBundleButton;}else{projectorObj.configObj.disableBuyButtonTXT="";}
projectorObj.start();if(!$.isEmptyObject(json.bundleprice)&&json.bundleprice.percent_diff!=100&&json.bundleprice.percent_diff>0){$("#projector_price_yousave_bundle").show();$("#projector_form .percent_diff").text(json.bundleprice.percent_diff);$("#projector_form .amount_diff_gross").text(json.bundleprice.amount_diff_gross_formatted);}else{$("#projector_price_yousave_bundle").hide();}
$("ul.product_bundle li .product_bundle_size button").removeClass("disable");var wrapper=$("ul.product_bundle li.disabled .selected").parents("li.product_bundle");wrapper.find(".product_bundle_size button").addClass("disable");bundleUpdate_ajax_callback(json);}).error(function(){bundleUpdate_ajax_callback();});};var bundleUpdate_ajax_callback=function(json){$('body').removeClass('load-content');if(json&&json.bundle){$.each(json.bundle,function(key,value){console.log(value);var prodID=value.product;var quantity=value.quantity;if(quantity>1)
if($('input.bundled_product[value='+prodID+']').siblings('.bundled_name').find('a > strong').length)
$('input.bundled_product[value='+prodID+']').siblings('.bundled_name').find('a > strong').text(quantity+'x ');else
$('input.bundled_product[value='+prodID+']').siblings('.bundled_name').find('a').prepend('<strong>'+quantity+'x </strong>');});}
var bundled_quantity_count=$('#projector_bundle_product input.bundled_quantity:checked').size();if(bundled_quantity_count>1){$('.bundle_item_count,#projector_price_unit_sellby').show().text(bundled_quantity_count);}else{$('.bundle_item_count,#projector_price_unit_sellby').hide();}
if($('#projector_form.collection').length){if(bundled_quantity_count==$('ul.product_bundle > li').length){$('#projector_button_basket').text(collection_txt_2);}else{$('#projector_button_basket').text(collection_txt_1);}}}
app_shop.run(function(){if($('#projector_form.collection').length)$('body').addClass('alertek-disabled');$('.bundled_options_select .product_bundle_size .select_button').live('change',function(){var wrapper=$(this).parents('li.product_bundle');var amount=$(this).attr('data-amount');var type=$(this).attr('data-type');var txt=$(this).html();wrapper.find('input.bundled_quantity').attr({'disabled':false,'data-amount':amount});if(amount==0){}else{}
app_shop.fn.update_bundle();});$('.bundled_options_select .fancy-select').fancyList({'fnItemClick':function(element){if(!element.is('.selected')){$('body').addClass('load-content');var product_id=element.data('product');var bundle_product_id=element.data('bundle_product');var curr_url=element.find('a').attr('href');if(element.is('.selected'))
return false;element.parent().find('.selected').removeClass('selected');element.addClass('selected');var selectedElement=element.parents('.bundled_multi_versions').find('.selected');var multiversions_selected='&multiversions[selected]='+$.map(selectedElement,function(item){return $(item).data('values_id')}).join(',');multiversions_selected+='&multiversions[last_selected]='+element.data('values_id');var size_type=element.parents('.bundled_options_select').find('input[name^=bundled_size]').val();$this=element;var productID=$this.data('product');if($this.parents('li.product_bundle').find('.product_bundle_size').find('.dropdown-menu a.selected').data('value'))
var sizeID=$this.parents('li.product_bundle').find('.product_bundle_size').find('.dropdown-menu a.selected').data('value');else
var sizeID='uniw';$.getJSON('/ajax/projector.php?product='+productID+'&size='+sizeID+'&get=sizeprices,bundleprice',function(json){$this.parents('li.product_bundle').find('.price b').text(json.sizeprices.price_formatted);var _avabiliti=$this.parents('li.product_bundle').find('.bundled_availability');$.ajax({url:'/ajax/projector.php?product='+product_id+'&size='+size_type+'&get=multiversions,sizes,pictures,bundle'+multiversions_selected,type:"get",dataType:"json",success:function(json){for(i in json.multiversions){var items=json.multiversions[i].items;var version_id=json.multiversions[i].id;var itemHandler=$(document.getElementById('mw_'+bundle_product_id+version_id));itemHandler.removeClass('conflict');for(j in items){var version_item_id='v'+bundle_product_id+items[j].values_id;var version_itemHandler=$(document.getElementById(version_item_id));version_itemHandler.removeClass('disabled');version_itemHandler.attr('data-product',items[j].products[0].product_id);version_itemHandler.find('a').attr('href',items[j].products[0].url);if(items[j].disabled===true){if(version_itemHandler.is('.selected')){itemHandler.addClass('conflict');}
version_itemHandler.addClass('disabled');}}}
_avabiliti.hide();if(json.sizes.amount==0){_avabiliti.show();}
var updateWrapper=element.parents('li.product_bundle');updateWrapper.find('a.product_bundle_icon').attr('href',curr_url);if(json.pictures[1]){updateWrapper.find('.product_bundle_icon img').attr('src',json.pictures[1].data.icon);}
var _name=json.sizes.name;$.each(json.bundle,function(key,value){if(value.product==productID&&value.quantity>1)
_name=value.quantity+'x '+_name;});updateWrapper.find('.product-name').text(_name);updateWrapper.find('a.product-name').attr('href',json.sizes.link);updateWrapper.find('input.bundled_product').val(product_id);app_shop.fn.sizeCreate_bundle(json.sizes,updateWrapper.find('.bundled_options_select'));$('#mw_'+bundle_product_id+version_id+'_selected').find('span').html(itemHandler.find('.selected').data('title'));if($('#projector_bundle_product .fancy-select.conflict').size()){projectorObj.configObj.disableBuyButtonTXT=app_shop.txt.txt_74629_2;}else{projectorObj.configObj.disableBuyButtonTXT='';}
app_shop.fn.update_bundle();},error:function(){$('body').removeClass('load-content');}});}).error(function(){bundleUpdate_ajax_callback();});}}});$('#projector_sizes_cont').before($('#projector_bundle_product'));$('#projector_bundle_product .bundled_quantity').live('change',function(){app_shop.fn.update_bundle();});app_shop.fn.replaceSelects($('select.product_bundle_size'),'product_bundle_size_');$('a.show_size_bundle').live('click',function(){var id=$(this).data('id');$(id).dialog({'wrappContent':true,'fixed':false,'fitToWindow':false,'animate':false,'width':700,'wrapperClass':'dialog_wrapper_sizes_chart'});return false;});},'all','#projector_bundle_product',true);