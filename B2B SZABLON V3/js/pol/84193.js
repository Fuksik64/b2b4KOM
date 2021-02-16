app_shop.run(function(){

    $('#projector_buy_section').after($('#n67367'));
    $('#n67367_returns a.n67367_more').live('click',function(){
        var obj = $(this);
        obj.next().slideToggle();
        var oParnet = obj.parent().toggleClass('_open');

        if(oParnet.hasClass('_open')) {
            obj.text( obj.attr('data-less') );
        }else{
            obj.text( obj.attr('title') );
        }

        return false;
    })

},'all','#n67367',true);