
app_shop.fn.shipping_info=function(id,size,quantity,url,status,unknown_delivery_time){var size=(size=='onesize')?'uniw':size;var deliverytime=function(day,hour,min,id){var time='';if(day>0){txt_day_variety=app_shop.fn.variety(day,day_txt,days_txt);time=day+txt_day_variety;}
if(hour>0){txt_hour_variety=app_shop.fn.variety(hour,hour_txt,hours_txt);time=hour+txt_hour_variety;}
if(min>0){time=min+min_txt;}
if(day==0&&hour==0&&min==0){if(id=='0-1'||id=='0-0'){time=txt_24h}else{time=txt_do_24h}}
return time;}
var prepare=function(obj,type){var html=[];html.push('<div class="shipping_info">');html.push('<span class="shipping_title">',type,'</span>');obj.each(function(index,item){if(item.id=='0-1'||item.id=='0-0'){deliverys_txt=delivery_txt2}else{deliverys_txt=delivery_txt;}
html.push('<div class="shipping_info_sub"><div class="shipping_info_header">');html.push('<img class="shipping_info_icon" src="',item.icon,'" />');var shipping_info_time=unknown_delivery_time==true&&status=='order'?' ':'<div class="shipping_info_time">'+deliverys_txt+deliverytime(item.deliverytime_days,item.deliverytime_hours,item.deliverytime_minutes,item.id)+'</div>';html.push('<span class="shipping_info_name">',item.name,shipping_info_time,'</div>');html.push('<div class="shipping_info_pricebox">');if(item.beforerebate_formatted){html.push('<del class="shipping_info_oldprice">',item.beforerebate_formatted,'</del>');}
html.push('<span class="shipping_info_price">');if(item.cost>0){html.push(item.cost_formatted);}else{html.push(gratis_txt);}
html.push('</span></div></div>');});html.push('</div>');return html.join('');};if(size+quantity){var _url="products["+id+"]["+size+"][quantity]="+quantity;}else{var _url=id;}
var label_unknown_delivery='';label_unknown_delivery=unknown_delivery_time==true&&status=='order'?'<div class="shipping_unknown_time_label">'+$('.search_delivery').html()+'</div>':' ';$.ajax({url:"/ajax/get-deliveries.php?mode=productAndBasket&"+_url,type:"POST",dataType:"json",data:{getAjax:true},success:function(json){$('body').dialog({'content':label_unknown_delivery+'<div class="table_wrapper">'+prepare($(json.prepaid),prepaid)+prepare($(json.dvp),dvp)+'</div>','fixed':false,'fitToWindow':false,'animate':false,'width':1028,'wrapperClass':'dialog_wrapper_shipping_info'});},error:function(){window.location=url;}});}