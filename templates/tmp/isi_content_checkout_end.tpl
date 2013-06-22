<div class="col-2">
				<h3>{$page_menu_name}</h3>
				<p class="form-row notes" id="order_comments_field">
					<label for="order_comments" class="">Order Notes</label>
					{$page_content_generate}
				</p>
				<a href="{$home}"><input type="button" class="button alt" name="woocommerce_checkout_place_order" id="place_order" value="Continue Shopping"></a>
				<a href="{$page_menu_payment_link}"><input type="button" class="button alt" name="woocommerce_checkout_place_order" id="place_order" value="Payment Confirmation"></a>
				<img src="{$TEMPLATE_USE}/templates/{$TEMPLATE_IMAGES_USED}/spacer.png" border=0 onLoad="makeRequest('{$home}/x_page.php', 'number_cart_container', 'page=x_update_counter&act=show&page_required=1');" />
			</div>