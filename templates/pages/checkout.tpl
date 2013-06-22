{* end head *}
</head>

{* start body *}
<body>
	{* meminta upgrade browser bila ie6 *} {include file='default/upgrade.tpl'}


	<div id="container">
		<div id="header_menu"></div>
		<div id="header">{include file='tmp/isi_header.tpl'}</div>
		<div id="notification"></div>

		<div id="content">
		{include file='tmp/comp_breadcrumb_checkout.tpl'}
		{if $checkout_success eq 1}
		{include file='tmp/isi_content_checkout.tpl'}
		{elseif $checkout_success eq 2}
		{include file='tmp/isi_content_checkout_end.tpl'}	
		{else}
		{include file='tmp/isi_content_checkout_nologin.tpl'}
		{/if}
		</div>
		
		
{if $checkout_success === 0}
			
			
<style>
<!--
{literal}
#order_review table{width: 100%;}
{/literal}
-->
</style>			
<h3 id="order_review_heading">Your order</h3>	
<div id="order_review">
<img src="{$TEMPLATE_USE}/templates/{$TEMPLATE_IMAGES_USED}/spacer.png" border=0 onLoad="makeRequest('{$home}/x_page.php', 'order_review', 'page=x_show_cart&act=show&page_required=1&view=checkout');" />
</div>
<br/>				
{/if}
	</div>



	<div id="footer-container">
		<div id="footer-container">{include file='tmp/isi_foot_container.tpl'}</div>
		<div class="clear"></div>
	</div>