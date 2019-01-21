<?php
/**
 * Example Application
 *
 * @package Example-application
 */

 chdir('..');
require '../init/init.php';

// así veo si tengo que guardar el valor de email para dejarlo en el input email como value
$smarty->assign('codigo', false);

// inicializao las variables para mostrar o no el mensaje de error según localice los errores
$smarty->assign('falloCodigo', false);
$smarty->assign('falloClave', false);


if(isset($_POST["login"])){
    
    $empleado = $BD->obtenerEmpleado($_POST["codigo"]);

    if($empleado == null){
        // localizado el fallo de Email no registrado
        $smarty->assign('falloCodigo', 'El codigo introducido no coincide con ningún empleado');
    }else{
        // Guardo el valor del email que es valido para no perderlo
        $smarty->assign('codigo',$_POST['codigo']);
        if(isset($_POST['clave']) && password_verify($_POST['clave'], $empleado->employe_password)){ 
            // recojo el nombre de empleado en la sesión
            $_SESSION['user']=$empleado->first_name;
            header("Location: ./index.php");
        } else {
            $smarty->assign('falloClave', 'Contraseña incorrecta');
        }
    }
}

if(isset($_SESSION['user'])){
    $smarty->assign("usuarioConectado", !empty($_SESSION["user"]));
    $smarty->assign("usuario",$_SESSION["user"]);
}

$smarty->display('admin/login.tpl');