<?php
/**
 * Example Application
 *
 * @package Example-application
 */
require '../init/init.php';

if (!empty($_SESSION["user"])) {
    header("Location: ./index.php");
}

if(isset($_POST["recover"])){
    $smarty->assign("recovering", true);
}
$smarty->display('recovery.tpl');


?>