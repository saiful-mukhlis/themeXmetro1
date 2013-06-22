<!-- start foot container -->
<div class="footer-about">
		<div class="text">
			<h1>{$TEXT_WELLCOME_TITLE}</h1>
			{$TEXT_WELLCOME_ISI}
		</div>
		<div class="social">
			<h1>{$TEXT_HOME_FINDUS}</h1>
			<a href="{$LINK_HOME_FB}" class="soc-img facebook"></a> <a
				href="{$LINK_HOME_TWITTER}" class="soc-img twitter"></a> <a href="{$LINK_HOME_GP}"
				class="soc-img skype"></a>
			<div class="contact">
				<div class="phone">
					<b>Phone:</b> {$TEXT_HOME_TELP}
				</div>
				<div class="fax">
					<b>Fax:</b> {$TEXT_HOME_FAX}
				</div>
				<div class="email">
					<a href="mailto:{$TEXT_HOME_EMAIL_1}">{$TEXT_HOME_EMAIL_1}</a>
				</div>
				<div class="email">
					<a href="mailto:{$TEXT_HOME_EMAIL_2}">{$TEXT_HOME_EMAIL_2}</a>
				</div>
			</div>
		</div>
		<div class="clear"></div>
	</div>




	<div id="footer">
		{section name=index loop=$footer_menu}
			<a href="{$footer_menu[index].menu_link}" target="{$footer_menu[index].menu_page_target}">
						{$footer_menu[index].menu_name}
					</a>   |  
			{/section}
	</div>

	<div class="clear"></div>
<!-- end foot container -->