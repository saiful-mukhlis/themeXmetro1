			<form action="" method="post" enctype="multipart/form-data">
				<div id="language">
					<img src="{html_src F='img/theme/gb.png'}" alt="English" title="English"
						onclick="$('input[name=\'language_code\']').attr('value', 'en'); $(this).parent().parent().submit();">
					<img src="{html_src F='img/theme/fr.png'}" alt="French" title="French"
						onclick="$('input[name=\'language_code\']').attr('value', 'fr'); $(this).parent().parent().submit();">
					<img src="{html_src F='img/theme/it.png'}" alt="Italian" title="Italian"
						onclick="$('input[name=\'language_code\']').attr('value', 'it'); $(this).parent().parent().submit();">
					<input type="hidden" name="language_code" value=""> <input
						type="hidden" name="redirect"
						value="#">
				</div>
			</form>