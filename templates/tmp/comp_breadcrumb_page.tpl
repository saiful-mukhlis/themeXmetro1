<ul class="breadcrumb">
	<li><a href="{$home}">Home</a></li>
	{if $detail_content_title eq ''}
		<li><a>{$page_menu_name}</a></li>
		{else}
		<li><a href="{$page_menu_link}">{$page_menu_name}</a></li> 
		<li><a href="{$link_third}.html">{$detail_content_title}</a></li>
	{/if}
</ul>