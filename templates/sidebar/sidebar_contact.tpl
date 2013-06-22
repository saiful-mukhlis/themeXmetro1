<!-- Shop Contact Widget -->
<div class="widget widget_contact">
	<h4 class="widgettitle">{$TEXT_CS}</h4>
	<div class="list_contact">
		{section name=index_ym loop=$contact_ym}
		<div class="left">{$contact_ym[index_ym].contact_name}</div>
		<div class="right">
			<a href="ymsgr:sendIM?{$contact_ym[index_ym].contact_ym}"><img src="http://opi.yahoo.com/online?u={$contact_ym[index_ym].contact_ym}&m=g&t=1" align="absmiddle" border="0" /></a>
		</div>
		<div style="clear:both;"></div>
		{/section}
		<br class="clear"/>
		<div class="sms">{$TEXT_CS_HOTLINE}</div>
		{section name=index_phone loop=$contact_phone}
		<div>{$contact_phone[index_phone].contact_phone}</div>
		{/section}
		<div style="clear:both;"></div>
	</div>
</div>