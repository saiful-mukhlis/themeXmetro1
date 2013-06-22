{if $result.status eq 1}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">  
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://www.facebook.com/2008/fbml">
<head>
<!--jagoan-->
<LINK rel="stylesheet" href="{$TEMPLATE_USE}/templates/css/{$TEMPLATE_COLOR_USED}" type="text/css" media="screen" />
<!--EO jagoan-->
<title>Redirecting to paypal</title>

</head>
<body>
<form name="paypal" id="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_cart" />
<input type="hidden" name="upload" value="1" />
<input type="hidden" name="business" value="{$paypal_account}" />
<INPUT TYPE="hidden" NAME="return" value="{$home}checkout_paypal/{$param_url}" />
<INPUT TYPE="hidden" NAME="cbt" value="click here to complete order" />
<INPUT TYPE="hidden" NAME="cancel_return" value="{$home}cart" />
<INPUT TYPE="hidden" NAME="invoice" value="{$invoice_id}" />
<INPUT TYPE="hidden" NAME="rm" value="2" />
{section name=index loop=$data_paypal}
	<input type="hidden" name="item_name_{$data_paypal[index].counter2}" value="{$data_paypal[index].product_name}" />
	<INPUT TYPE="hidden" name="quantity_{$data_paypal[index].counter2}" value="{$data_paypal[index].cart_qty}" />
	<input type="hidden" name="amount_{$data_paypal[index].counter2}" value="{$data_paypal[index].product_cart_subtotal}" />
{/section}
</form>
</form>
<div class="box success-box" style="margin:10px;">
	{$result.info}
</div>
<div style="text-align:center;">
<img src="http://www.fordeon.com/images/loading6.gif" onLoad="document.forms['paypal'].submit();" />
</div>
<br />
</body>
</html>
{else}
<br />
<div class="box alert-box" style="margin:10px;">
	{$result.info}
</div>
<br />
{/if}
<img src="{$TEMPLATE_USE}/templates/{$TEMPLATE_IMAGES_USED}/spacer.png" border=0 onLoad="$('#captha_image').trigger('click');" />

