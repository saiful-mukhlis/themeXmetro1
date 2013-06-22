<?php
function smarty_function_html_src($p, $t) {
	return $t->getTemplateVars('TEMPLATE_USE').'/templates/'.$p['F'];
}

?>