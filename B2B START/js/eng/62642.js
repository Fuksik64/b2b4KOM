var bundleSizesObj = ''
var minAmount = [];
var maxShipping = '-1'
var maxDelivery_days = '-1'
var bundleAmount = '-1';
var bundleStatus_descriptiont = '';
var bundleFlag = false;

function bundleSizeStart(){

    maxShipping = '-1'
    maxDelivery_days = '-1'
    maxDelivery_days = '-1'
    bundleAmount = '-1';


    $('li.activ_size').each(function(i){
        eval('bundleSizesObj = '+$(this).next().text());
        if((1*maxShipping) < (1*bundleSizesObj.shipping))
            maxShipping = bundleSizesObj.shipping;

         if((1*maxDelivery_days) < (1*bundleSizesObj.delivery_days))
            maxDelivery_days = bundleSizesObj.delivery_days;

			bundleFlag = true;

        minAmount[i] = [bundleSizesObj.amount, bundleSizesObj.status_description];
    })

	if(bundleFlag){

    bundleAmount = minAmount[0][0];
    bundleStatus_descriptiont = minAmount[0][1];

    for(i in minAmount){
        if(minAmount[i][0] != '-1'){
            if(bundleAmount != minAmount[i][0]){
                bundleAmount = minAmount[i][0];
                bundleStatus_descriptiont = minAmount[i][1];
            }
        }
    }


    selectSizes["bundle"] = selectSizes["onesize"];
    selectSizes["bundle"][6] = maxDelivery_days;
    selectSizes["bundle"][15] = bundleAmount;
    selectSizes["bundle"][7] = bundleStatus_descriptiont;
    selectSizes["bundle"][14] = maxShipping; 


    Projector.start("bundle","onesize");
	}

}


function copyBundleInputs(){
    $('#form_projector_bundle').remove();
    $('form#form_projector').append('<div style="display:none;" id="form_projector_bundle"></div>')
    $('#projector_bundle_zone').find('input').clone().appendTo("#form_projector_bundle");	

}


$(function(){

    copyBundleInputs();
    bundleSizeStart();

    $('ul.product_bundle div.product_bundle_size_title').click(function(event){
        event.stopPropagation();
        $(this).next().toggle();
        $('ul.product_bundle div.product_bundle_size').css('z-index','1');
        $(this).parent().css('z-index','900');
        $('ul.product_bundle ul.product_bundle_size').not($(this).next()).hide();
        $('body').bind('click',function(){
            $('ul.product_bundle_size').hide();
            $('body').unbind('click');
        });
    });

    $('ul.product_bundle_size li').click(function(){

        $(this).parent().prev().text($(this).text());
        $(this).parent().next().val($(this).attr('data-type'));
        $(this).parent().find('.activ_size').removeClass('activ_size');
        $(this).addClass('activ_size');
        $(this).parent().hide();
        copyBundleInputs();
        bundleSizeStart();
    });


    $('div.product_bundle li.product_bundle').hover(

        function(){

            $('div.product_bundle li.product_bundle.activ_bundle').removeClass('activ_bundle');
            $(this).addClass('activ_bundle');
            $('#product_bundle_icon').attr('src',$(this).attr('data-icon')); 
            $('a.product_bundle_icon').attr('href',$(this).attr('data-image')); 


        },
        function(){



        }

        )

})