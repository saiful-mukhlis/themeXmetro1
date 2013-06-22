<!-- start content -->
<div class="product-info">
	<div class="left">

		<div class="image">
			<div id="wrap" style="top: 0px; z-index: 9999; position: relative;">
				<a href="{$store_image}/{$detail_product_image_ori}"
					title="{$detail_product_name}" id="zoom01" class="cloud-zoom"
					rel="position:'right', zoomWidth:320, zoomHeight:400, adjustX:10, adjustY:0, tint:'#FFFFFF', showTitle:false, softFocus:1, smoothMove:5, tintOpacity:0.8"
					style="position: relative; display: block; width: 320px; height: 400px;"><img 
					 src="{$store_image}/{$detail_product_image_5}"
					title="{$detail_product_name}" alt="{$detail_product_name}"
					id="image" style="display: block;"></a>
				<div class="mousetrap"
					style="background-image: url({$TEMPLATE_USE}/templates/img/blank.png); width: 320px; height: 320px; top: 0px; left: 0px; position: absolute; z-index: 9999; cursor: move;"></div>
				<div class="mousetrap"
					style="background-image: url({$TEMPLATE_USE}/templates/img/blank.png); width: 320px; height: 320px; top: 0px; left: 0px; position: absolute; z-index: 9999; cursor: move;"></div>
			</div>
		</div>
		
		<div class="image-additional gallery">
          <a href="{$store_image}/{$detail_product_image_ori}" title="{$detail_product_name}" rel="useZoom: 'zoom01', smallImage: '{$store_image}/{$detail_product_image_5}'" class="cloud-zoom-gallery"><img width="72" height="100" class="fade-image" src="{$store_image}/{$detail_product_image_2}" title="{$detail_product_name}" alt="{$detail_product_name}" style="opacity: 0.6;"></a>
          {foreach $image_add as $v}
   		  	<a href="{$store_image}/{$v.image_ori}" title="{$detail_product_name}" rel="useZoom: 'zoom01', smallImage: '{$store_image}/{$v.image_4}'" class="cloud-zoom-gallery"><img width="72" height="100" class="fade-image" src="{$store_image}/{$v.image_2}" title="{$detail_product_name}" alt="{$v.alt_image_ori}" style="opacity: 0.6;"></a>
		  {/foreach}
		  

          
          <div class="clear"></div>
        </div>

{*$image_add|@debug_print_var*}



	</div>
	<div class="right">
		<div class="breadcrumb">
			<a href="{$home}">{$home_menu_name}</a> » {$detail_product_name}
		</div>
		<div class="price">
			<b>Price:</b> {$detail_product_price_currency} <br />
		</div>
		<div class="description">
			<span>Product Code:</span> {$detail_product_code}<br>
		</div>



		<div class="product-info-buttons">
		<form action="{$home}cart" class="cart" method="post">
		<input type="hidden" name="submitted" value="1"  />
		<input type="hidden" name="product_id" value="{$detail_product_id}"  />
			<div class="input-qty">
				<span>Qty:</span><input type="text" name="detail_qty" size="2"
					value="1"> 
			</div>
			<a class="button"  href="#" onClick="$(this).closest('form').submit(); return false;">Add to cart</a>
			</form>
		</div>




	</div>

</div>



















<div id="tabs" class="htabs">
	<a href="#tab-description" style="display: inline;">Description</a> <a
		href="#tab-related" style="display: inline;">Related Products
		({$product_related|count})</a>

</div>






















<div id="tab-description" class="tab-content">
	<div>
		{$detail_product_desc}
	</div>
</div>











































<div id="tab-related" class="tab-content">
	<div class="box-product">
	
	
	
{foreach $product_related  as $v}
		<div class="box-product-item">
			<div class="view-first">
				<div class="view-content">
					<div class="image">
						<a
							href="{$v['product_link']}"><img
							src="{$store_image}/{$v['product_image_3']}"
							alt="{$v['alt_product_image_3 ']}"></a>
					</div>

					<div class="bottom-block">
						<div class="name">
							<a
								href="{$v['product_link']}">{$v['product_name']}</a>
						</div>
						<div class="link-cart">
				<form name="cart" method="post" action="{$home}cart">
	<input type="hidden" name="submitted" value="1" ;="">
	<input type="hidden" name="product_id" value="{$v['product_id']}" ;="">
	<input type="hidden" id="detail_qty" name="detail_qty" value="1">
<a href="#" onClick="$(this).closest('form').submit(); return false;">Add to cart</a>
</form>
				</div>
						<div class="price">{$v['product_price_currency']}</div>
					</div>
				</div>

				<div class="slide-block">
			<div class="image-rating"> </div>
			<div class="btn-wish">Related Product</div>
			<div class="btn-compare"><a href="{$v['product_link']}">{$v['product_code']}</a></div>
		</div>
			</div>
		</div>
{/foreach}

	
	





		


	</div>
</div>

<!-- end content -->

<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script>