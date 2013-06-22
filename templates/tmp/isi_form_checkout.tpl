<style>
<!--
{literal}
table{width: 100%;}
{/literal}
-->
</style>


<form name="method_payment" id="method_payment" method="post" action="{$home}checkout" class="checkout" >
			<input type="hidden" name="submitted" value="3"  />
			<input type="hidden" id="page" name="page" value=""  />
			<input type="hidden" id="checkout_success" name="checkout_success" value="{$checkout_success}"  />
			<input type="hidden" id="page_required" name="page_required" value="1"  />
						
			<div class="col2-set" id="customer_details">
				{if $error_finish eq 1 && $warning_finish neq ''}
					<div class="box alert-box">{$warning_finish}</div>
				{/if}
				<div class="col-1">
					<h3 style="padding:0px;margin:0px;">Payment Method</h3>
					<p class="form-row form-row-first">
						<table border="0" cellpadding="5" cellspacing="0" width="100%">
							{section name=index_payment loop=$method_payment}
							<tr>
								<td style="width:30px;padding:10px;background:#fff;text-align:left;border-bottom:1px solid #ccc;{if $method_payment[index_payment].counter eq 0}border-top:1px solid #ccc;{/if}">
									<input type="radio" name="payment_method" id="payment_method{$method_payment[index_payment].method_payment_id}" value="1" {if $method_payment[index_payment].counter eq 0}checked{/if} onFocus="makeRequest('{$home}/x_page.php', 'preview_cart_checkout', 'page=method_payment/x_preview_checkout_{$method_payment[index_payment].method_payment_name|lower}&act=show&page_required=1&preview=1');$('#method_payment').attr('onSubmit','{if $method_payment[index_payment].counter neq 0}makeSubmitFormbiasaPop(\'{$home}x_page.php\',\'process_container\',\'method_payment\');return false;{else}{/if}');$('#page').val('method_payment/x_send_checkout_{$method_payment[index_payment].method_payment_name|lower}');" onClick="makeRequest('{$home}/x_page.php', 'preview_cart_checkout', 'page=method_payment/x_preview_checkout_{$method_payment[index_payment].method_payment_name|lower}&act=show&page_required=1&preview=1');$('#method_payment').attr('onSubmit','{if $method_payment[index_payment].counter neq 0}makeSubmitFormbiasaPop(\'{$home}x_page.php\',\'process_container\',\'method_payment\');return false;{else}{/if}');$('#page').val('method_payment/x_send_checkout_{$method_payment[index_payment].method_payment_name|lower}');" />
								</td>
								<td style="width:130px;padding:10px;background:#fff;text-align:left;border-bottom:1px solid #ccc;{if $method_payment[index_payment].counter eq 0}border-top:1px solid #ccc;{/if}">
									 <label style="cursor:pointer;" for="payment_method{$method_payment[index_payment].method_payment_id}">{$method_payment[index_payment].method_payment_name}</label>
								</td>
								<td style="padding:10px;background:#fff;text-align:left;border-bottom:1px solid #ccc;{if $method_payment[index_payment].counter eq 0}border-top:1px solid #ccc;{/if}">
									<label style="cursor:pointer;" for="payment_method{$method_payment[index_payment].method_payment_id}"><input value="" style="cursor:pointer;width:120px;border:0px;background:url({$store_image_bank}/{$method_payment[index_payment].method_payment_image}) {$method_payment[index_payment].method_payment_position} no-repeat;width:120px;height:35px;" align="absmiddle" border=0 /></label>
								</td>
							</tr>
							{/section}
						</table>
					</p>
					<div class="clear"></div>
					{if $checkout_success neq '2'}
						<h3 style="padding:0px;margin:0px;">{$TEXT_RIGHT_CART_CHECKOUT}</h3><br /><a href="{$home}cart">{$TEXT_RIGHT_CART_CHECKOUT_LINK}</a>
					{else}
						<h3 style="padding:0px;margin:0px;">{$TEXT_RIGHT_CART_CHECKOUT_SUCCESS}</h3>
					{/if}
					<div class="form-row" id="preview_cart_checkout">
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
							</tbody>
						</table>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			
			
			<h3 id="order_review_heading">{$TEXT_CONFIRM_TITLE}</h3>
			<div id="order_review">
				<!-- Order Summary -->
				<table class="shop_table">					
					<tbody>			
						<tr class="checkout_table_item">
							<td class="product-name">{$TEXT_CONFIRM_EMAIL}</td>
							<td class="product-total"><span class="amount">{$order_customers_email}</span></td>
						</tr>			
						<tr class="checkout_table_item">
							<td class="product-name">{$TEXT_CONFIRM_NAME}</td>
							<td class="product-total"><span class="amount">{$order_customers_fname} {$order_customers_lname}</span></td>
						</tr>			
						<tr class="checkout_table_item">
							<td class="product-name">{$TEXT_CONFIRM_ADDRESS}</td>
							<td class="product-total"><span class="amount">{$order_customers_shipped_address}<br />{$order_customers_shipped_city} - {$order_customers_shipped_postalcode}</span></td>
						</tr>			
						<tr class="checkout_table_item">
							<td class="product-name">{$TEXT_CONFIRM_MOBILE}</td>
							<td class="product-total"><span class="amount">{$order_customers_mobile}</span></td>
						</tr>	
					</tbody>
					<tfoot>		
						<tr class="checkout_table_item">
							<td class="product-name">&nbsp;</td>
							<td class="product-total"><span class="amount"><a href="{$home}checkout/change">{$TEXT_CONFIRM_CHANGE_DATA}</a></span></td>
						</tr>	
					</tfoot>
				
				</table>
			</div>
			
			<h3>Kode verfikasi</h3>
			<input type="hidden" name="submitted" value="3"  />
				<div class="col2-set" id="customer_details">
					<div class="col-1">
						<!-- Form / Username -->
						<p class="form-row form-row-first">
							<label for="captcha_field">Kode Verifikasi <span class="required">*</span></label>
							<span id="captcha"> <img src="{$home}/captcha.php?rand={$random}" border="0" align="absmiddle" id="captha_image" onClick="$('#captha_image').attr('src', '{$home}/captcha.php?rand='+Math.random());" style="cursor:pointer;" /><br /><a style="text-align:center;color:#f00;font-size:10px;">{$TXT_REFRESH_CAPTCHA}</a></span><br />
						</p>
						
						<!-- Form / Password -->
						<p class="form-row form-row-last">
							<input TYPE="text" name="captcha" id="captcha_field" size="10" class="input-text" /><br /><br />
							<input type="submit" class="button" border=0 value="Submit" />
						</p>
						<div class="clear"></div>
					</div>
				</div>
			</form>