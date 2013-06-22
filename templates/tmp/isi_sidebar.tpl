<!-- Sidebar -->
<aside id="sidebar">
	{section name=parentindex loop=$sidebar1}
		{if $sidebar1[parentindex].item_type eq 'default'}
			{if $sidebar1[parentindex].item_id eq 1}
				{include file="sidebar/sidebar_contact.tpl"}
			{elseif $sidebar1[parentindex].item_id eq 2}
				{include file="sidebar/sidebar_rekening.tpl"}
			{elseif $sidebar1[parentindex].item_id eq 3}
				{include file="sidebar/sidebar_testimonial.tpl"}
			{elseif $sidebar1[parentindex].item_id eq 4}
				{include file="sidebar/sidebar_product_menu.tpl"}
			{elseif $sidebar1[parentindex].item_id eq 5}
				{include file="sidebar/sidebar_cart.tpl"}
			{/if}
		{else}
			{if $sidebar1[parentindex].item_type eq 'banner'}
				<div class="widget widget_socialwidget">
					<a href="{$sidebar1[parentindex].banner_link}" target="{$sidebar1[parentindex].banner_target}"><img src="{$store_side_banner}/{$sidebar1[parentindex].banner_image}" border=0 /></a>
				</div>
			{/if}
			{if $sidebar1[parentindex].item_type eq 'html'}
				<div class="widget widget_socialwidget">{$sidebar1[parentindex].html_code}</div>
			{/if}
		{/if}
	{/section}

</aside> 	