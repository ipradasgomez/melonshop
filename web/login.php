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
$smarty->assign('usuarioEnUso', false);
$smarty->assign('faltaUsuario', false);
$smarty->assign('faltaNombre', false);
$smarty->assign('faltaApellidos', false);
$smarty->assign('faltaClave', false); 
$smarty->assign('faltaEmail', false);
$smarty->assign('faltaDireccion', false);


if(isset($_POST["login"])){
    
    $usuario = $BD->obtenerUsuario($_POST["email"]);

    if($usuario == null){
        // localizado el fallo de Email no registrado
        $smarty->assign('falloEmail', 'El email no está registrado, Registrese');
    }else{
        // Guardo el valor del email que es valido para no perderlo
        $smarty->assign('email',$_POST['email']);
        
        if(isset($_POST['clave']) && password_verify ($_POST['clave'],$usuario[0]->password)){ 
            // recojo el nombre de usuario en la sesión
            $_SESSION['user']=$usuario[0]->first_name;
            header("Location: ./index.php");
        } else {
            $smarty->assign('falloClave', 'Contraseña incorrecta');
        }
    }
}

// opciones del select de ciudades

$ciudades = $BD->obtenerTabla('city');

$smarty->assign('ciudades', $ciudades);

if(isset($_POST['registrar'])){
    
    // variable para realizar el registro o no
    $registro = true;
    if (empty($_POST['usuario'])) {
        $smarty->assign('faltaUsuario', 'Falta el usuario'); 
        $registro = false;
    }

    if (empty($_POST['nombre'])) {
        $smarty->assign('faltaNombre', 'Falta el nombre'); 
        $registro = false;
    }

    if (empty($_POST['apellidos'])) {
        $smarty->assign('faltaApellidos', 'Faltan los apellidos'); 
        $registro = false;
    }

    if (empty($_POST['clave'])) {
        $smarty->assign('faltaClave', 'Falta la clave'); 
        $registro = false;
    }

    if (empty($_POST['email'])) {
        $smarty->assign('faltaEmail', 'Falta el Email'); 
        $registro = false;
    }

    if (empty($_POST['direccion'])) {
        $smarty->assign('faltaDireccion', 'Falta la direccion'); 
        $registro = false;
    }

    // pendiente de cambio para que verifique por email
    if(!($BD->existeUsuario($_POST['usuario'])) && $registro){
        $BD->registrarUsuario($_POST['nombre'], $_POST['apellidos'], $_POST['usuario'], password_hash($_POST['clave'], PASSWORD_DEFAULT), $_POST['email'], $_POST['telefono'], $_POST['ciudad'], $_POST['direccion']);
    }else{
        if($registro){
            $smarty->assign('usuarioEnUso', 'El usuario : "'.$_POST['usuario'].'" ya está en uso');
        }
    }
}

if(isset($_SESSION['user'])){
    $smarty->assign("usuarioConectado", !empty($_SESSION["user"]));
    $smarty->assign("usuario",$_SESSION["user"]);
}

$smarty->display('login.tpl');