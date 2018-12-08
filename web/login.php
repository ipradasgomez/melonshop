<?php
/**
 * Example Application
 *
 * @package Example-application
 */
require '../init/init.php';

if(isset($_POST["login"])){
    $_SESSION["user"]=$_POST["email"];
    header("Location: ./index.php");
}
if(isset($_SESSION['user'])){
    $smarty->assign("usuario",$_SESSION["user"]);
}

/*
* $smarty->assign("option_values", array("NY", "NE", "KS", "IA", "OK", "TX"));
* $smarty->assign("option_selected", "NE");
*/
$smarty->display('login.tpl');