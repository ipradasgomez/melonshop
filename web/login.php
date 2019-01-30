<?php
/**
 * Example Application
 *
 * @package Example-application
 */
require '../init/init.php';

if (!empty($_SESSION["user"])) {
    header("Location: ./index.php");
}
// así veo si tengo que guardar el valor de email para dejarlo en el input email como value
$smarty->assign('email', false);

if (isset($_POST["login"])) {

    $usuario = $BD->obtenerUsuario($_POST["email"]);

    if ($usuario == null) {
        // localizado el fallo de Email no registrado
        $smarty->assign('falloEmail', true);
    } else {
        // Guardo el valor del email que es valido para no perderlo
        $smarty->assign('email', $_POST['email']);

        if (isset($_POST['clave']) && password_verify($_POST['clave'], $usuario->password)) {
            // recojo el nombre de usuario en la sesión
            $_SESSION['user'] = $usuario->first_name;
            $_SESSION['userFull'] = $usuario;
            $_SESSION['rol'] = 1;
            if(isset($_SESSION["paying"])){
                header("Location: ./payment.php");
            }else{
            header("Location: ./index.php");
            }
        } else {
            $smarty->assign('falloClave', true);
        }
    }
}

// opciones del select de ciudades

$ciudades = $BD->obtenerCiudades();

$smarty->assign('ciudades', $ciudades);

if (isset($_POST['registrar'])) {

    // variable para realizar el registro o no
    $registro = true;
    if (empty($_POST['usuario'])) {
        $smarty->assign('faltaUsuario', true);
        $registro = false;
    }

    if (empty($_POST['nombre'])) {
        $smarty->assign('faltaNombre', true);
        $registro = false;
    }

    if (empty($_POST['apellidos'])) {
        $smarty->assign('faltaApellidos', true);
        $registro = false;
    }

    if (empty($_POST['clave'])) {
        $smarty->assign('faltaClave', true);
        $registro = false;
    }

    if (empty($_POST['email'])) {
        $smarty->assign('faltaEmail', true);
        $registro = false;
    }

    if (empty($_POST['direccion'])) {
        $smarty->assign('faltaDireccion', true);
        $registro = false;
    }

    // pendiente de cambio para que verifique por email
    if (!($BD->existeUsuario($_POST['email'])) && $registro) {
        $BD->registrarUsuario($_POST['nombre'], $_POST['apellidos'], $_POST['usuario'], password_hash($_POST['clave'], PASSWORD_DEFAULT), $_POST['email'], $_POST['telefono'], $_POST['ciudad'], $_POST['direccion']);
        $smarty->assign('registrado', true);
    } else {
        $smarty->assign('usuarioEnUso', true);
    }
}

if (isset($_SESSION['user'])) {
    $smarty->assign("usuarioConectado", !empty($_SESSION["user"]));
    $smarty->assign("usuario", $_SESSION["user"]);
}

$smarty->display('login.tpl');
