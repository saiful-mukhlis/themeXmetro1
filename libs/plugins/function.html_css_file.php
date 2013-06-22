<?php
function smarty_function_html_css_file($p, $t) {
	return '<link rel="stylesheet" href="' . $t ->getTemplateVars ( 'TEMPLATE_USE'). '/templates/css/' . $p ['F'] . '" type="text/css" />';
}

?>