<h2>
<a href="{$home}">{$home_menu_name}</a> 
		{if $detail_content_title eq ''}
		&rsaquo; {$page_menu_name}
		{else}
		&rsaquo; <a href="{$page_menu_link}">{$page_menu_name}</a> &rsaquo;  <a href="{$link_third}.html">{$detail_content_title}</a>
		{/if}
</h2>