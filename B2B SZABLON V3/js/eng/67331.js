$(function() {
    $('#a_change_code').click(function(){
        $('#change_code').toggle();
        return false;
    });
    $('#a_remove_code').click(function(){
        $('input.basketedit_rebatecode_input').val(' ');
        $('#change_code').submit();      
        return false;
    });
});