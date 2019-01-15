<?php
/*Iniciamos la sesión una sola vez*/
session_start();

/*Incluimos lo necesario para Smarty*/
require '../libs/Smarty.class.php';
$smarty = new Smarty;

/*Configuramos las opciones iniciales de Smarty*/
$smarty->force_compile = true; /*Poner a false en producción*/
$smarty->debugging = false; /*Poner a false en producción*/
$smarty->caching = false; /*Aumenta el rendimiento si está a true*/
$smarty->cache_lifetime = 120;

//Incluimos las librerias y clases necesarias de PHP
require_once('./../phpclasses/DataBase.php');
$BD = new DataBase();

//Variables para la web
if (basename($_SERVER['PHP_SELF'], ".php") != "login") {
    $_SESSION["pagina"] = basename($_SERVER['PHP_SELF'], ".php");
}

require_once('./../phpclasses/Carrito.php');

$carro = new Carrito();
$gastoEnvio=1.50;
$smarty->assign('productosEnCarrito',$carro->carro());
$smarty->assign("usuario", isset($_SESSION["user"]) ? $_SESSION["user"] : "");
$smarty->assign('new', $carro->longitud());
$smarty->assign('usuarioConectado', !empty($_SESSION["user"]));

