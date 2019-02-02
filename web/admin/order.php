<?php
chdir('..');
require '../init/init.php';
if(empty($_SESSION["rol"])||$_SESSION["rol"]!=2){
    header('Location: ./login.php');
}
if(isset($_GET['id']) && @$BD->obtenerPedido($_GET['id'])){
    if(isset($_POST['send'])){
        $updated=$BD->enviarPedido($_GET['id']);
        $smarty->assign('updated', $updated);
        
    }
$smarty->assign('pedido', $BD->obtenerPedido($_GET['id']));
$smarty->assign("items", $BD->obtenerProductosDePedido($_GET['id']));
$smarty->display('admin/order.tpl');
}else{
    header("Location: ./orders.php");
}

