<!doctype html>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>

{include file='default/meta.tpl'}

{html_font_google_api F='Source+Sans+Pro:300,400'}

{html_font_google_api F='Source Sans Pro:200&amp;subset=latin'}

{html_css_files T=$TEMPLATE_USE F=[
'style.css',
'color-default.css',
'flexslider.css',
'dd.css',
'prettyPhoto.css', 
'jquery.jqzoom.css', 
'responsive.css', 
'slideshow.css',
'colorbox.css',
'jquery-ui-1.8.16.custom.css'
]}

{include file='default/ico.tpl'}

{html_js_file T=$TEMPLATE_USE F='modernizr-2.6.1.min.js'}

<script type="text/javascript">
		var _siteRoot='{$home}',_root='{$home}';
		var base_url 		= '{$home}';
		var template_use 	= '{$TEMPLATE_USE}';
	</script>

{html_js_file T=$TEMPLATE_USE F='js_all.js'}


{html_js_files T=$TEMPLATE_USE F=[
'jquery-ui-1.8.16.custom.min.js',
'jquery.cookie.js',
'tabs.js',
'jquery.flexslider-min.js',
'jquery.ba-throttle-debounce.min.js',
'jquery.touchSwipe.min.js',
'jquery.mousewheel.min.js',
'jquery.carouFredSel-6.1.0-packed.js',
'cloud-zoom.1.0.3.min.js',
'jquery.dd.min.js',
'jquery.prettyPhoto.js',
'jquery.colorbox.js',
'jquery.nivo.slider.pack.js',
'buttons.js'
]}

<!--[if IE 7]>
{html_css_file T=$TEMPLATE_USE F='ie7.css'}
<![endif]-->
<!--[if lt IE 7]>
{html_css_file T=$TEMPLATE_USE F='ie6.css'}
{html_js_file T=$TEMPLATE_USE F='DD_belatedPNG_0.0.8a-min.js'}
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->


{*include file="css.tpl"*}

