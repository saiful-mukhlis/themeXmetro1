<div class="box category-block">
{foreach $product_menu as $value}
   	<div class="box-heading">{$value.menu_name}</div>
	<div class="box-content">
		<div class="box-category">
			<ul>{html_menu_vertical SM=$value.submenu}</ul>
		</div>
	</div>
{/foreach}
</div>


