{if $start eq 'ok'}
<p id="searchresults">
	{if $result_error_direct_status eq 0}
		{if $result_data_found neq 0}
			{section name=index loop=$ongkir_result}
				<a onClick="makeRequestPop('{$home}/x_page.php', 'process_container', {ldelim} page : 'x_result_shipping_ongkir' , page_required : 1, city : '{$ongkir_result[index].city}', total_weight : '{$ongkir_result[index].weight}' , total_cart : '{$total_cart}' {rdelim});$('#suggestions_kota').hide();" style="cursor:pointer;height:20px;">  	
					<span>{$ongkir_result[index].city}</span>
				</a>
			{/section}
			{section name=index loop=$manual_result}
				<a onClick="makeRequestPop('{$home}/x_page.php', 'process_container', {ldelim} page : 'x_result_shipping_ongkir', page_required : 1, city : '{$manual_result[index].city}', total_weight : '{$manual_result[index].weight}' , total_cart: '{$total_cart}' {rdelim});$('#suggestions_kota').hide();" style="cursor:pointer;height:20px;">  	
					<span>{$manual_result[index].city}</span>
				</a>
			{/section}
		{/if}
	{else}
		<a href="#"><span>{$TEXT_SEARCH_RESULT_E_DIRECT}</span></a>
	{/if}
</p>
{/if}