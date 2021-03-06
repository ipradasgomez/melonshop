<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{$title}</title>
    <link rel="icon" href="../../resources/gallery/favicon.ico?v=2" type="image/x-icon" />
    <link rel="stylesheet" href="../../resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../resources/css/open-iconic-bootstrap.css">
    <link rel="stylesheet" href="../../resources/css/mystyles.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<body>
    <nav class="container-fluid sticky-top data">
        <div class="row brand-row align-self-center sticky-top">
            <div class="col-4 offset-1">
                <a class="navbar-brand sticky-top" href="./index.php">
                    <img src="../../resources/gallery/watermelon.png" class="align-middle d-inline-block align-top logo-img"
                        alt="">
                    <h1 class="align-middle brand-text">{$logoTitle}</h1>
                </a>
            </div>
            <div class="col-6 d-flex justify-content-end">
                {if $mostrarBarra}
                <div class="btn-group btn-topmenu" role="group" aria-label="Menu Bar">
                    <div class="btn-group" role="group">
                        <button id="profileMenu" type="button" class="btn btn-light dropdown-toggle btnNav border" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                            {if $usuarioConectado}<span><b>{$usuario}</b></span> {/if}<span class="oi oi-person"></span>
                        </button>
                        <div class="dropdown-menu" aria-labelledby="profileMenu">
                            {if $usuarioConectado}
                            <!--<a class="dropdown-item" href="./settings.php">Ajustes</a>-->
                            <a class="dropdown-item" href="./../logout.php">Cerrar sesión</a>
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
    <div class="container main-container main-container-admin">