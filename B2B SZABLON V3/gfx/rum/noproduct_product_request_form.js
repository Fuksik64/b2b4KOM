
app_shop.run(function(){$('#noproduct_form').find('input, textarea').on('input',function(){clearTimeout(app_shop.formControl.timeHandle);obj=$(this);app_shop.formControl.timeHandle=setTimeout(function(){app_shop.formControl.validate(obj);},500);});$('.noproduct_form_submit').off('click').on('click',function(){if(app_shop.formControl.checkForm($(this).parents('form')))
$('#noproduct_form').submit();return false;});},'all','#noproduct_form');