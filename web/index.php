<?php
/**
 * Example Application
 *
 * @package Example-application
 */
require '../init/init.php';
$smarty->assign("new", 10);
/*
$smarty->assign("Name", "Fred Irving Johnathan Bradley Peppergill", true);
$smarty->assign(
    "Class",
    array(
        array("A", "B", "C", "D"),
        array("E", "F", "G", "H"),
        array("I", "J", "K", "L"),
        array("M", "N", "O", "P")
    )
);
$smarty->assign("option_values", array("NY", "NE", "KS", "IA", "OK", "TX"));
$smarty->assign("option_selected", "NE");*/
$smarty->display('index.tpl');
