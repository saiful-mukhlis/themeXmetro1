<?php
function smarty_function_html_js_file($p, $t) {
	return '<script src="' . $t ->getTemplateVars ( 'TEMPLATE_USE'). '/templates/js/' . $p ['F'] . '"></script>';
}

?>