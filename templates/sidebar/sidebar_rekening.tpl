<!-- Shop Contact Widget -->
<div class="widget widget_rekening">
	<h4 class="widgettitle">{$TEXT_REKENING}</h4>
	<ul class="list_rekening">
		{section name=index_bank loop=$bank_account}
		<li>
			<center>
				<a href="{$page_payment_link}">
					<div style="width:120px;height:34px;background:url('{$store_image_bank}/{$bank_account[index_bank].master_bank_bgimage}') no-repeat {$bank_account[index_bank].master_bank_bgposs};"></div>
				</a>
			</center>
		</li>
		{/section}
	</ul>
</div>