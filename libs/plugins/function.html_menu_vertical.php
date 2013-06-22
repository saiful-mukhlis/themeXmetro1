<?php
function smarty_function_html_menu_vertical($p, $t) {
	$o='';
	$sm=$p['SM'];

	
	foreach ($sm as $v) {
		$o1='<a href="'.$v['menu_link'].'">'.$v['menu_name'].'</a>';
		$sk=$v[subcategory];
		if (count($sk)>0) {
			$o1='<div class="menuopen"></div>'.$o1.'<ul>';
			foreach ($sk as $v2) {
				$o1.='<li><a href="'.$v2['menu_link'].'">'.$v2['menu_name'].' ('.$v2['jumlah_product'].')</a></li>';
			}
			$o1.='</ul>';
		}
		$o1='<li>'.$o1.'</li>';
		$o.=$o1;
	}
	return  $o;
}

?>