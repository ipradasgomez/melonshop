<?php
/**
 * Created by PhpStorm.
 * User: ISMAEL
 * Date: 28/11/2018
 * Time: 21:17
 */

require '../init/init.php';

///NUESTRO PHP



$smarty->assign("new", 10);
//CARGAMOS EL TEMPLATE
$smarty->display('cart.tpl');