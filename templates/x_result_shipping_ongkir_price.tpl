{if $post_act eq 'shipping'}
	<img src="{$TEMPLATE_USE}/templates/images/spacer.png" border=0 onLoad="makeRequest('{$home}/x_page.php', 'shipping_input_container', 'page=x_shipping_input&page_required=1&&total_cart={$total_cart}&total_weight={$total_weight}');" />
	<img src="{$TEMPLATE_USE}/templates/images/spacer.png" border=0 onLoad="makeRequest('{$home}/x_page.php', 'total_cart_sum_shipping', 'page=x_result_shipping_ongkir_price&page_required=1&act=sum_shipping&total_cart={$total_cart}&ongkir={$result_shipping_ongkir}');" />
	{if $result_shipping_ongkir eq ''}
		-
	{else}
		{$result_shipping_ongkir_currency}
	{/if}

{else}
	{$cart_sum_shipping_currency}
{/if}