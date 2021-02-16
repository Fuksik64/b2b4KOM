app_shop.run(function(){
    $('a.n67367_instalment_button').click(function(){
        if(parseInt($(this).attr('data-bankcount'))>1){
            $('#n67367_instalment div.n67367_instalment_list').toggle();
        }else if(parseInt($(this).attr('data-bankcount'))==1){
            if(cena_raty>0){
                $('a.n67367_single_instalment_action').click();
            }else{
                $('#n67367_instalment div.n67367_instalment_list').show('fast');
            }
        }
        return false;
    });

    $('a.n67367_single_instalment').click(function(){
        if(cena_raty>0){
            $('a.n67367_single_instalment_action').click();
        }else{
            $('#n67367_instalment div.n67367_instalment_list').toggle('fast');
        }
        return false;
    });
      
},'all','#n67367_instalment');