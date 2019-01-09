<?php
/**
 * Example Application
 *
 * @package Example-application
 */
require '../init/init.php';

if(isset($_GET["buscar"])){
    $word = strtolower(empty($_GET["buscar"]) ? "" : $_GET["buscar"]);
    if(substr($word, -1)=="s"){
        $word=substr($word,0, strlen($word)-1);
    };
    $smarty->assign("busqueda",$word);
    $smarty->assign("lista", $BD::obtenerProductosCoincidentes($BD::filtraString($word)));
}else{
    $smarty->assign("lista", $BD::obtenerProductos());
}


if(isset($_SESSION['user'])){
    $smarty->assign("usuario",$_SESSION["user"]);
}

if(isset($_POST['add'])){
    $cant=(int)$BD::filtraString($_POST['cant']);
    
    if(is_numeric($cant)&& $cant>0){
    $carro->addProducto($BD::obtenerProducto($_POST['id']), $cant);
    $smarty->assign('new', $carro->longitud());
    }
}


$smarty->display('index.tpl');
