<?php
/**
 * Example Application
 *
 * @package Example-application
 */
require '../init/init.php';




/*
* $smarty->assign("option_values", array("NY", "NE", "KS", "IA", "OK", "TX"));
* $smarty->assign("option_selected", "NE");
*/
$smarty->display('login.tpl');