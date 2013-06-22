<!-- Shop Contact Widget -->
<div class="box category-block">
	<div class="box-heading">{$TEXT_CART_TITLE}</div>
	<div class="box-content">
		{if $qty_cart eq '0'}
			<div class="box-category">
				<p>{$TEXT_CART_EMPTY_DESC}</p>
			</div>
		{else}
			{foreach $cart_item as $v}
				<div class="box-category">
					<ul>
						<li>
							<a href="{$v.product_link}">
								<div style="font-size:11px;color: #fff;">
									{$v.product_name}
								</div>
								<div style="font-size:11px;color: #fff;">Harga : {$v.product_price_currency}</div>
								<div style="font-size:11px;color: #fff;">Qty : {$v.cart_qty}</div>
							</a>
						</li>
					</ul>
				</div>
				<div class="clear"></div>
			{/foreach}
			<div style="text-align:center;font-size:11px;padding-top:5px;"><a href="{$home}cart" title="cart">{$TEXT_PREV_CART_SUBTOTAL}<b>{$grand_total_currency}</b></a></div>
		{/if}
	</div>
</div>