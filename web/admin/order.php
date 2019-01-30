<?php
chdir('..');
require '../init/init.php';
if(empty($_GET['id'])){
    //header("Location: ./orders.php");
}

if(isset($_GET['id']) && @$BD->obtenerPedido($_GET['id'])){
$smarty->assign("items", $BD->obtenerProductosDePedido($_GET['id']));

}else{
    header("Location: ./");
}
$smarty->display('admin/order.tpl');