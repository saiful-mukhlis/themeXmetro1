<table class="shop_table">
	<thead>
		<tr>
			<th class="product-name">{$TEXT_HEADER_PREV_CART_PRODUK}</th>
			<th class="product-quantity">{$TEXT_HEADER_PREV_CART_JUMLAH}</th>
			<th class="product-total">{$TEXT_HEADER_PREV_CART_TOTAL}</th>
		</tr>
	</thead>
	<tfoot>
		{if $shipping_ongkir neq ''}
		<tr class="cart-subtotal">
			<th colspan="2"><strong>Shipping</strong></th>
			<td><span class="amount">{$shipping_ongkir_currency}</span></td>
		</tr>
		{/if}
		<tr class="cart-subtotal">
			<th colspan="2"><strong>{$TEXT_PREV_CART_SUBTOTAL}</strong></th>
			<td><span class="amount">{$grand_total_currency}</span></td>
		</tr>
	</tfoot>
	<tbody>			
		{section name=index loop=$cart_item}
		<tr class="checkout_table_item">
			<td class="product-name">{$cart_item[index].product_name}</td>
			<td class="product-quantity">{$cart_item[index].cart_qty}</td>
			<td class="product-total"><span class="amount">{$cart_item[index].product_cart_subtotal_currency}</span></td>
		</tr>
		{/section}
		</tr>		
	</tbody>
</table>