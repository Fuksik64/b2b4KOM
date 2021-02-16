$(document).ready(function()
{
var orderdetails_virtual_count=$('span.only_virtual_info').length;
var orderdetails_product_count=$('#prepaid_order_products table tr').length;

if($('#prepaid_order_products').length && typeof(only_virtual_all_literal_1)!='undefined' && typeof(only_virtual_all_literal_2)!='undefined' && typeof(client_files_link)!='undefined' && typeof(client_files_link_txt)!='undefined' && orderdetails_product_count==orderdetails_virtual_count)
{
$('span.only_virtual_info').hide();
$('#prepaid_order_products').after('<span class="only_virtual">'+only_virtual_all_literal_1+'<a href="'+client_files_link+'">'+client_files_link_txt+'</a>'+only_virtual_all_literal_2+'</span>');
}
});