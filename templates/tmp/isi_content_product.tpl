{literal}
<style>
<!--
#content h1{padding: 10px;margin-bottom: 0px;padding-bottom: 0px;}
-->
</style>
{/literal}
<!-- start content -->
<div class="product-filter clearfix">
	<h1>
	{if $page_menu_name==null}
	Product
	{else}
	{$page_menu_name}
	{/if}
	<div class="display">
		<b>Display:</b> 
		<a class="list-switch" title="List" onclick="display('list');"></a>
		<a class="grid-switch" title="Grid"  onclick="display('grid');"></a>
	</div>
	</h1>

	
</div>




<div class="product-grid box-product" style="display: none;">
	{foreach $product_list as $v}
		{include file='tmp/comp_box1_for.tpl' M='10' v=$v}

{/foreach}
</div>



<div class="product-list box-product" style="display: none;">
{foreach $product_list as $v}
	<div class="list-product-item">
		<div class="left-block">
			<div class="image">
				<a href="{$v['product_link']}"><img class="fade-image" src="{$store_image}/{$v['product_image_3']}"
					alt="{$v['alt_product_image_3']}"></a>
			</div>
		</div>
		<div class="center-block">
			<div class="list-name">
				<a href="{$v['product_link']}">Camera E54</a>
			</div>


			<div class="description">{$v['product_desc_trunc']}</div>

		</div>


		<div class="right-block">
			<div class="list-price">{$v['product_price_currency']}</div>

			
			<div class="btn-product clearfix">
				<div class="btn-wish">
					<a href="{$v['product_link']}">Kode : {$v['product_code']}</a>
				</div>
				<div class="btn-compare">
					<form name="cart" method="post" action="{$home}cart">
						<input type="hidden" name="submitted" value="1";=""> 
						<input type="hidden" name="product_id"	value="{$v['product_id']}";=""> 
						<input type="hidden" id="detail_qty" name="detail_qty"	value="1"> 
						<a href="#" onClick="$(this).closest('form').submit(); return false;">Add to cart</a>
					</form>
				</div>
			</div>
		</div>
		<div class="clear"></div>
	</div>
{/foreach}
</div>


<script type="text/javascript">
{literal}
<!--
	function display(view) {
		if (view == 'list') {
			$('.product-grid').css('display', 'none');
			$('.product-list').css('display', 'inline');

			$('.display')
					.html(
							'<b>Display:</b> <a title="List" class="list-switch active"></a><a class="grid-switch" title="Grid" onclick="display(\'grid\');"></a>');

			$.cookie('display', 'list');
		} else {
			$('.product-list').css('display', 'none');
			$('.product-grid').css('display', 'inline');

			$('.display')
					.html(
							'<b>Display:</b> <a class="list-switch" title="List" onclick="display(\'list\');"></a><a class="grid-switch active" title="Grid" ></a>');

			$.cookie('display', 'grid');
		}
	}

	view = $.cookie('display');

	if (view) {
		display(view);
	} else {
		display('list');
	}
//-->
{/literal}
</script>




<div class="pagination">
{$product_paging}
</div>



<!-- end content -->

