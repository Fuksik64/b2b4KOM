
var rma_add_alert="Fill out all the form fields."
var rma_add_msg1="Enter the product name"
var rma_add_msg2="Enter the product serial number"
var rma_add_msg3="Enter the date of purchase"
var rma_add_msg4="Describe the defect"
var rma_add_msg5="Describe the place of purchase"
var rma_add_msg6="Provide the address to which you want to get a refund"
var rma_add_msg7="Provide the bank account no."
var rma_add_msg8="Provide the details for to the cheque"
var rma_add_paymentTrigger=1;app_shop.run(function(){$('#rma_add_form').find('input, textarea').on('input',function(){clearTimeout(app_shop.formControl.timeHandle);obj=$(this);app_shop.formControl.timeHandle=setTimeout(function(){app_shop.formControl.validate(obj);},500);});$('a#rma_add_form_submit').on('click',function(){if(app_shop.formControl.checkForm($(this).parents('form'))==true){$('form#rma_add_form').submit();}
return false;});},'all','#rma_add_form');var rma_add={placeTrigger:0,setPlace:function(idek){$(".rma_add_form_boxsub_hidden").css("display","none");$("#"+idek).css("display","block");if(idek=='rma_add_form_buyplace_other')
{rma_add.placeTrigger=1;}
else
{rma_add.placeTrigger=0;}},setPayment:function(idek){$(".rma_add_form_boxsub2_hidden").css("display","none");$("#"+idek).css("display","block");switch(idek)
{case'rma_add_form_payp':rma_add_paymentTrigger=1;break;case'rma_add_form_payb':rma_add_paymentTrigger=2;break;case'rma_add_form_payc':rma_add_paymentTrigger=3;break;case'rma_add_form_payt':rma_add_paymentTrigger=4;break;}
rma_add.checkInps();},hideInfoText:function(id,i){},showInfo:function(id,error,text){if(error){document.getElementById(id+"_off").style.display='';document.getElementById(id+"_on").style.display='none';if(text){document.getElementById(id+"_help").style.display='block';document.getElementById(id+"_help").firstChild.innerHTML=text;rma_add.hideInfoText(id,5);}else{document.getElementById(id+"_help").style.display='none';}}else{document.getElementById(id+"_off").style.display='none';document.getElementById(id+"_on").style.display='';document.getElementById(id+"_help").style.display='none';}},checkInps:function(option){},setTime:function(dateText,inst)
{var czas=$("#rma_add_form_begin_ymd").datepicker('getDate');$("#rma_add_form_beginy").val(czas.getFullYear());$("#rma_add_form_beginm").val(czas.getMonth()+1);$("#rma_add_form_begind").val(czas.getDate());app_shop.formControl.validate($('#rma_add_form_begin_ymd'));},chooseSite:function(idek){var wart=idek.slice(5);$(".rma_add_form_stock").removeClass("rmaf_selected");$("#"+idek).addClass("rmaf_selected");$("#rma_stock").val(wart);}}