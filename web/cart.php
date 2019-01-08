<?php
/**
 * Created by PhpStorm.
 * User: ISMAEL
 * Date: 28/11/2018
 * Time: 21:17
 */

require '../init/init.php';

///NUESTRO PHP
$lista=[
    [1,"aceituna",1.5,"aceituna_01.jpg","descripcion de producto","kg"],
    [2,"aguacate",2.1,"aguacate_01.jpg","descripcion de producto","kg"],
    [3,"albaricoque",5.4,"albaricoque_01.jpg","descripcion de producto","kg"],
    [4,"almendra",2.1,"almendra_01.jpg","descripcion de producto","kg"],
    [5,"avellanas",4.1,"avellanas_01.jpg","descripcion de producto","kg"],
    [6,"caquis",1,"caquis_01.jpg","descripcion de producto","kg"],
    [7,"carambola",2,"carambola_01.jpg","descripcion de producto","kg"],
    [8,"castanas",4.1,"castanas_01.jpg","descripcion de producto","kg"],
    [9,"chirimoya",2.7,"chirimoya_01.jpg","descripcion de producto","kg"],
    [10,"ciruela",1.7,"ciruela_01.jpg","descripcion de producto","kg"],
    [11,"coco",1.6,"coco_01.jpeg","descripcion de producto","kg"],
    [12,"datil",2.4,"datil_01.jpeg","descripcion de producto","kg"],
    [13,"feijoa",3.1,"feijoa_01.jpg","descripcion de producto","kg"],
    [14,"frambuesa",1.9,"frambuesas_01.jpg","descripcion de producto","kg"],
[15,"fresas",3,"fresas_01.jpg","descripcion de producto","kg"]
    ];

if (isset($_POST['modificar'])) {
    $carro->modificarCant($_POST['id'], $_POST['cant']);
}

if (isset($_POST['eliminar'])) {
    $carro->eliminarProducto($_POST['id']);
}

$smarty->assign('gastoEnvio', 3);
$smarty->assign('carro', $carro);
$smarty->assign('carrito', $carro->carro());
$smarty->assign("lista", $lista);
//CARGAMOS EL TEMPLATE
$smarty->display('cart.tpl');