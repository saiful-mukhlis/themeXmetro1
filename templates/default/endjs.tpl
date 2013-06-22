<!--[if lt IE 7]>
<script type="text/javascript" src="{$TEMPLATE_USE}/templates/js/add_ie.js"></script>
<![endif]-->
{$GOOGLE_ANALYTIC}
{if $WIDGET_WGCHAT neq '' AND $WIDGET_WGCHAT neq '0' AND $WIDGET_WGCHAT_API_KEY neq ''}
{$WIDGET_WGCHAT_CHATTING}
{/if}
{if $POPOUT_STATUS eq 1 AND $smarty.session.just_opened neq 1}
<div style="display:none">
<div id="home_pop_out">
	<div class="footer" style="width:auto;padding:0px;">
		<div class="online">
			<div class="newsletter" style="margin:0px;">
				<div class="popout_newsletter">
					{if $POPOUT_TEXT neq ''}
					<div class="newsletter_text">
						{$POPOUT_TEXT}
					</div>
					<hr class="newsletter_hr" />
					{/if}
					{if $POPOUT_TYPE eq '1'}
					<div class="newsletter_form space_bottom">
						<form action="{$home}" method="post">
							<input type="hidden" name="newsletter_add" value="1" />
							<input type="text" class="input_text" name="email" PlaceHolder="{$HOME_DEF_VALUE_EMAIL}" align="bottom" />
							<input type="submit" value="DAFTAR" class="input_button" align="bottom" />
						</form>
					</div>
					{/if}
				</div>
			</div>
		</div>
	</div>
</div>
</div>
	<script>
		$(window).load(function(){ldelim}
			$.fancybox.open([
				{ldelim}
					href : '#home_pop_out',         
				{rdelim}
			], {ldelim}
				padding : 0
			{rdelim});
		{rdelim});
	</script>
	
{/if}