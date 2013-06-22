
<div class="box-product-item" style="margin-right: {$M}">
	<div class="view-first">
		<div class="view-content">
			<div class="image">
				<a href="{$v['product_link']}"><img src="{$store_image}/{$v['product_image_3']}" alt="{$v['alt_product_image_2']}"/></a>
			</div>

			<div class="bottom-block">
				<div class="name">
					<a href="{$v['product_link']}">{$v['product_name']}</a>
				</div>
	
				<div class="price">{$v['product_price_currency']}</div>
			</div>
		</div>

		<div class="slide-block">
			<div class="image-rating">

			</div>
			<div class="btn-wish">
				<form name="cart" method="post" action="{$home}cart">
					<input type="hidden" name="submitted" value="1" ;="">
					<input type="hidden" name="product_id" value="{$v['product_id']}" ;="">
					<input type="hidden" id="detail_qty" name="detail_qty" value="1">
					<a href="#" onClick="$(this).closest('form').submit(); return false;">Add to cart</a>
				</form>
			</div>
			<div class="btn-compare"><a href="{$v['product_link']}"><img src="{$TEMPLATE_USE}/templates/img/theme/button-search.png"  /></a></div>
		</div>
	</div>
</div>

