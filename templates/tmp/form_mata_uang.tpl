		<form
			action="#"
			method="post" enctype="multipart/form-data">
			<div id="currency">
				<a title="Euro"
					onclick="$('input[name=\'currency_code\']').attr('value', 'EUR'); $(this).parent().parent().submit();">€</a>
				<a title="Pound Sterling"
					onclick="$('input[name=\'currency_code\']').attr('value', 'GBP'); $(this).parent().parent().submit();">£</a>
				<a title="US Dollar" class="active">$</a> <input type="hidden"
					name="currency_code" value=""> <input type="hidden"
					name="redirect"
					value="#">
			</div>
		</form>