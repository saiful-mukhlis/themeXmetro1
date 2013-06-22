{if $shipping_ongkir eq ''}
<form  action="{$home}search" onSubmit="return false;"  >
	<div class="coupon" style="float:right;margin-right:10px;min-width:150px;">
		<input class="button " type="button" value="Check" onClick="lookup_inner_ongkir($('.input_text_shipping').val(), 'suggestions_kota', 'x_result_ongkir', '{$home}x_page.php', '{$total_weight}', '{$total_cart}');" />
	</div>
	<div class="coupon" style="float:right">
		<div class="coupon" style="position:relative;">
			<label for="coupon_code">Biaya Pengiriman :  Masukkan Kota Tujuan</label> 
			<input type="text" name="coupon_code" AUTOCOMPLETE=OFF class="input-text input_text_shipping" id="coupon_code" value="" PlaceHolder="Kota" /> 
			
			<div class="suggestions" id="suggestions_kota" style="position:absolute;left:250px;top:40px;text-align:left;"></div>
		</div>	
	</div>
</form>
{else}
	<div class="coupon" style="float:right;margin-right:10px;min-width:150px;">
		<input type="button" class="button" name="change_ongkir" value="Change Ongkir" onClick="makeRequest('{$home}/x_page.php', 'shipping_final_result', 'page=x_result_shipping_ongkir_price&page_required=1&act=shipping&post=clear&total_cart={$total_cart}&total_weight={$total_weight}');" />
	</div>
	<div class="coupon" style="float:right">
		<label for="coupon_code">Biaya Pengiriman :  <b style="text-transform:uppercase;">{$shipping_city}</b> dengan <span style="text-transform:uppercase;">{$shipping_kurir}</span> - {$shipping_service}</label> 
	</div>
{/if}