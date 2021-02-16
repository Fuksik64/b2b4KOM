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
		
			$(this).parents('li.product_bundle').prop('title', bundle_title +' '+ bundleSizesObj.price);
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
/*

    selectSizes["bundle"] = selectSizes["onesize"];
    selectSizes["bundle"][6] = maxDelivery_days;
    selectSizes["bundle"][15] = bundleAmount;
    selectSizes["bundle"][7] = bundleStatus_descriptiont;
    selectSizes["bundle"][14] = maxShipping; 


    Projector.start("bundle","onesize"); */
	}

}