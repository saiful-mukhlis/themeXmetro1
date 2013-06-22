<?php
function smarty_function_html_img($p, $t) {
	return '<img src="'.$t->getTemplateVars('TEMPLATE_USE').'/templates/'.$p['F'].'"	alt="'.$p['ALT'].'">';
}

?>