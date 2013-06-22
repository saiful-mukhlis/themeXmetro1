<script type="text/javascript" src="{$TEMPLATE_USE}/templates/js/flexigrid_inv.js"></script>
<table id="flex1" style="display:none;"></table>
<script type="text/javascript">
	$("#flex1").flexigrid
	(
	{ldelim}
	url: '{$home}datagrid_inv.php',
	dataType: 'json',
	colModel : [
	{ldelim}display: '<b>No</b>', name : 'i.invoice_id', width : 20, sortable : true, align: 'center'{rdelim}
	, {ldelim}display: '<b>Inv Number</b>', name : 'i.invoice_number', width : 100, sortable : true, align: 'left'{rdelim}
	, {ldelim}display: '<b>Email</b>', name : 'c.customers_email', width : 200, sortable : true, align: 'left'{rdelim}
	, {ldelim}display: '<b>Nama</b>', name : 'c.customers_fname', width : 150, sortable : true, align: 'left'{rdelim}
	, {ldelim}display: '<b>Telepon</b>',width : 100, sortable : false, align: 'left'{rdelim}
	, {ldelim}display: '<b>Total</b>', width : 100, sortable : false, align: 'left'{rdelim}
	, {ldelim}display: '<b>Status</b>', name : 'i.payment_status',width : 70, sortable : true, align: 'left'{rdelim}
	, {ldelim}display: '<b>Tanggal</b>', name : 'i.invoice_date',width : 120, sortable : true, align: 'left'{rdelim}
	],
	sortname: "invoice_id",
	sortorder: "desc",
	usepager: true,
	title: '', 
	cust_id: '{$account_customers_id}', 
	useRp: true,
	rp: 20,
	showTableToggleBtn: true,
	width: 980,
	height: 'auto'
	{rdelim}
	);
</script>