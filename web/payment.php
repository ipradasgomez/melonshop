<?php
/**
 * Created by PhpStorm.
 * User: ISMAEL
 * Date: 28/11/2018
 * Time: 21:17
 */

require '../init/init.php';

if(empty($_SESSION["user"]) || $_SESSION['user'] == ""){
    header("Location: ./login.php");
}

if($carro->longitud() <= 0){
    header("Location: ./cart.php");
}

if(isset($_SESSION['Pago']) && $_SESSION['Pago'] == 0){
    $_SESSION['Pago'] = 1;
}

if(isset($_POST['continuar'])){
    $_SESSION['Pago']++;
}

if(isset($_POST['atras'])){
    $_SESSION['Pago']--;
}


///NUESTRO PHP

$smarty->assign('precioCarro', $carro->precioTotal()+$gastoEnvio);
$smarty->assign('productosEnCarrito',$carro->carro());
//CARGAMOS EL TEMPLATE
if($_SESSION['Pago'] == 1){
    $smarty->display('payment-address.tpl');
}

if($_SESSION['Pago'] == 2){
    $smarty->display('payment-pay.tpl');
}
