<?php
/**
 * Example Application
 *
 * @package Example-application
 */
require '../init/init.php';

if(isset($_POST["login"])){
    $_SESSION["user"]=$_POST["email"];
    header("Location: ./".$_SESSION["pagina"].".php");
}
if(isset($_SESSION['user'])){
    $smarty->assign("usuario",$_SESSION["user"]);
}

$smarty->display('login.tpl');