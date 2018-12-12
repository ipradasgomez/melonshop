<?php
/**
 * Example Application
 *
 * @package Example-application
 */
require '../init/init.php';
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

$smarty->assign("lista", $lista);
$smarty->assign("new", 10);

if(isset($_SESSION['user'])){
    $smarty->assign("usuario",$_SESSION["user"]);
}

/*
$smarty->assign("Name", "Fred Irving Johnathan Bradley Peppergill", true);
$smarty->assign(
    "Class",
    array(
        array("A", "B", "C", "D"),
        array("E", "F", "G", "H"),
        array("I", "J", "K", "L"),
        array("M", "N", "O", "P")
    )
);
$smarty->assign("option_values", array("NY", "NE", "KS", "IA", "OK", "TX"));
$smarty->assign("option_selected", "NE");*/
$smarty->display('index.tpl');
