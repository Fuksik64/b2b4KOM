
var rmaLessInfo=""
var rma_cancel_alert=""
var rma_list={rmaMoreInfo:$("rma_list_item1").eq(0).children(".rma_list_item_operation").html(),choosePanel:function(przycisk,panel){if($("#"+przycisk))
{$("#"+przycisk).siblings().removeClass("rma_on");$("#"+przycisk).addClass("rma_on");}
if($("#"+panel))
{$("#"+panel).siblings().hide();$("#"+panel).show();}},chooseRma:function(idek)
{if($("#rmal_"+idek))
{$("#rmal_"+idek).toggleClass("rma_itema");$("#rmal_"+idek).children(".rma_list_item_operation").toggleClass("ophidden");if($("#rmal_"+idek).next().css("display")=='none')
{$("#rmal_"+idek).next().slideDown(rmaHideSpeed);}
else
{$("#rmal_"+idek).next().slideUp(rmaHideSpeed);}}},cancelRma:function(url)
{var canc=confirm(rma_cancel_alert);if(canc==true)
{window.location=url;}
else
{return false;}}}