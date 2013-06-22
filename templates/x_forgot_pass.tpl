<div id="process_testi_container" style="width:400px;">
	<form name="login" class="login" id="addtesti" method="post" action="" onSubmit="return false;">
		<input type="hidden" name="submitted" value="1" />
		<input type="hidden" name="page" value="x_forgot_pass" />
		<input type="hidden" name="page_required" value="1" />
		<input type="hidden" name="submitted" value="1"  />
		{if $process eq 1}
			{if $error eq 1}
				<div class="box alert-box">{$warning}</div>
			{else}
				<div class="box success-box">{$warning}</div>
				<img src="{$TEMPLATE_USE}/templates/{$TEMPLATE_IMAGES_USED}/spacer.png" border=0 onLoad="setTimeout('$.fancybox.close()',3000);" />
			{/if}
		{else}
		<p>{$TEXT_TITLE_FORGOT_PASS}</p>								
		
		<p class="form-row">
			<label for="email">{$FORM_LOGIN_EMAIL}<span class="required">*</span></label>
			<input type="text" name="email" id="email" class="input-text"  />
		</p>
		<p class="form-row">
			<label for="verify">Kode verfikasi<span class="required">*</span></label>
			<span id="captcha"> <img id="captha_image_forgot" src="{$home}captcha.php?rand={$random}" border="0" align="absmiddle" onClick="$('#captha_image_forgot').attr('src', '{$home}/captcha.php?rand='+Math.random());" style="cursor:pointer;" /></span><br /> 
			<input type="text" name="jawab" ID="verify" class="input-text"  />
		</p>
		<p class="form-row form-row-first">
			<label for="pass">{$FORM_FILLED}<span class="required">*</span></label>
		</p>
		<p class="form-row form-row-last">
			<input type="button" class="button" name="register" value="Reset" onClick="makeSubmitFormbiasa('{$home}/x_page.php', 'process_testi_container', 'addtesti');">
		</p>
		<div class="clear"></div>
		{/if}
	</form>
</div>