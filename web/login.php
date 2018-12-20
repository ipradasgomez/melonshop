<?php
/**
 * Example Application
 *
 * @package Example-application
 */
require '../init/init.php';


// así veo si tengo que guardar el valor de email para dejarlo en el input email como value
$smarty->assign('email', false);

// inicializao las variables para mostrar o no el mensaje de error según localice los errores
$smarty->assign('falloEmail', false);
$smarty->assign('falloClave', false);

if(isset($_POST["login"])){
    
    $usuario = $BD->obtenerUsuario($_POST["email"]);

    if($usuario == null){
        // localizado el fallo de Email no registrado
        $smarty->assign('falloUsuario', 'El email no está registrado, Registrese');
    }else{
        // Guardo el valor del email que es valido para no perderlo
        $smarty->assign('email',$_POST['email']);
        
        if(isset($_POST['clave']) && password_verify ($_POST['clave'],$usuario[0]->clave)){ 
            // recojo el nombre de usuario en la sesión
            $_SESSION['user']=$usuario[0]->nombre;
        } else {
            $smarty->assign('falloClave', 'Contraseña incorrecta');
        }
    }
}

if(isset($_POST['registrar'])){
    $BD->registrarUsuario($_POST['nombre'], $_POST['apellidos'], $_POST['genero'], $_POST['email'], password_hash($_POST['clave'], PASSWORD_DEFAULT));
}

if(isset($_SESSION['user'])){
    $smarty->assign("usuarioConectado", !empty($_SESSION["user"]));
    $smarty->assign("usuario",$_SESSION["user"]);
}

$smarty->display('login.tpl');