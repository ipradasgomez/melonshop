<?php
/**
 * Created by PhpStorm.
 * User: ISMAEL
 * Date: 28/11/2018
 * Time: 21:17
 */

require '../init/init.php';

///NUESTRO PHP

if (isset($_POST['modificar'])) { 

    $cant=(int)$BD::filtraString($_POST['cant']);
    if(is_numeric($cant)&& $cant>0){
        $carro->modificarCant($_POST['id'], $cant);
       }
    $smarty->assign('new', $carro->longitud());
}

if (isset($_POST['eliminar'])) {
    $carro->eliminarProducto($_POST['id']);
    $smarty->assign('new', $carro->longitud());
}

if (isset($_POST['vaciar'])) {
    $carro->vaciarCarro();
    $smarty->assign('new', $carro->longitud());
}

$smarty->assign('gastoEnvio', $gastoEnvio);
$smarty->assign('precioCarro', $carro->precioTotal());
$smarty->assign('productosEnCarrito',$carro->carro());
//CARGAMOS EL TEMPLATE
$smarty->display('cart.tpl');