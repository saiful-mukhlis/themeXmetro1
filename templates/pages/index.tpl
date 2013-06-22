{* end head *}
</head>

{* start body *}
<body>
{* meminta upgrade browser bila ie6 *}
{include file='default/upgrade.tpl'}  


<div id="container">
	<div id="header_menu"></div>
	<div id="header">{include file='tmp/isi_header.tpl'}</div>
	<div id="notification"></div>
	<div id="column-left">{include file='tmp/isi_column_left_home.tpl'}</div>
	<div id="content">{include file='tmp/isi_content_home.tpl'}</div>
</div>

{*$xxx|@debug_print_var*}

<div id="footer-container">
	<div id="footer-container">{include file='tmp/isi_foot_container.tpl'}</div>
	<div class="clear"></div>
</div>

