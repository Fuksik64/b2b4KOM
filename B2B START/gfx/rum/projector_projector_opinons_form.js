
app_shop.fn.opinionsInit=function(){$('.opinion_star').on('mouseenter',function(){var _this=$(this),points=_this.siblings('strong'),input=_this.siblings('input');_this.addClass('active').prevAll('a').addClass('active');_this.nextAll('a').removeClass('active');points.text(_this.attr('title'));input.val(_this.attr('rel'));if($('.opinions_points_picture:not(.d-block)').length){$('.opinions_points_picture').addClass('d-block');}}).on('click',function(){var _this=$(this),points=_this.siblings('strong'),input=_this.siblings('input');points.text(_this.attr('title'));input.val(_this.attr('rel'));if($('.opinions_points_picture:not(.d-block)').length){$('.opinions_points_picture').addClass('d-block');}
return false;});$('.shop_opinions_button button').on('click',function(){return app_shop.fn.opinionsValidate($('#shop_opinion_form'));});$('#shop_opinion_form input[required]').on('blur, input',function(){if($(this).val()!=''){$(this).parent().removeClass('has-error').find('.validate_message').remove();}});$('#show_opinion_form').on('click',function(){$('.opinions_add_form').dialog({wrappContent:true});return false;});$('.opinion_rate').on('click',function(){var _this=$(this);if(_this.hasClass('active')){_this.removeClass('active');$('#no_opinions_of_type').addClass('d-none');$('div[data-opinion_rate]').show();}else{$('.opinion_rate.active').removeClass('active');_this.addClass('active');$('div[data-opinion_rate]').hide();$('div[data-opinion_rate='+_this.attr('id')+']').show();if(!$('div[data-opinion_rate='+_this.attr('id')+']').length){$('#no_opinions_of_type').removeClass('d-none');}else{$('#no_opinions_of_type').addClass('d-none');}}});$('.rate_opinion a').on('click',function(ev){ev.preventDefault();var _this=$(this);opinionId=_this.siblings('input[name=opinionId]').val();opinionState=_this.find('input[name=opinionState]').val();$.ajax({url:'/ajax/opinions.php?action=rate',type:'POST',dataType:'json',data:"id="+opinionId+"&operation="+opinionState,success:function postRateOpinion(json){if(json.errors.length){Alertek.Start(json.errors[0].faultString);}
if(json.result){_this.parent().find('.opinion_rate_yes .rate_count').text(json.result.score_positive);_this.parent().find('.opinion_rate_no .rate_count').text(json.result.score_negative);}}});});}
app_shop.run(function(){app_shop.fn.opinionsInit();},'all','#opinions_section');