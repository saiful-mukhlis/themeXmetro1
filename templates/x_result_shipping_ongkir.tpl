<div class="first first_border" style="position:relative;width:778px;float:none;background:#fff;font-weight:normal;font-size:12px;">
	<center>
	<div style="width:600px;">
		
		<br class="clear" />
		<div style="text-align:left;">
		{if $city eq ''}
			<div style="text-align:center;padding-bottom:5px;">Silahkan Masukkan Kota Tujuan Pengiriman.</div>
		{else}
			{if $data_found eq 0}
				<div style="text-align:center;padding-bottom:5px;">Saat Ini Belum Tersedia Pengiriman ke Kota <b>{$city}</b>.<br />Silahkan Hubungi Customers Service Kami.</div>
			{else}
				<div style="text-align:center;padding-bottom:5px;">Silahkan Pilih Metode Pengiriman ke Kota <b>{$city}</b> :</div>
				<div style="width:600px;background:#ccc;">
				<table class="shop_attributes">
				<tbody>
					<tr>
						<td width="80" class="td_gradasi">Kurir</td>
						<td class="td_gradasi">Service</td>
						<td width="100" class="td_gradasi">Berat <span style="font-weight:normal;">(gram)</span></td>
						<td width="120" class="td_gradasi">Tarif</td>
						<td width="60" class="td_gradasi">Action</td>
					</tr>
					{section name=index loop=$shipping_ongkir}
						<tr>
							<td align="center" style="padding-left: 5px; padding-right: 5px;background:#{if $shipping_ongkir[index].counter is not even}E1F0FE{else}fff{/if};">{$shipping_ongkir[index].kurir_alias}</td>
							<td align="center" style="padding-left: 5px; padding-right: 5px;background:#{if $shipping_ongkir[index].counter is not even}E1F0FE{else}fff{/if};">{$shipping_ongkir[index].service}</td>
							<td align="center" style="padding-left: 5px; padding-right: 5px;background:#{if $shipping_ongkir[index].counter is not even}E1F0FE{else}fff{/if};">{$shipping_ongkir[index].weight}</td>
							<td align="center" style="padding-left: 5px; padding-right: 5px;background:#{if $shipping_ongkir[index].counter is not even}E1F0FE{else}fff{/if};">{$shipping_ongkir[index].ongkir_currency}</td>
							<td align="center" style="padding-left: 5px; padding-right: 5px;background:#{if $shipping_ongkir[index].counter is not even}E1F0FE{else}fff{/if};">
								
								<input type="button" class="button" name="apply_coupon" value="Choose" onClick="makeRequest('{$home}/x_page.php', 'shipping_final_result', 'page=x_result_shipping_ongkir_price&page_required=1&act=shipping&total_cart={$total_cart}&total_weight={$total_weight}&kurir={$shipping_ongkir[index].kurir}&service={$shipping_ongkir[index].service}&ongkir={$shipping_ongkir[index].ongkir}&city={$city}');$.fancybox.close();" />
								
							</td>
						</tr>
					{/section}
				</tbody>
				</table>
				</div>
			{/if}
		{/if}
		</div>
		<br class="clear" />
	</div>
	</center>
</div>