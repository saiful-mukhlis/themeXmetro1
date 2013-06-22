<?php
function smarty_function_html_js_files($p, $t) {
	$out = '';
	foreach ( $p [F] as $v ) {
		$out .= '<script src="' . $t ->getTemplateVars ( 'TEMPLATE_USE') . '/templates/js/' . $v . '"></script>';
	}
	return $out;
}

?>