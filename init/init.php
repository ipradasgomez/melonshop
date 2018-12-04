<?php
	/*Iniciamos la sesión una sola vez*/
	session_start();
	
	/*Incluimos lo necesario para Smarty*/
	require '../libs/Smarty.class.php';
	$smarty = new Smarty;
	
	/*Configuramos las opciones iniciales de Smarty*/
	$smarty->force_compile = true; /*Poner a false en producción*/
	$smarty->debugging = true; /*Poner a false en producción*/
	$smarty->caching = false; /*Aumenta el rendimiento si está a true*/
	$smarty->cache_lifetime = 120;
?>