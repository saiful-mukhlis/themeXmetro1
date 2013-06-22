<script type="text/javascript" src="{$TEMPLATE_USE}/templates/js/flexigrid_order.js"></script>
<table id="flex1" style="display:none;"></table>
<script type="text/javascript">
	$("#flex1").flexigrid
	(
	{ldelim}
	url: '{$home}datagrid_order.php',
	dataType: 'json',
	colModel : [
	{ldelim}display: '<b>No</b>', name : 'o.order_id', width : 20, sortable : true, align: 'center'{rdelim}
	, {ldelim}display: '<b>Invoice</b>',width : 50, name : 'i.invoice_number', sortable : true, align: 'left'{rdelim}
	, {ldelim}display: '<b>Nama</b>',width : 100, name : 'o.customers_fname', sortable : true, align: 'left'{rdelim}
	, {ldelim}display: '<b>Email</b>',width : 200, name : 'o.customers_email', sortable : true, align: 'left'{rdelim}
	, {ldelim}display: '<b>Telepon</b>',width : 100, sortable : false, align: 'left'{rdelim}
	, {ldelim}display: '<b>Kota</b>',width : 100, name : 'o.shipped_customers_fname', sortable : true, align: 'left'{rdelim}
	, {ldelim}display: '<b>Total</b>',width : 100, sortable : false, align: 'left'{rdelim}
	, {ldelim}display: '<b>Status</b>',width : 70, name : 'o.order_status', sortable : true, align: 'left'{rdelim}
	, {ldelim}display: '<b>Tanggal</b>',width : 100, name : 'o.order_date', sortable : true, align: 'left'{rdelim}
	],
	sortname: "o.order_id",
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