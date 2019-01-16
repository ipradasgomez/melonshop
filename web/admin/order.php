<?php
chdir('..');
require '../init/init.php';
if(empty($_GET['id'])){
    //header("Location: ./orders.php");
}

$smarty->display('admin/order.tpl');