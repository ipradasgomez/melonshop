<?php
/**
 * Example Application
 *
 * @package Example-application
 */
require '../init/init.php';

if(isset($_GET["palabra"])){
    $word = strtolower(empty($_GET["palabra"]) ? "" : $_GET["palabra"]);
    if(substr($word, -1)=="s"){
        $word=substr($word,0, strlen($word)-1);
    };
    $smarty->assign("lista", $BD::obtenerProductosCoincidentes($BD::filtraString($word)));
}else{
    $smarty->assign("lista", $BD::obtenerProductos());
}


if(isset($_SESSION['user'])){
    $smarty->assign("usuario",$_SESSION["user"]);
}

if(isset($_POST['add'])){
    $carro->addProducto($BD::obtenerProducto($_POST['id']), $_POST['cant']);
    $smarty->assign('new', $carro->longitud());
}


$smarty->display('index.tpl');
