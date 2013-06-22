<table class="shop_table">
	<thead>
		<tr>
			<th width="130" style="text-align:center">Tanggal</th>
			<th style="text-align:center">Subject</th>
		</tr>
	</thead>
	<tbody>
		{section name=index loop=$data_email}
		<tr>
			<td align="center" style="cursor:pointer;" onClick="makeRequestPop('{$home}/x_page.php', 'process_container', 'page=x_show_email_log&page_required=1&act=show&id={$data_email[index].customers_email_id}');">{$data_email[index].date_send}&nbsp;</td>
			<td align="center" style="cursor:pointer;" onClick="makeRequestPop('{$home}/x_page.php', 'process_container', 'page=x_show_email_log&page_required=1&act=show&id={$data_email[index].customers_email_id}');">{$data_email[index].subject}&nbsp;</td>
		</tr>
		{/section}
	</tbody>
</table>