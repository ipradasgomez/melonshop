<?php
chdir('..');
require '../init/init.php';
if(empty($_SESSION["rol"])||$_SESSION["rol"]!=2){
    header('Location: ./login.php');
}
$smarty->display('admin/empleados.tpl');