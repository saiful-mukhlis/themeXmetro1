      <form name="login" class="login" method="post" action="{$home}{$Q_ACTION}">
				<input type="hidden" name="submitted" value="1"  />
        <div class="content">
        
          <p>{$TEXT_NOTE_LOGIN}</p>
          
          {if $error_login eq 1 && $warning_login neq ''}
				<div class="box alert-box" ><div style="background-image: url('{$TEMPLATE_USE}/templates/img/theme/cross32.png');height: 32px;width: 32px;float: left;margin-top: -5px;margin-right: 15px;"></div>{$warning_login}</div>
			{/if}
			{if $error_login eq 0 && $warning_login neq ''}
				<img src="{$TEMPLATE_USE}/templates/{$TEMPLATE_IMAGES_USED}/spacer.png" border=0 onLoad="setTimeout('location.href=\'{$home}\'',1000);" />
				<div class="box success-box"><div style="background-image: url('{$TEMPLATE_USE}/templates/img/theme/ok30.png');height: 30px;width: 40px;float: left;margin-top: -5px;margin-right: 15px;"></div>{$warning_login}</div>
			{/if}
          
          
          <table width="100%">
          	<tbody>
          		<tr>
          			<td><label for="email">{$FORM_LOGIN_EMAIL} <span class="required">*</span></label></td>
          			<td><input type="text" class="input-text w90" name="email" id="email" /></td>
          		</tr>
          		<tr>
          			<td><label for="pass">{$FORM_LOGIN_PASS} <span class="required">*</span></label></td>
          			<td><input class="input-text w90" type="password" name="pass" id="pass" /></td>
          		</tr>
          		<tr>
          			<td></td>
          			<td><input type="submit" class="button" name="login" value="Login" /></td>
          		</tr>
          		<tr>
          			<td></td>
          			<td><a class="lost_password" style="cursor:pointer;" onClick="makeRequestPop('{$home}/x_page.php', 'process_container', 'page=x_forgot_pass&act=show');">{$LOGIN_TXT_FORGOT_PASS}</a></td>
          		</tr>
          	</tbody>
          </table>

      </form>