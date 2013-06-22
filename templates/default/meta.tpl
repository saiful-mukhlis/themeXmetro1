<link rel="alternate" type="application/rss+xml" href="{$home}rss.xml" title="RSS Feed Product" />
<link rel="alternate" type="application/rss+xml" href="{$home}rss_article.xml" title="RSS Feed Article" />
<link rel="icon" href="{$HEADER_ICON}" type="image/x-icon"> 
{if $smarty.get.first eq 'product' and $smarty.get.third neq ''}
	{if $page_menu_meta_title neq ''}<title>{$page_menu_meta_title} {$order_info} {$pagenow}</title>{/if}
        {if $page_menu_meta_desc neq ''}<meta name="description" content="{$page_menu_meta_desc} {$order_info} {$pagenow}">{/if}
        {if $page_menu_meta_key neq ''}<meta name="keywords" content="{$page_menu_meta_key}">{/if}
{else}
        {if $page_menu_meta_title neq ''}<title>{$page_menu_meta_title}</title>{/if}
        {if $page_menu_meta_desc neq ''}<meta name="description" content="{$page_menu_meta_desc}">{/if}
        {if $page_menu_meta_key neq ''}<meta name="keywords" content="{$page_menu_meta_key}">{/if}

{/if}
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="false" />
<meta name="rating" content="general">
<meta HTTP-EQUIV="VW96.OBJECT TYPE" CONTENT="Document">
<meta NAME="RATING" CONTENT="General">
<meta NAME="ROBOTS" CONTENT="index,follow">


{if $FB_ID neq ''}<meta property="fb:admins" content="{$FB_ID}">{/if}
{if $FB_APPID neq ''}<meta property="fb:app_id" content="{$FB_APPID}">{/if}
{if $content_include eq 'pages/detail.tpl'}
<meta property="og:title" content="{$page_menu_meta_title}" /> 
<meta property="og:image" content="{$store_image}/{$detail_product_image_2}" /> 
<meta property="og:description" content="{if $detail_product_desc neq ''}{$detail_product_desc|strip_tags|truncate:150}{else}{$page_menu_meta_desc}{/if}" /> 
<meta property="og:url" content="{$link_second}.html">
{/if}
{$GOOGLE_WEBMASTER}