<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>MelonShop</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/open-iconic-bootstrap.css">
    <link rel="stylesheet" href="./css/mystyles.css">
    <style>
        /*
        *{
        padding: 0 !important;
        margin: 0 !important;
        border: 0 !important;
        }
        */

        .main-container {
            margin-top: 25px;
        }

        .info {
            max-height: 0px;
            overflow: hidden;
            transition: max-height 1s ease-in;
        }

        .card:hover .info {
            max-height: 160px;
            transition: max-height 1s ease-in-out;

        }

        .inputCant {
            border-radius: 0.25rem 0 0 0.25rem;
            border-right: 0px;
        }


        <!--
        Reglas de las columnas

        -->
        @media (min-width: 34em) {
            .card-columns {
                -webkit-column-count: 2;
                -moz-column-count: 2;
                column-count: 2;
            }
        }

        @media (min-width: 48em) {
            .card-columns {
                -webkit-column-count: 3;
                -moz-column-count: 3;
                column-count: 3;
            }
        }

        @media (min-width: 62em) {
            .card-columns {
                -webkit-column-count: 4;
                -moz-column-count: 4;
                column-count: 4;
            }
        }

        @media (min-width: 75em) {
            .card-columns {
                -webkit-column-count: 5;
                -moz-column-count: 5;
                column-count: 5;
            }
        }
    </style>
</head>
<body>
<?php include('./top.php'); ?>
<div class="container main-container">
    <div class="row">
        <div class="card-columns">
            <?php for ($i = 1; $i <= 15; $i++) { ?>
                <div class="card ">
                    <img class="card-img-top" src="./gallery/bananas.jpg" alt="Card image cap">
                    <div class="card-body">
                        <p class="card-title">
                            <small>Card title</small>
                        </p>
                        <div class="info">
                            <p class="card-text col-12">
                                <small>This is a wider card with supporting text below as a natural.</small>
                            </p>
                            <input type="number" min="1" value="1" class="col-7 inputCant" placeholder="Cantidad"
                                   aria-label="Input group example" aria-describedby="btnGroupAddon">
                            <button type="button" class="btn btn-secondary col-4"><span class="oi oi-cart"></button>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</div>
<?php include('./footer.php'); ?>
</body>
</html>