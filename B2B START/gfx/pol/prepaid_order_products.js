
app_shop.run(function divisionChangeLiteral(){const tooltips=document.querySelectorAll('#prepaid_order_products .ordered-name .tooltipContent');tooltips.forEach((el)=>{const weeks=el.getAttribute('data-shipping_week');el.querySelector('strong').innerHTML=weeks+app_shop.fn.changeLiteral(parseInt(weeks,10),prepaidTxtWeek,true);});},'all','#prepaid_order_products');