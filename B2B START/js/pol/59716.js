$().ready(function(){


$('div.opinion_note').each(function(){
   var input = $(this).find('input');
   var bold = $(this).find('b');
   var inputValue = input.val();
   var elementy =  $(this).find('a');
   var timeHandler = '';


   elementy.eq(inputValue-1).addClass('activNote').prevAll('a').addClass('activNote');
     bold.text(elementy.eq(inputValue-1).attr('title')); 

   $(this).find('a').hover(function(){
          $(this).addClass('activNote').prevAll('a').addClass('activNote');
          $(this).nextAll('a').removeClass('activNote');
          bold.text($(this).attr('title')); 
          clearTimeout(timeHandler);       
   },
    function(){  
          timeHandler = setTimeout(function(){
               elementy.eq(inputValue-1).addClass('activNote').prevAll('a').addClass('activNote');
               elementy.eq(inputValue-1).nextAll('a').removeClass('activNote')
               bold.text(elementy.eq(inputValue-1).attr('title')); 
             //  alert(inputValue);

          }, 100);


         
    }).click(function(){

          input.val($(this).attr('rel'));
          inputValue = $(this).attr('rel');
          bold.text($(this).attr('title')); 
          return false;

    });

})
})