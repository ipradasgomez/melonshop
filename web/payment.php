<?php
/**
 * Created by PhpStorm.
 * User: ISMAEL
 * Date: 28/11/2018
 * Time: 21:17
 */

require '../init/init.php';

if(empty($_SESSION["user"]) || $_SESSION['user'] == ""){
    $_SESSION["paying"]=true;
    header("Location: ./login.php");
}

if($carro->longitud() <= 0){
    header("Location: ./cart.php");
}

$smarty->assign('gastoEnvio', $gastoEnvio);
$smarty->assign('precioCarro', $carro->precioTotal()+$gastoEnvio);
$smarty->assign('productosEnCarrito',$carro->carro());

// si no estaba inicializada es que no habia iniciado el proceso de pago
// y si tenia el valor 0 es que habia terminado un proceso de compra anterior
if(!isset($_SESSION['Pago']) || $_SESSION['Pago'] == 0){
    $_SESSION['Pago'] = 1;
}
/*
if(isset($_SESSION['Pago']) && $_SESSION['Pago'] == 0){
    $_SESSION['Pago'] = 1;
}
*/
if(isset($_POST['continuarDireccion'])){
    $_SESSION['Pago'] = 2;
}

if(isset($_POST['continuarPago'])){
    $_SESSION['Pago'] = 3;
}

if(isset($_POST['continuarFinal'])){
    $_SESSION['Pago'] = 4;
    $carro->vaciarCarro();
    $smarty->assign('new', $carro->longitud());
}

if(isset($_POST['atrasDireccion'])){    
    $_SESSION['Pago'] = 1;
}

if(isset($_POST['atrasPago'])){    
    $_SESSION['Pago'] = 2;
}


///NUESTRO PHP


//CARGAMOS EL TEMPLATE
if($_SESSION['Pago'] == 1){
    $smarty->display('payment-address.tpl');
}

if($_SESSION['Pago'] == 2){
    $smarty->display('payment-pay.tpl');
}

if($_SESSION['Pago'] == 3){
    $smarty->display('payment-confirmation.tpl');
}

if($_SESSION['Pago'] == 4){
    // Inicializar a 0 el "contador" para representar que se a terminado el proceso de compra
    $_SESSION['Pago'] = 0;
    $smarty->display('payment-finaly.tpl');
}