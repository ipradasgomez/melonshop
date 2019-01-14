<?php
/**
 * Example Application
 *
 * @package Example-application
 */
require '../init/init.php';
if(empty($_SESSION["user"])|| $_SESSION["rol"]!=1){
    header("Location: ./login.php");
}

$ciudades = $BD->obtenerTabla('city');

$smarty->assign('ciudades', $ciudades);
$smarty->assign('productosEnCarrito',$carro->carro());
$smarty->display('settings.tpl');