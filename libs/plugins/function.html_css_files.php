<?php
function smarty_function_html_css_files($p, $t) {
	$out = '';
	foreach ( $p ['F'] as $v ) {
		$out .= '<link rel="stylesheet" href="' . $t ->getTemplateVars ( 'TEMPLATE_USE') . '/templates/css/' . $v . '" type="text/css" />';
	}
	return $out;
}

?>