<table class="shop_table cart" cellspacing="0">
	<thead>
		<tr>
			<th class="product-remove">&nbsp;</th>
			<th class="product-thumbnail">&nbsp;</th>
			<th class="product-name">Product</th>
			<th class="product-price">Price</th>
			<th class="product-quantity">Quantity</th>
			<th class="product-subtotal">Total</th>
		</tr>
	</thead>
	<tbody>
	{if $total_cart eq 0}
	
	
	{else}	
		{section name=index loop=$cart_item}
		<!-- First Product -->		
		<tr class="cart_table_item">
			<!-- Product remove -->
			<td class="product-remove">
				{if $post_view neq 'checkout'}
					<a href="#" onClick="makeRequest('{$home}/x_page.php', 'show_cart_container', 'page=x_show_cart&act=remove&page_required=1&cart_detail_id={$cart_item[index].cart_detail_id}');" class="remove" title="Remove this item">&times;</a>
				{/if}
			</td>
			
			<!-- Product thumbnail -->
			<td class="product-thumbnail">
				<a href="{$cart_item[index].product_link}"><img src="{$store_image}/{$cart_item[index].product_image_4}" class="attachment-shop_thumbnail" alt="{$cart_item[index].product_name}" title="{$cart_item[index].product_name}" border=0 /></a>
			</td>

			<!-- Product name -->
			<td class="product-name">
				<a href="{$cart_item[index].product_link}">{$cart_item[index].product_name}</a>	
				<div style="padding-bottom:5px;font-weight:normal;font-size:11px;font-style:italic;">(@ {$cart_item[index].product_weight} gram)</div>
				{if $cart_item[index].option_list neq ''}		
					<dl class="variation">
						{section name=subindex loop=$cart_item[index].jancok}
							<dt>{$cart_item[index].jancok[subindex].babi}</dt>
						{/section}
					</dl>	
				{/if}	
			</td>

			<!-- Product price -->
			<td class="product-price">
				{if $cart_item[index].member_discount_status eq 0 && $cart_item[index].coupon_discount_status eq 0}
					<div><span class="amount">{$cart_item[index].product_price_currency}</span></div>
				{/if}
				{if $cart_item[index].member_discount_status eq 1 && $cart_item[index].coupon_discount_status eq 1}
					<strike style="color:#f00;">{$cart_item[index].product_price_currency}</strike><br />
					<div><del><span class="amount" style="color:#d5d5d5;font-size:100%">{$cart_item[index].coupon_price_currency}</del></div>
					<div style="padding-top:10px;font-size:10px;text-align:left;">
						<div style="width:15px;float:left;padding-left:5px;">*</div>
						<div style="width:130px;float:left;font-size:10px;">{$TXT_CART_DISKON_START_WORD} {$cart_item[index].member_discount_name_value} ({$cart_item[index].member_discount_name})</div>
						<br class="clear" />
					</div>
					<div style="padding-top:5px;font-size:10px;text-align:left;">
						<div style="width:15px;float:left;padding-left:5px;">*</div>
						<div style="width:130px;float:left;font-size:10px;">{$TXT_CART_DISKON_START_WORD} {$cart_item[index].coupon_discount_name_value} ({$cart_item[index].coupon_discount_code})</div>
						<br class="clear" />
					</div>
				{else}
					{if $cart_item[index].member_discount_status eq 1}
						<div><del><span class="amount" style="color:#d5d5d5;font-size:100%">{$cart_item[index].coupon_price_currency}</del></div>
						<b>{$cart_item[index].member_price_currency}</b><br />
						<div style="padding-top:10px;font-size:10px;text-align:left;">
							<div style="width:15px;float:left;padding-left:5px;">*</div>
							<div style="width:130px;float:left;font-size:10px;">{$TXT_CART_DISKON_START_WORD} {$cart_item[index].member_discount_name_value} ({$cart_item[index].member_discount_name})</div>
							<br class="clear" />
						</div>
					{/if}
					{if $cart_item[index].coupon_discount_status eq 1}
						<strike style="color:#f00;">{$cart_item[index].product_price_currency}</strike><br />
						<b>{$cart_item[index].coupon_price_currency}</b><br />
						<div style="padding-top:5px;font-size:10px;text-align:left;">
							<div style="width:15px;float:left;padding-left:5px;">*</div>
							<div style="width:130px;float:left;font-size:10px;">{$TXT_CART_DISKON_START_WORD} {$cart_item[index].coupon_discount_name_value} ({$cart_item[index].coupon_discount_code})</div>
							<br class="clear" />
						</div>
					{/if}
				{/if}					
			</td>

			<!-- Quantity inputs -->
			<td class="product-quantity">
				<div class="quantity">
					<input type="button" value="-" class="minus" {if $post_view neq 'checkout'}onClick="if(parseInt($('#qty_{$cart_item[index].cart_detail_id}').val())>1){ldelim} var minus_{$cart_item[index].cart_detail_id} = parseInt($('#qty_{$cart_item[index].cart_detail_id}').val())-1 {rdelim}else{ldelim} var minus_{$cart_item[index].cart_detail_id} = parseInt($('#qty_{$cart_item[index].cart_detail_id}').val()) {rdelim};makeRequest('{$home}/x_page.php', 'show_cart_container', 'page=x_show_cart&act=edit_qty&page_required=1&cart_detail_id={$cart_item[index].cart_detail_id}&value='+minus_{$cart_item[index].cart_detail_id});" {/if}>
					
					<input {if $post_view eq 'checkout'}disabled{/if} onkeypress="if(event.keyCode == 0)return Numbers(event);" type="text" size="4" title="Qty" class="input-text qty text" maxlength="12" id="qty_{$cart_item[index].cart_detail_id}" value="{$cart_item[index].cart_qty}" onBlur="makeRequest('{$home}/x_page.php', 'show_cart_container', 'page=x_show_cart&act=edit_qty&page_required=1&cart_detail_id={$cart_item[index].cart_detail_id}&value='+this.value);" />
					
					<input type="button" value="+" class="plus" {if $post_view neq 'checkout'}onClick="var plus_{$cart_item[index].cart_detail_id} = parseInt($('#qty_{$cart_item[index].cart_detail_id}').val())+1;makeRequest('{$home}/x_page.php', 'show_cart_container', 'page=x_show_cart&act=edit_qty&page_required=1&cart_detail_id={$cart_item[index].cart_detail_id}&value='+plus_{$cart_item[index].cart_detail_id});"{/if}>
				</div>
			</td>

			<!-- Product subtotal -->
			<td class="product-subtotal">
				<span class="amount">{$cart_item[index].product_cart_subtotal_currency}</span>
			</td>
		
		</tr>
		{/section}
	{/if}
	{if $post_view neq 'checkout'}
		<tr>
			<td colspan="6" class="actions">
			<!-- Coupon / Checkout Buttons -->	
				{if $discount_coupon eq 1}
					<div class="coupon" style="float:right;margin-right:10px;min-width:150px;">
						<input type="button" class="button" name="apply_coupon" value="Cancel Coupon" onClick="makeRequest('{$home}/x_page.php', 'show_cart_container', 'page=x_show_cart&act=remove_coupon&page_required=1');" />
					</div>
					<div class="coupon" style="float:right">
						<label for="coupon_code"><span>{$TEXT_CART_COUPON_VALID} <b>{$coupon_discount_code}</b></span></label>
					</div>
				{else}
					<div class="coupon" style="float:right;margin-right:10px;min-width:150px;">
						<input type="button" class="button" value="Apply Coupon" onClick="makeRequest('{$home}/x_page.php', 'show_cart_container', 'page=x_show_cart&act=validate&page_required=1&apply_coupon={$apply_coupon}&code='+document.getElementById('coupon_code').value);"/>
					</div>
					<div class="coupon" style="float:right">
						<label for="coupon_code">Coupon:</label> 
						<input name="coupon_code" class="input-text" id="coupon_code" name="code_coupon" value="" /> 
					</div>
				{/if}		
			</td>
		</tr>
	{/if}
	{if $post_view neq 'checkout'}
		<tr>
			<td colspan="6" class="actions">
			<!-- Coupon / Checkout Buttons -->	
				{if $ONGKIR_STATUS eq 1}
					<div id="shipping_input_container">
						<div class="coupon" style="float:right;margin-right:10px;min-width:150px;">&nbsp;</div>
						<div class="coupon" style="float:right">
							<form  action="{$home}search" onSubmit="return false;"  onkeypress="if(EnterKey(event))makeRequest('{$home}/x_page.php', 'result_shipping_container', 'page=x_result_shipping_ongkir&page_required=1&city='+document.getElementById('inputString_kota').value+'&weight={$total_weight}&total_cart={$total_cart}');$('#suggestions_kota').hide();" >
										
							</form>
							<div style="display:none">
								<img src="{$TEMPLATE_USE}/templates/images/spacer.png" border=0 onLoad="makeRequest('{$home}/x_page.php', 'shipping_input_container', 'page=x_shipping_input&page_required=1&&total_cart={$total_cart}&total_weight={$total_weight}&post_view={$post_view}');" />
							</div>
						</div>
					</div>
				{/if}		
			</td>
		</tr>
	{/if}
	
	</tbody>
</table>



<!-- Cart Totals -->										
<div class="cart-collaterals">
	<div class="cart_totals " style="float:left;">
		
		{if $total_discount_member neq 0 || $total_discount_coupon neq 0}
			<div class="box info-box">
				{if $total_discount_member neq 0 && $total_discount_coupon neq 0}
					Kali Ini, <b style="color:#f00;">Anda Hemat: {$total_discount_currency}</b> dari Groups: <b>{$name_discount_member}</b> dan Coupon: <b>{$code_discount_coupon}</b>
				{else}
					{if $total_discount_member neq 0}
						Kali Ini, <b style="color:#f00;">Anda Hemat: {$total_discount_member_currency}</b> dari Groups: <b>{$name_discount_member}</b><br />
					{else}
						Kali Ini, <b style="color:#f00;">Anda Hemat: {$total_discount_coupon_currency}</b> dari Coupon: <b>{$code_discount_coupon}</b>
					{/if}
				{/if}
			</div>
		{/if}
	</div>
	<div class="clear"></div>
	<div class="cart_totals ">
		<h2>Cart Totals</h2>
		<table cellspacing="0" cellpadding="0">
			<tbody>
				{if $ONGKIR_STATUS eq 1}
				<tr class="total">
					<td><strong>Cart Subtotal</strong></td>
					<td><strong><span class="amount">{$total_cart_currency}</span></strong><input type="hidden" id="total_item" value="{$total_cart}" /></td>
				</tr>
				<tr class="total">
					<td>Shipping</td>
					<td id="shipping_final_result">
						{if $shipping_ongkir eq ''}
							-
						{else}
							{$shipping_ongkir_currency}
						{/if}
					</td>
				</tr>
				{/if}
				<tr class="total">
					<th><strong>{$TEXT_CART_TITLE_TOTAL}</strong></th>
					<td id="total_cart_sum_shipping"><strong><span class="amount">{$total_sum_shipping_currency}</span></strong><input type="hidden" id="total_item" value="{$total_sum_shipping}" /></td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
{if $post_view neq 'checkout'}
<div class="clearboth" style="text-align:right;">
	<input type="submit" onclick="location.href='checkout.html'" class="checkout-button button alt" name="proceed" value="Proceed to Checkout &rarr;" />
</div>
{/if}