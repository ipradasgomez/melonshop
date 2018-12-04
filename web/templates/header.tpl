<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{$title}</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="../resources/css/open-iconic-bootstrap.css">
    <link rel="stylesheet" href="../resources/css/mystyles.css">
</head>
<body>
<nav class="container-fluid sticky-top data">
     <div class="row brand-row align-self-center sticky-top">
        <div class="col-4 offset-1">
            <a class="navbar-brand sticky-top" href="#">
                <img src="../resources/gallery/watermelon.png" class="align-middle d-inline-block align-top logo-img" alt="">
                <h1 class="align-middle brand-text">{$logoTitle}</h1>
            </a>
        </div>
        <div class="col-6 d-flex justify-content-end">
        {if $mostrarBarra}
            <div class="btn-group btn-topmenu" role="group" aria-label="Menu Bar">
			<input type="text" class="form-control inputCant" placeholder="Buscar" >
			<button type="button" class="btn btn-light btnNav"><span class="oi oi-magnifying-glass"></span></button>
                <button type="button" class="btn btn-light btnNav"><span class="oi oi-person"></span></button>
                <button type="button" class="btn btn-light notificationBadge btnNav" data-badge="{$new}"><span class="oi oi-basket"></span></button>                
                <div class="btn-group" role="group">
                    <button id="profileMenu" type="button" class="btn btn-light dropdown-toggle btnNav"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Lista
                    </button>
                    <div class="dropdown-menu" aria-labelledby="profileMenu">
                        <a class="dropdown-item" href="#">Elemento 1</a>
                        <a class="dropdown-item" href="#">Elemento 2</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {/if}
</nav>
{* Este div abr eel contenedor centrado para las páginas *}
<div class="container main-container">