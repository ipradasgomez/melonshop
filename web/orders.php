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

$pedidosUsuario =$BD->obtenerPedidosDelUsuario($_SESSION['userFull']->id);
$itemsPedidosDelUsuario;
foreach ($pedidosUsuario as $key => $pedido) {
   $itemsPedidosDelUsuario[$pedido->id]=$BD->obtenerProductosDePedido($pedido->id);
}

$smarty->assign('pedidosPendientes', array_filter($pedidosUsuario, function($pedido){
    return $pedido->details == '1';
}));
$smarty->assign('pedidosEnProceso', array_filter($pedidosUsuario, function($pedido){
    return $pedido->details == '2';
}));
$smarty->assign('pedidosEntregados', array_filter($pedidosUsuario, function($pedido){
    return $pedido->details == '3';
}));
$smarty->assign('itemsPedidosDelUsuario', $itemsPedidosDelUsuario);
$smarty->assign('productosEnCarrito',$carro->carro());
$smarty->display('orders.tpl');