app_shop.run(function(){
    $('#menu_settings').on('click','.open_trigger, #menu_settings li:first-child .form-group:first-child > label',function(){  
        $('#menu_settings form').toggleClass('active');
        return false;
    })
}, 'all', '#menu_settings');