<!-- start header -->


<div id="header_mainmenu">
	<a href="{$home}" class="mm_logo">{$HEADER_LOGO}</a>
	<a href="{$home}" class="mm_home">{$TEXT_MENU_TOP_HOME}</a>
	<a class="mm_wishlist" href="{$home}product" id="wishlist-total">{$TEXT_MENU_TOP_PRODUCT}</a>
	<a class="mm_account" href="{if $is_login==1}{$home}myaccount{else}{$home}login{/if}">{if $is_login==1}Account {$username_customers_fname}{else}{$TEXT_MENU_TOP_LOGIN}{/if}</a>
	<a class="mm_checkout" href="{if $is_login==1}{$home}logout{else}{$home}login{/if}">{if $is_login==1}Logout{else}{$TEXT_MENU_TOP_SIGNUP}{/if}</a>
	<div id="cart" class="mm_shopcart">
		<div class="heading">
{assign var=item_cart value=0}
{section name=index loop=$cart_item}
{assign var=item_cart value=$item_cart+$cart_item[index].cart_qty}
{/section}		
			<a href="{$home}cart"><span id="cart-total">{$item_cart} item(s) <br/> {$total_cart_currency}</span></a>
		</div>
		<div class="content">
			<div class="empty">Your shopping cart is empty!</div>
		</div>
	</div>
	<div class="clear"></div>
</div>

<div class="box mobile-menu" style="display: none;">
	<div class="box-content">
		<div class="box-category">
			<ul>
				{html_menu_vertical SM=$product_menu[0]['submenu']}
			</ul>
		</div>
	</div>
</div>
{literal}
<style>
<!--
#menu select{display: none;}
-->
</style>
{/literal}
<div id="menu" class="custom-menu clearfix">
	<ul>
		{section name=index loop=$top_menu}
			{if $top_menu[index].count_child eq ''}
				<li><a href="{$top_menu[index].menu_link}" target="{$top_menu[index].menu_page_target}">{$top_menu[index].menu_name}</a></li>
				<li class="separator"></li>
			{/if}
		{/section}
	</ul>
</div>




<div class="search-bar">
	<div id="phone">
		<b>{$TEXT_BANNER_TELP}</b><br> <span>{$TEXT_BANNER_NOTE}</span>
	</div>
<form id="search" method="post" action="{$home}search" onSubmit="return false;">
	<div id="search"  style="position: relative;">
		<div class="search-input" >
			
			<input class="text_input" type="text" value="" name="s" id="s" PlaceHolder="Search" id="inputString" onkeyup="lookup_inner(this.value, 'suggestions', 'x_search_result', '{$home}x_page.php');" />
		
		
		
		</div>
		<div class="button-search"></div>
		
		<div class="suggestions" id="suggestions" style="visibility:inherit;background:none;" onmouseout="$(this).hide();"  onmouseover="$(this).show();"></div>
				<img src="{$TEMPLATE_USE}/templates/{$TEMPLATE_IMAGES_USED}/spacer.png" border=0 onLoad="load_search_inner('suggestions', 'inputString');" />
		
	</div>
</form>


</div>



<!-- end header -->