{* end head *}
</head>

{* start body *}
<body>
{* meminta upgrade browser bila ie6 *}
{include file='default/upgrade.tpl'} 


<div id= "container">
       <div id="header_menu" ></div>
       <div id="header" >{include file='tmp/isi_header.tpl'}</div>
       <div id="notification" ></div>
       <div id="content" >
       {include file='tmp/comp_breadcrumb_page.tpl'}
       {include file='tmp/isi_content_myaccount.tpl'}
       </div>
</div>
<br/>


<div id= "footer-container">
       <div id="footer-container" >{include file='tmp/isi_foot_container.tpl'}</div>
       <div class="clear" ></div>
</div>

{*$page_content_generate|@debug_print_var*}
