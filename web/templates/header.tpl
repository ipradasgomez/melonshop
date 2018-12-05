<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{$title}</title>
    <link rel="icon" href="../resources/gallery/favicon.ico?v=2" type="image/x-icon" />
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="../resources/css/open-iconic-bootstrap.css">
    <link rel="stylesheet" href="../resources/css/mystyles.css">
</head>
<body>
    <nav class="container-fluid sticky-top data">
        <div class="row brand-row align-self-center sticky-top">
            <div class="col-4 offset-1">
                <a class="navbar-brand sticky-top" href="./index.php">
                    <img src="../resources/gallery/watermelon.png" class="align-middle d-inline-block align-top logo-img"
                        alt="">
                    <h1 class="align-middle brand-text">{$logoTitle}</h1>
                </a>
            </div>
            <div class="col-6 d-flex justify-content-end">
                {if $mostrarBarra}
                <div class="btn-group btn-topmenu" role="group" aria-label="Menu Bar">
                    {if $smarty.server.PHP_SELF|basename eq "index.php"}
                    <input type="text" class="form-control inputCant" placeholder="Buscar">
                    <button type="button" class="btn btn-light btnNav" data-toggle="tooltip" data-placement="bottom"
                        title="Buscar"><span class="oi oi-magnifying-glass"></span></button>
                    {/if}
                    <a href="./cart.php"><button type="button" class="btn btn-light notificationBadge btnNav"
                            data-badge="{$new}" data-toggle="tooltip" data-placement="bottom" title="Carrito"><span
                                class="oi oi-basket"></span></button></a>
                    <div class="btn-group" role="group">
                        <button id="profileMenu" type="button" class="btn btn-light dropdown-toggle btnNav" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                            {if $usuarioConectado}<span><b>Ismael</b></span> {/if}<span class="oi oi-person"></span>
                        </button>
                        <div class="dropdown-menu" aria-labelledby="profileMenu">
                            {if $usuarioConectado}
                            <a class="dropdown-item" href="./settings.php">Ajustes</a>
                            <a class="dropdown-item" href="./orders.php">Mis Pedidos</a>
                            <a class="dropdown-item" href="./logout.php">Cerrar sesión</a>
                            {else}
                            <a class="dropdown-item" href="./login.php">Conectarme</a>
                            {/if}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        {/if}
    </nav>
    {* Este div abr eel contenedor centrado para las páginas *}
    <div class="container main-container">