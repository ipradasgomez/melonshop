<?php
chdir('..');
require '../init/init.php';



var_dump($BD->obtenerPedidos());
$smarty->assign('pedidos', $BD->obtenerPedidos());
$smarty->display('admin/orders.tpl');