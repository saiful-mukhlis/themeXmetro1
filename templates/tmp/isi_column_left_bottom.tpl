<div class="box">
	<div class="box-heading">{$TEXT_NAV_LEFT_BOTTOM_TITLE}</div>
	<div class="box-content">
		<div class="box-category">
			<ul>
		{section name=index loop=$top_menu}
			{if $top_menu[index].count_child eq '' && $smarty.section.index.index!=0}
				<li><a href="{$top_menu[index].menu_link}">{$top_menu[index].menu_name}</a></li>
			{/if}
		{/section}
			</ul>
		</div>
	</div>
</div>