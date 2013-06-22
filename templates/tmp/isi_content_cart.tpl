<section id="content">
	<header class="page-header">
		<h1 class="page-title">{$TEXT_TITLE_CART_PAGE}</h1>
	</header>
		
	<div class="inner-container">
		{if $err_cart eq 1} 
			<img src="{$TEMPLATE_USE}/templates/{$TEMPLATE_IMAGES_USED}/spacer.png" border=0 onLoad="alert('Kota Tujuan Pengiriman Belum Dipilih.');" />
		{/if}
		{if $limited_stock eq 1} 
			<img src="{$TEMPLATE_USE}/templates/{$TEMPLATE_IMAGES_USED}/spacer.png" border=0 onLoad="alert('Jumlah barang yang Anda order Tidak mencukupi.');" />
		{/if}
		<form id="cart_form" name="cart" method="post" action="{$home}checkout" >
		<input type="hidden" name="submitted" value="cart" />	
		<div>
			<div class="box info-box">{$TEXT_CART_PARAGRAPH}</div>
		</div>
		<div class="bt_cart_top">
			<a id="submit_button_goo" style="cursor:pointer;">
				<div class="bt_submit_order" style="float:right;margin-right:0px;">&nbsp;</div>
			</a>
			<a href="{$home}cancel">
				<div class="bt_cancel_order" style="float:right;margin-right:10px;">&nbsp;</div>
			</a>
			<a href="{$home}">
				<div class="bt_continue_shopping" style="float:right;margin-right:10px;">&nbsp;</div>
			</a>
			<br class="clear" />
		</div>
		
		<img src="{$TEMPLATE_USE}/templates/{$TEMPLATE_IMAGES_USED}/spacer.png" border=0 onLoad="makeRequest('{$home}/x_page.php', 'show_cart_container', 'page=x_show_cart&act=show&page_required=1&cart_detail_id={$cart_item[index].cart_detail_id}&view=cart');" />
		<div class="cart_content cart-info" id="show_cart_container"></div>
		</form>
		<div style="clear:both;width:100%;height:20px;"></div>
	</div>
</section>