
var searching_txt_wybierz="choose";adv_search={searchPriceHandler:true,siteAjaxHandler:'',textAjaxHandler:'',noUpdatetSelect:[],activeTree:[],nuberOfSelected:0,getParameters:function(){return $('#searching_form input.select_link_hidden[type=hidden], #searching_form input.searching_ajax, #searching_form input.searching_checkbox_name').not('.multipleselect').filter(function(){return $(this).val()}).serialize();},enableAllSelect:function(data){$('#searching_form input.searching_ajax').not('[name="pricelimitmin"],[name="pricelimitmax"],[name="sort"]').prop('disabled',false);$('#searching_form input.searching_ajax').not('[name="pricelimitmin"],[name="pricelimitmax"],[name="sort"]').next('.dropdown-toggle').prop('disabled',false);},error:function(jqXHR){if(jqXHR.statusText=="abort")return false;adv_search.enableAllSelect();if(jqXHR.statusText=='OK'){}else{}},findTreeInputs:function(str){var patt=/menu_alt\[.+\]/g;var result=patt.test(str);if(!result)return false;patt=/[0-9]+_[0-9]+/g;result=patt.exec(str)[0];var tab=result.split('_');var inputs=[]
for(i=parseInt(tab[1]);i<=3;i++){inputs.push('menu_alt['+tab[0]+'_'+i+']')}
return inputs;},getCount:function(currentElement){adv_search.ajaxLoadSite(1);if(treeInputs=adv_search.findTreeInputs(currentElement.attr('name'))){for(i=1;i<=treeInputs.length;i++){var obj=$('#searching_form [name="'+treeInputs[i]+'"]');obj.val('');obj.parents('.type_node_tree').hide();adv_search.prSelect([],obj.nextAll('ul'),'list')}}
parametersSend=adv_search.getParameters();$('#searching_form input.searching_ajax').not('[name="pricelimitmin"],[name="pricelimitmax"],[name="sort"]').prop('disabled',true);$('#searching_form input.searching_ajax').not('[name="pricelimitmin"],[name="pricelimitmax"],[name="sort"]').next('.dropdown-toggle').prop('disabled',true);$.ajax({type:"POST",url:'/ajax/search.php'+'?ajax=true&getCount=1'+'&'+parametersSend,dataType:"json",timeout:20000,success:function(json){$('#searching_form .no_update_data').removeClass('no_update_data')
adv_search.enableSelect(json.values);adv_search.disableCheckbox();adv_search.ajaxLoadSite(0);},error:function(jqXHR){adv_search.ajaxLoadSite(0);}});},ajaxLoadSite:function(flaga){if(!flaga){$('.searching_nodes').removeClass('load-content');}else{$('.searching_nodes').addClass('load-content');}},ajaxLoadSiteMessage:function(message){$('#ajaxLoadSite').append(message);$("#ajaxLoadSite").css({'left':(($(window).width()/2)-($("#ajaxLoadSite").width()/2))});},loadCheckbox:function(message){input_searching_checkbox=[]
$('input.searching_checkbox_name').each(function(i){input_searching_checkbox[i]=$(this);$.ajax({type:"POST",url:'/ajax/search.php'+'?ajax=true&getOne='+$(this).attr('name')+'&'+adv_search.getParameters(),dataType:"json",timeout:16000,success:function(json){inputName=input_searching_checkbox[i].attr('name');$(this).parent().find('label.searching_checkbox').remove();for(j in json.values){input_searching_checkbox[i].parent().append('<label class="searching_checkbox"><input class="searching_ajax multipleselect" type="checkbox" name="'+inputName+'" value="'+json.values[j][0]+'" /><span>'+json.values[j][1]+'</span></label>')}},error:function(jqXHR){adv_search.error(jqXHR)}});});},enableSelect:function(data){for(i in data){inputElement=$('#searching_form input[name="'+i+'"]');if(data[i]!=0){inputElement.attr("disabled",false);if(inputElement.next('.dropdown-toggle').size()){inputElement.next('.dropdown-toggle').attr("disabled",false);if(inputElement.parents('.type_node_tree').size())
inputElement.parents('.type_node_tree').show();}
if(inputElement.parents('.type_node_sub_duallist').size()){var name=inputElement.attr('name')+'_bis';var inputElement_bis=$('input.searching_ajax[name="'+name+'"]');inputElement_bis.attr("disabled",false);inputElement_bis.next('.dropdown-toggle').attr("disabled",false);}}}},disableCheckbox:function(message){input_searching_checkbox=[]
$('input.searching_checkbox_name').each(function(i){input_searching_checkbox[i]=$(this);input_searching_checkbox[i].parent().find('input[type=checkbox]').prop('disabled',true);input_searching_checkbox[i].parent().find('label').addClass('disabled');$.ajax({type:"POST",url:'/ajax/search.php'+'?ajax=true&getOne='+$(this).attr('name')+'&'+adv_search.getParameters(),dataType:"json",timeout:16000,success:function(json){inputName=input_searching_checkbox[i].attr('name');for(j in json.values){input_searching_checkbox[i].parent().find('[value="'+json.values[j][0]+'"]').prop('disabled',false).parent().removeClass('disabled');}
$('#searching_form .type_node_checkbox').each(function(){checkboxNames=[];$(this).find('input.multipleselect:checked').not(':disabled').each(function(i){checkboxNames[i]=$(this).val();})
$(this).find('input.searching_checkbox_name').val(checkboxNames.join(','));})},error:function(jqXHR){adv_search.error(jqXHR)}});});},prSelect:function(data,target,type){var options=[];j=0;var $lihtml='';var name=target.find('.dropdown-menu li:first a[data-value=""]').html();for(i in data){$lihtml+='<li ><a href="#'+data[i][0]+'" data-index="'+(parseInt(i)+parseInt(1))+'" data-type="'+type+'" data-value="'+data[i][0]+'">'+data[i][1]+'</a></li>';}
target.each(function(){$(this).find('li').not(':first').remove();$(this).append($lihtml);});},init:function(){app_shop.fn.replaceSelects($('#searching_form select'),'s_list_');adv_search.loadCheckbox();$(document).on('click.searching','.searching_ajax .dropdown-toggle',function(){var $this=$(this);var $input=$this.prev('input');var $ul=$this.nextAll('ul.dropdown-menu');var selectName=$input.attr('name');if($this.is('.no_update_data'))return false;$this.addClass('loading-list');if(treeInputs=adv_search.findTreeInputs(selectName)){for(i in treeInputs){$('#searching_form [name="'+treeInputs[i]+'"]').prop('disabled',true);}
var parameters=adv_search.getParameters();for(i in treeInputs){$('#searching_form [name="'+treeInputs[i]+'"]').prop('disabled',false);}}else{var parameters=adv_search.getParameters();}
$.ajax({type:"POST",url:'/ajax/search.php'+'?onlyVisibleElements=true&ajax=true&getOne='+selectName+'&'+parameters,dataType:"json",timeout:16000,success:function(json){if($this.parents('.type_node_duallist').size()){var duallis=$this.parents('.type_node_duallist')
adv_search.prSelect(json.values,duallis.find('ul.dropdown-menu'),'dual');duallis.find('.dropdown-toggle').addClass('no_update_data')}else{adv_search.prSelect(json.values,$ul,'list');$this.addClass('no_update_data');}
$this.removeClass('loading-list');},error:function(jqXHR){}});});$(document).on('click.searching','div.searching_engine_traits .dropdown-menu li a',function(){var $this=$(this);var $value=$this.attr('data-value');var $parent=$this.parents('.dropdown');$parent.find('input').val($value);$parent.find('.selected').removeClass('selected');$this.addClass('selected');});$(document).on('click.searching','.searching_ajax li a',function(){var $this=$(this);var $value=$this.attr('data-value');var $type=$this.attr('data-type');var $index=$this.attr('data-index');var $html=$this.html();var $parent=$this.parents('.dropdown');$parent.find('.dropdown-toggle').attr('data-indexcurrent',$index);$parent.find('.selected').removeClass('selected');$this.addClass('selected');if($type=='dual'){var values=$.map($parent.find('ul a'),function(val){return $(val).attr('data-value')});var indexes=$.map($this.parents('.type_node_duallist').find('[data-indexcurrent]'),function(val){return $(val).attr('data-indexcurrent')});var mininex=indexes[0];var maxindex=indexes[1];if(mininex==0&&maxindex==0){values=[];}else{if(maxindex==0)maxindex=values.length;values=values.slice(mininex,(parseInt(maxindex)+1));}
$parent.parents('.type_node_duallist').find('input.select_hidden').val(values.join(','));}
else{$parent.find('input').val($value);}
$parent.find('.dropdown-toggle span').html($html);adv_search.getCount($parent.find('input'));});$(document).on('click.searching','.searching_engine_traits li a',function(){var $this=$(this);var $html=$this.html();var $parent=$this.parents('.dropdown');$parent.find('.dropdown-toggle span').html($html);});$(document).on('click.searching','#searching_form input.searching_ajax[type=checkbox]',function(){if($(this).is('.multipleselect')){checkbox_parent=$(this).parents('.type_node_sub_checkbox');checkboxNames=[];checkbox_parent.find('input.multipleselect:checked').each(function(i){checkboxNames[i]=$(this).val();$(this).attr('name',$(this).attr('name')+'_bis');})
checkbox_parent.find('input.searching_checkbox_name').val(checkboxNames.join(','));}
currentElement=$(this);$('.currentSelected').removeClass('currentSelected');currentElement.addClass('currentSelected');adv_search.getCount(currentElement);});$(function(){$("#pricelimitmin").blur(function(){adv_search.searchPriceHandler=false;var minvalue=$("#pricelimitmin").val();var maxvalue=$("#pricelimitmax").val();var minvaluestart=parseInt($("#min_price_start").val());var maxvaluestart=parseInt($("#max_price_start").val());if(isNaN(minvalue)||(parseInt(minvalue)<minvaluestart)){$(this).val(minvaluestart);}else{if(parseInt(minvalue)>parseInt(maxvalue))
$(this).val(parseInt(maxvalue));}
currentElement=$(this);$('.currentSelected').removeClass('currentSelected');currentElement.addClass('currentSelected');adv_search.getCount(currentElement);});$("#pricelimitmax").blur(function(){adv_search.searchPriceHandler=false;var minvalue=$("#pricelimitmin").val();var maxvalue=$("#pricelimitmax").val();var minvaluestart=parseInt($("#min_price_start").val());var maxvaluestart=parseInt($("#max_price_start").val());if(isNaN(maxvalue)||(parseInt(maxvalue)>maxvaluestart))$(this).val(maxvaluestart);else if(parseInt(minvalue)>parseInt(maxvalue))$(this).val(parseInt(minvalue));currentElement=$(this);$('.currentSelected').removeClass('currentSelected');currentElement.addClass('currentSelected');adv_search.getCount(currentElement);});$('#searching_form').submit(function(){$("#searching_form [name$='_bis']").prop('disabled','disabled');})});}}
function validateDate(obj){}
app_shop.run(function(){adv_search.init();},'all','#searching',true)