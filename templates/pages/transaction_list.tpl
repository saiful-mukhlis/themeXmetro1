<script type="text/javascript" src="{$TEMPLATE_USE}/templates/js/flexigrid_report_transaction.js"></script>
<table id="flex1" style="display:none;"></table>
<script type="text/javascript">
	$("#flex1").flexigrid
	(
	{ldelim}
	url: '{$home}datagrid_trans.php',
	dataType: 'json',
	colModel : [
	{ldelim}display: '<b>No</b>', name : 't.transaction_id', width : 20, sortable : true, align: 'center'{rdelim}
	, {ldelim}display: '<b>Inv Number</b>', name : 'i.invoice_number', width : 100, sortable : true, align: 'left'{rdelim}
	, {ldelim}display: '<b>Email</b>', name : 'c.customers_email', width : 200, sortable : true, align: 'left'{rdelim}
	, {ldelim}display: '<b>Nama</b>', name : 'c.customers_fname', width : 200, sortable : true, align: 'left'{rdelim}
	, {ldelim}display: '<b>Description</b>', width : 150, sortable : false, align: 'left'{rdelim}
	, {ldelim}display: '<b>Total</b>', name : 't.amount_in',width : 100, sortable : true, align: 'left'{rdelim}
	, {ldelim}display: '<b>Date Payment</b>', name : 't.date_payment',width : 100, sortable : true, align: 'left'{rdelim}
	],
	sortname: "t.transaction_id",
	sortorder: "desc",
	usepager: true,
	title: '', 
	cust_id: '{$account_customers_id}', 
	useRp: true,
	rp: 20,
	showTableToggleBtn: true,
	width: 715,
	height: 'auto'
	{rdelim}
	);
</script>