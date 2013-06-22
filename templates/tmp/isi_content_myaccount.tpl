<section id="content">
	<div class="inner-container">
		<table class="shop_table menu_myaccount">
			<thead>
				<tr>
					<th {if $smarty.get.second eq 'profile'}id="menu"{/if} style="text-align:center;"><a href="{$home}myaccount">Profile</a></th>
					<th {if $smarty.get.second eq 'order_list'}id="menu"{/if} style="text-align:center;"><a href="{$home}myaccount/order_list">Order</a></th>
					<th {if $smarty.get.second eq 'invoice_list'}id="menu"{/if} style="text-align:center;"><a href="{$home}myaccount/invoice_list">Invoice</a></th>
					<th {if $smarty.get.second eq 'transaction_list'}id="menu"{/if} style="text-align:center;"><a href="{$home}myaccount/transaction_list">Transaction</a></th>
					<th {if $smarty.get.second eq 'email'}id="menu"{/if} style="text-align:center;"><a href="{$home}myaccount/email">Email Log</a></th>
				</tr>
			</thead>
		</table>
		<div class="woocommerce-checkout">
			{include file="pages/$inc_sub"}
		</div>
	</div>
</section>
