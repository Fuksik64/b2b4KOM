$(function(){
    $('#menu_affiliate > ul > li > span').click(function(){
     if ($(this).next('ul').size()) {
            if ($(this).is('.active')) {
                $(this).next('ul').hide();
                $(this).removeClass('active');
            } else {
                $('#menu_affiliate > ul > li > span').next('ul').hide();
                $('#menu_affiliate > ul > li > span.active').removeClass('active');
                $(this).addClass('active');
                $(this).next('ul').show();
            }
            return false;
        } 
     });
});