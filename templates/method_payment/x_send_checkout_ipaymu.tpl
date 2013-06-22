{if $result.status eq 1}
<div class="box success-box" style="margin:10px;">
	{$result.info}
</div>
<div style="text-align:center;">
<img src="http://www.fordeon.com/images/loading6.gif" onLoad="window.location='{$result.url}'" />
</div>
<br />
{else}
<br />
<div class="box alert-box" style="margin:10px;">
	{$result.info}
</div>
<br />
{/if}
<img src="{$TEMPLATE_USE}/templates/{$TEMPLATE_IMAGES_USED}/spacer.png" border=0 onLoad="$('#captha_image').trigger('click');" />
