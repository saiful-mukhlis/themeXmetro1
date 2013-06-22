{if $error_profile eq 1 && $warning_profile neq ''}
	<div class="box alert-box">{$warning_profile}</div>
{/if}
{if $error_profile eq 0 && $warning_profile neq ''}
	<div class="box success-box">{$warning_profile}</div>
{/if}

<form name="profile" action="{$home}myaccount" method="post">
	<input type="hidden" name="submitted" value="1" />
	<input type="hidden" name="id" value="{$account_customers_id}" />
	<div class="col2-set" id="customer_details">
		<div class="col-1">
			<table class="shop_table">
				<thead>
					<tr>
						<th width="50%" style="text-align:center;">Data Customers</th>
						<th width="50%" style="text-align:center;">Data Shipping</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<p class="form-row">
								<label for="captcha_field">Nama <span class="required">*</span></label>
								<input type="text" class="input-text" name="nama" id="nama" value="{$account_customers_fname}" />
							</p>
						</td>
						<td>
							<p class="form-row">
								<label for="captcha_field">Nama Penerima <span class="required">*</span></label>
								<input type="text" class="input-text" name="shipped_nama" id="shipped_nama" value="{$account_shipped_customers_fname}" />
							</p>
						</td>
					</tr>
					<tr>
						<td>
							<p class="form-row">
								<label for="captcha_field">Email Address <span class="required">*</span></label>
								<input type="text" class="input-text" name="email" id="email" value="{$account_customers_email}" />
							</p>
						</td>
						<td>
							<p class="form-row">
								<label for="captcha_field">Phone Number <span class="required">*</span></label>
								<input type="text" class="input-text" name="phone" id="phone" value="{$account_customers_phone}" readonly="readonly" />
							</p>
						</td>
					</tr>
					<tr>
						<td>
							<p class="form-row">
								<label for="captcha_field">Password<span class="required">*</span></label>
								<input type="password" class="input-text" name="pass" id="pass" value="{$account_customers_password}" />
							</p>
						</td>
						<td>
							<p class="form-row">
								<label for="captcha_field">Address <span class="required">*</span></label>
								<textarea name="address" class="input-text" id="address" placeholder="" cols="2" rows="2">{$account_shipped_customers_address}</textarea>
							</p>
						</td>
					</tr>
					<tr>
						<td>
							<p class="form-row">
								<label for="captcha_field">Phone Number<span class="required">*</span></label>
								<input type="text" class="input-text" name="phone" id="phone" value="{$account_customers_phone}" />
							</p>
						</td>
						<td>
							<p class="form-row">
								<label for="captcha_field">City <span class="required">*</span></label>
								<input type="text" class="input-text" name="city" id="city" value="{$account_shipped_customers_city}" />
							</p>
						</td>
					</tr>
					<tr>
						<td>
							<p class="form-row">
								<label for="captcha_field">Birth Date <span class="required">*</span></label>
								<input type="text" class="input-text" name="tanggal_lahir" id="tanggal_lahir" value="{$account_customers_birthdate}" />
							</p>
						</td>
						<td>
							<p class="form-row">
								<label for="captcha_field">Status Member <span class="required">*</span></label>
								<input type="text" class="input-text" readonly="readonly" name="postalcode" id="postalcode" value="{$account_date_created}" />
							</p>
						</td>
					</tr>
					<tr>
						<td>
							<p class="form-row">
								<label for="captcha_field">Mobile Number <span class="required">*</span></label>
								<input type="text" class="input-text" name="mobile" id="mobile" value="{$account_customers_mobile}" />
							</p>
						</td>
						<td>
							<p class="form-row">
								<label for="captcha_field">Postcode <span class="required">*</span></label>
								<input type="text" class="input-text" name="postalcode" id="postalcode" value="{$account_shipped_customers_postalcode}" />
							</p>
						</td>
					</tr>
					<tr>
						<td>
							<p class="form-row">
								<label for="captcha_field">Gender <span class="required">*</span></label>
								<select name="gender" class="orderby">
									<option value="m" {if $account_customers_gender eq 'm'}selected{/if}>{$FORM_GENDER_MALE}</option>
									<option value="f" {if $account_customers_gender eq 'f'}selected{/if}>{$FORM_GENDER_FEMALE}</option>
								</select>
							</p>
						</td>
						<td>
							<p class="form-row">
								<label for="captcha_field">Last Login</label>
								<input type="text" class="input-text" name="postalcode" id="postalcode" readonly="readonly" value="{$account_customers_lastlogin}" />
							</p>
						</td>
					</tr>
					<tr>
						<td colspan=2 style="text-align:center;">
							<input type="submit" class="button" border=0 value="Save" />
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</form>

<script type="text/javascript">
	jQuery(document).ready(function($) {ldelim}		
		//	selectBox
		$(".orderby").selectBox({ldelim}
			'menuTransition': 'slide',
			'menuSpeed' 	: 'fast'
		{rdelim});
	{rdelim});
</script>