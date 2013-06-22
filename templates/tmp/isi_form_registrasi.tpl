<style>
{literal}
<!--
.w90{width: 90%;}
#content .content ul li {
margin-bottom: 0px;
margin-left: -30px;
}

/* Default styling for jQuery Datepicker v4.0.2. */
.datepick {
	background-color: #fff;
	color: #000;
	border: 1px solid #444;
    border-radius: 0.25em;
    -moz-border-radius: 0.25em;
    -webkit-border-radius: 0.25em;
	font-family: Arial,Helvetica,Sans-serif;
	font-size: 90%;
}
.datepick-rtl {
	direction: rtl;
}
.datepick-popup {
	z-index: 1000;
}
.datepick-disable {
	position: absolute;
	z-index: 100;
	background-color: white;
	opacity: 0.5;
	filter: alpha(opacity=50);
}
.datepick a {
	color: #fff;
	text-decoration: none;
}
.datepick a.datepick-disabled {
	color: #888;
	cursor: auto;
}
.datepick button {
    margin: 0.25em;
    padding: 0.125em 0em;
    background-color: #fcc;
    border: none;
    border-radius: 0.25em;
    -moz-border-radius: 0.25em;
    -webkit-border-radius: 0.25em;
    font-weight: bold;
}
.datepick-nav, .datepick-ctrl {
	float: left;
	width: 100%;
	background-color: #000;
	color: #fff;
	font-size: 90%;
	font-weight: bold;
}
.datepick-ctrl {
	background-color: #600;
}
.datepick-cmd {
	width: 30%;
}
.datepick-cmd:hover {
	background-color: #777;
}
.datepick-ctrl .datepick-cmd:hover {
	background-color: #f08080;
}
.datepick-cmd-prevJump, .datepick-cmd-nextJump {
	width: 8%;
}
a.datepick-cmd {
	height: 1.5em;
}
button.datepick-cmd {
	text-align: center;
}
.datepick-cmd-prev, .datepick-cmd-prevJump, .datepick-cmd-clear {
	float: left;
	padding-left: 2%;
}
.datepick-cmd-current, .datepick-cmd-today {
	float: left;
	width: 35%;
	text-align: center;
}
.datepick-cmd-next, .datepick-cmd-nextJump, .datepick-cmd-close {
	float: right;
	padding-right: 2%;
	text-align: right;
}
.datepick-rtl .datepick-cmd-prev, .datepick-rtl .datepick-cmd-prevJump,
.datepick-rtl .datepick-cmd-clear {
	float: right;
	padding-left: 0%;
	padding-right: 2%;
	text-align: right;
}
.datepick-rtl .datepick-cmd-current, .datepick-rtl .datepick-cmd-today {
	float: right;
}
.datepick-rtl .datepick-cmd-next, .datepick-rtl .datepick-cmd-nextJump,
.datepick-rtl .datepick-cmd-close {
	float: left;
	padding-left: 2%;
	padding-right: 0%;
	text-align: left;
}
.datepick-month-nav {
	float: left;
	background-color: #777;
	text-align: center;
}
.datepick-month-nav div {
	float: left;
	width: 12.5%;
	margin: 1%;
	padding: 1%;
}
.datepick-month-nav span {
	color: #888;
}
.datepick-month-row {
	clear: left;
}
.datepick-month {
	float: left;
	width: 15em;
	border: 1px solid #444;
	text-align: center;
}
.datepick-month-header, .datepick-month-header select, .datepick-month-header input {
	height: 1.5em;
	background-color: #444;
	color: #fff;
	font-weight: bold;
}
.datepick-month-header select, .datepick-month-header input {
	height: 1.4em;
	border: none;
}
.datepick-month-header input {
	position: absolute;
	display: none;
}
.datepick-month table {
	width: 100%;
	border-collapse: collapse;
}
.datepick-month thead {
	border-bottom: 1px solid #aaa;
}
.datepick-month th, .datepick-month td {
	margin: 0em;
	padding: 0em;
	font-weight: normal;
	text-align: center;
}
.datepick-month th {
	border: 1px solid #777;
}
.datepick-month th, .datepick-month th a {
	background-color: #777;
	color: #fff;
}
.datepick-month td {
	background-color: #eee;
	border: 1px solid #aaa;
}
.datepick-month td.datepick-week {
	border: 1px solid #777;
}
.datepick-month td.datepick-week * {
	background-color: #777;
	color: #fff;
	border: none;
}
.datepick-month a {
	display: block;
	width: 100%;
	padding: 0.125em 0em;
	background-color: #eee;
	color: #000;
	text-decoration: none;
}
.datepick-month span {
	display: block;
	width: 100%;
	padding: 0.125em 0em;
}
.datepick-month td span {
	color: #888;
}
.datepick-month td .datepick-other-month {
	background-color: #fff;
}
.datepick-month td .datepick-weekend {
	background-color: #ddd;
}
.datepick-month td .datepick-today {
	background-color: #f0c0c0;
}
.datepick-month td .datepick-highlight {
	background-color: #f08080;
}
.datepick-month td .datepick-selected {
	background-color: #777;
	color: #fff;
}
.datepick-month th.datepick-week {
	background-color: #777;
	color: #fff;
}
.datepick-status {
	clear: both;
	background-color: #ddd;
	text-align: center;
}
.datepick-clear-fix {
	clear: both;
}
.datepick-cover {
    display: none;
    display/**/: block;
    position: absolute;
    z-index: -1;
    filter: mask();
    top: -1px;
    left: -1px;
    width: 100px;
    height: 100px;
}
div.alert-box {
border: 1px solid #e5af51;
color: #ca6b1c;
}
div.box {
font-size: 108.3%;
margin: 2px 0 15px;
padding: 20px 15px 20px 65px;
-moz-border-radius: 6px;
-webkit-border-radius: 6px;
border-radius: 6px;
}
-->
{/literal}
</style>

{if $error_signup eq 1 && $warning_signup neq ''}
				<div class="box alert-box">{$warning_signup}</div>
			{/if}
{if $error_signup eq 0 && $warning_signup neq ''}
				<img src="{$TEMPLATE_USE}/templates/{$TEMPLATE_IMAGES_USED}/spacer.png" border=0 onLoad="setTimeout('location.href=\'{$home}\'',1000);" />
				<div class="box success-box">{$warning_signup}</div>
			{/if}			

<form name="signup" method="post" action="{$home}{$Q_ACTION}">
	<input type="hidden" name="submitted" value="2" />
	<table>
		<tbody>
			<tr>
				<td><label for="email">{$FORM_SIGNUP_EMAIL} <abbr class="required" title="required">*</abbr></label></td>
				<td><input type="text" class="input-text w90" name="email" id="email" placeholder="{$FORM_EMAIL_EX}" value="{$smarty.post.email}"/></td>
			</tr>
			{if $checkout_success neq '0'}
			<tr>
				<td><label for="pass1" class="">{$FORM_SIGNUP_PASS} <abbr class="required" title="required">*</abbr></label></td>
				<td><input type="password" class="input-text w90" name="pass1" id="pass1" placeholder="" value="" /></td>
			</tr>
			<tr>
				<td><label for="pass2" class="">{$FORM_SIGNUP_REPASS}<abbr class="required" title="required">*</abbr></label></td>
				<td><input type="password" class="input-text w90" name="pass2" id="pass2" placeholder="" value="" /></td>
			</tr>
			{/if}
			<tr>
				<td><label for="fName" class="">{$FORM_SIGNUP_FNAME}</label></td>
				<td><input type="text" class="input-text w90" name="fName" id="fName" placeholder="{$smarty.post.fName}" value="" /></td>
			</tr>
			<tr>
				<td><label for="mobile" class="">{$FORM_SIGNUP_MOBILE} <abbr class="required" title="required">*</abbr></label></td>
				<td><input type="text" class="input-text w90" name="mobile" id="mobile" placeholder="" value="{$smarty.post.mobile}" /></td>
			</tr>
			<tr>
				<td><label for="phone" class="">{$FORM_SIGNUP_PHONE}</label></td>
				<td><input type="text" class="input-text w90" name="phone" id="phone" placeholder="" value="{$smarty.post.phone}" style="margin-left: 0px;font-size: 14px;color: #151617;" /></td>
			</tr>
			<tr>
				<td><label for="address" class="">{$FORM_SIGNUP_ADDRESS}</label></td>
				<td><textarea name="address" class="input-text w90" id="address" placeholder="" cols="5" rows="2"></textarea></td>
			</tr>
			<tr>
				<td><label for="city" class="">{$FORM_SIGNUP_CITY}</label></td>
				<td><input type="text" class="input-text w90" name="city" id="city" placeholder="" value="{$smarty.post.city}" /></td>
			</tr>
			<tr>
				<td><label for="postal" class="">{$FORM_SIGNUP_POSTAL} <abbr class="required" title="required">*</abbr></label></td>
				<td><input type="text" class="input-text w90" name="postal" id="postal" placeholder="" value="{$smarty.post.postal}" /></td>
			</tr>
			<tr>
				<td><label for="date" class="">{$FORM_SIGNUP_DOB}</label></td>
				<td><input type="text" class="input-text w90" name="date" id="date" placeholder="" value="{$smarty.post.date}" />
							<img src="{$TEMPLATE_USE}/templates/{$TEMPLATE_IMAGES_USED}/spacer.png" border=0 onLoad="gen_date('date', 'mm/dd/yyyy');" /></td>
			</tr>
			<tr>
				<td><label for="gender" class="">Gender <abbr class="required" title="required">*</abbr></label></td>
				<td><select name="gender" id="gender" class="country_to_state form-row-first update_totals_on_change country_select w90">
								<option value="m" {if $smarty.post.gender eq 'm'}selected{/if}>{$FORM_GENDER_MALE}</option>
								<option value="f" {if $smarty.post.gender eq 'f'}selected{/if}>{$FORM_GENDER_FEMALE}</option>
							</select>
							<noscript><input type="submit" name="woocommerce_checkout_update_totals" value="Update country" /></noscript></td>
			</tr>
			<tr>
				<td><input type="checkbox" name="agree" id="agree" value="1" checked style="float:right;"/> </td>
				<td><label for="agree" style="float:left;margin:0px 10px;">{$TXT_SIGNUP_AGGREE}</label></td>
			</tr>
			<tr>
				<td><input type="checkbox" name="newsletter" id="newsletter" value="1" checked style="float:right;"/></td>
				<td><label for="newsletter" style="float:left;margin:0px 10px;">{$TXT_SIGNUP_NEWSLETTER}</label></td>
			</tr>
			<tr>
			<td></td>
				<td><span id="captcha"> 
								<img src="{$home}/captcha.php?rand={$random}" border="0" align="absmiddle" id="captha_image" onClick="$('#captha_image').attr('src', '{$home}/captcha.php?rand='+Math.random());" style="cursor:pointer;" />
								<br />
								<a style="text-align:center;color:#f00;font-size:10px;">{$TXT_REFRESH_CAPTCHA}</a>
							</span></td>
			</tr>
			<tr>
				<td><label for="captcha" class="">{$FORM_CODE}</label></td>
				<td><input type="text" class="input-text w90" name="captcha" id="captcha" placeholder="" value="" /></td>
			</tr>
			<tr>
				<td><span class="color_link">*</span> {$FORM_FILLED}</td>
			</tr>
			<tr>
			<td></td>
				<td><input type="submit" class="button alt" name="woocommerce_checkout_place_order" id="place_order" value="Continue Order" /></td>
			</tr>
		</tbody>
	</table>
	

				
</form>
