<?php
/**
 * Created by PhpStorm.
 * User: ISMAEL
 * Date: 28/11/2018
 * Time: 21:17
 */

require '../init/init.php';

/**Nuestras operaciones con PHP*/
$texto = "¡Hola mundo!";
$suma = 2+5;

/**Asignamos nuestras variables a las variables de la plantilla TPL*/
$smarty->assign("constanteDeTexto", "Hello World!");
$smarty->assign("variableDeTexto", $texto);
$smarty->assign("constanteNumerica", 9*9);
$smarty->assign("variableNumerica", $suma);
$smarty->assign('fechaDeAyer', strtotime('-1 day'));

/**Cargamos la plantilla*/
$smarty->display('ejemplo_01.tpl');
?>