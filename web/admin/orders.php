<?php
chdir('..');
require '../init/init.php';

$smarty->assign('pedidosPendientes', $BD->obtenerPedidosEstado('1'));
$smarty->assign('pedidosEnReparto', $BD->obtenerPedidosEstado('2'));
$smarty->assign('pedidosEntregados', $BD->obtenerPedidosEstado('3'));
$smarty->assign('pedidos', $BD->obtenerPedidos());
$smarty->display('admin/orders.tpl');