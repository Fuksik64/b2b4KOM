var setProjectorLayout  = function(){

$('#projector_productname div.projector_productname_label').css('margin-right', -136);
$('#container.projector_page #right').show();
$('#container.projector_page #middle').css('width', 632);
$('#form_projector div.photos').css('width', 300);


$(window).load(function(){
$('#right').css('min-height',$('#page').height() - parseInt($('#right').css('margin-top')));
})



}