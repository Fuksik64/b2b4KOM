var searchImageWidth = 145;

var initSearchFunction = function(){

$(window).load(function() {  
 
 $("table.search_results_sub").each(function(i){
     
    var $h = $(this).parent().height();
    $(this).css("height",$h);
    
    
    var widthDifference = $(this).find("img.search_results_icon").width() - searchImageWidth;
    
    if(widthDifference > 0){
         
         var newMargin = -1 * (widthDifference / 2);
         
        $(this).find("img.search_results_icon").css("margin-left", newMargin );
        
    }    
 });
 });
 
 
 $("table.search_results_sub").each(function(i){     
    var $h = $(this).parent().height();
    $(this).css("height",$h);        
 });
 
  $("table.search_results_sub").hover(
      function () {
    
        $(this).find("div.search_results_details").css("background-color","#FFFFFF");

      }, 
      function () {

          $(this).find("div.search_results_details").css("background-color","#E3E3E3");
      }
    );        



}