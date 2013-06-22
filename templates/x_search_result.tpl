<p id="searchresults">
	{if $result_error_direct_status eq 0}
		{if $result_error_status eq 0}
			{if $result_data_found eq 0}
				<a href="#"><span>{$TEXT_SEARCH_RESULT_E}</span></a>
			{else}
				{section name=index loop=$product_result}
					<a href="{$product_result[index].product_link}">  	
					<img src="{$store_image}/{$product_result[index].product_image_1}" border=0 />
					<span class="searchheading">{$product_result[index].product_name_highlight}</span>
					<span>Code : {$product_result[index].product_code} , Harga : {$product_result[index].product_price_currency}</span></a>
				{/section}
			{/if}
		{else}
			<a href="#"><span>{$TEXT_SEARCH_RESULT_E}</span></a>
		{/if}
	{else}
		<a href="#"><span>{$TEXT_SEARCH_RESULT_E_DIRECT}</span></a>
	{/if}
</p>