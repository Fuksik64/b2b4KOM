
app_shop.run(function(){$('.return_form').find('input, textarea').on('input',function(){clearTimeout(app_shop.formControl.timeHandle);obj=$(this);app_shop.formControl.timeHandle=setTimeout(function(){app_shop.formControl.validate(obj);},500);});$('.step5 #return_go_next').on('click',function(){if(!$('.return_form.form-control.validate').parent().is('.has-success')&&$('.return_form.form-control.validate').parents('.return_form').is('.active')){app_shop.formControl.checkForm($(this).parents('form'));if($('.return_form .form-control.validate[name="bank_account"]').parents('.return_form').is('.active')&&$('.return_form .form-control.validate[name="bank_account"]').val()==''){Alertek.Start(validationTextErrors['invalid_bank_acccount']);}
return false;}else{if($('.return_form .form-control.validate[name="bank_account"]').parents('.return_form').is('.active')&&$('.return_form .form-control.validate[name="bank_account"]').val()==''){Alertek.Start(validationTextErrors['invalid_bank_acccount']);return false;}
$('div.progress_bar_wrapper').removeClass('pb_step5').addClass('pb_step6');}})},'all','.return_form');handleTim='';$('.step5 div.return_form').live('click',function(){$('.step5 div.return_form').removeClass('active');$(this).addClass('active').find('input').prop('checked',true);});