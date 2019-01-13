<?php
/**
 * Created by PhpStorm.
 * User: ISMAEL
 * Date: 28/11/2018
 * Time: 21:17
 */

require '../init/init.php';

///NUESTRO PHP

$smarty->assign('precioCarro', $carro->precioTotal()+3);
$smarty->assign('productosEnCarrito',$carro->carro());
//CARGAMOS EL TEMPLATE
$smarty->display('payment-address.tpl');