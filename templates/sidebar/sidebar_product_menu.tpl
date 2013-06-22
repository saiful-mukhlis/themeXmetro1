<!-- Shop Cateogries Widget -->
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


<div class="widget widget_popular">
	<a href="{$home}new"><h4 class="widgettitle">{$TEXT_LEFT_NEW_PRODUCT}</h4></a>
</div>
<div class="widget widget_popular">
	<a href="{$home}hot"><h4 class="widgettitle">{$TEXT_LEFT_HOT_PRODUCT}</h4></a>
</div>