<?php
function smarty_function_html_img_cls($p, $t) {
	return '<img class="'.$p['CLS'].'" src="'.$t->getTemplateVars('TEMPLATE_USE').'/templates/'.$p['F'].'"	alt="'.$p['ALT'].'">';
}

?>