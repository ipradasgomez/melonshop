<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
	<link rel="stylesheet" href="./css/iconic-glyphs.css">
    <link rel="stylesheet" href="./css/mystyles.css">
    <title>Groserias</title>
    <style>

    </style>
</head>
<body>
<nav class="container-fluid data">
    <div class="row brand-row align-self-center">
        <div class="col-4 offset-1">
            <a class="navbar-brand" href="#">
                <img src="./gallery/watermelon.png" class="align-middle d-inline-block align-top logo-img" alt="">
                <h1 class="align-middle brand-text">MelonShop</h1>
            </a>
        </div>
        <div class="col-11 d-flex justify-content-end">
            <div class="btn-group btn-topmenu" role="group" aria-label="Menu Bar">
                <button type="button" class="btn btn-light">Left</button>
                <button type="button" class="btn btn-light"><span class="iconic" data-glyph="heart" title="heart" aria-hidden="true"></span></button>
                <button type="button" class="btn btn-light">Right</button>
                <div class="btn-group" role="group">
                    <button id="profileMenu" type="button" class="btn btn-light dropdown-toggle"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Dropdown
                    </button>
                    <div class="dropdown-menu" aria-labelledby="profileMenu">
                        <a class="dropdown-item" href="#">Dropdown link</a>
                        <a class="dropdown-item" href="#">Dropdown link</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>
<footer>
    <script src="./js/jquery.js"></script>
    <script src="./js/popper.js"></script>
    <script src="./js/bootstrap.min.js"></script>
</footer>
</body>
</html>