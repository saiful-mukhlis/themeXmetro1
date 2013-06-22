<div class="login-content">
	<div class="left">
		<h2>{$TEXT_NEW_CUSTOMER}</h2>
		<div class="content">
			<p>
				<b>{$TEXT_TITLE_REGISTRASI}</b>
			</p>

			{include file='tmp/isi_form_registrasi.tpl' Q_ACTION='login'}


		</div>
	</div>
	<div class="right">
		<h2>{$TEXT_OLD_CUSTOMER}</h2>

		{include file='tmp/isi_form_login.tpl' Q_ACTION='login'}

	</div>
</div>