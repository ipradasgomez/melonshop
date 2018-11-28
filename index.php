<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<title>MelonShop</title>    
		<link rel="stylesheet" href="./css/bootstrap.min.css">
		<link rel="stylesheet" href="./css/open-iconic-bootstrap.css">
		<link rel="stylesheet" href="./css/mystyles.css"><style>
			/*
			*{
            padding: 0 !important;
            margin: 0 !important;
            border: 0 !important;
			}
			*/
			header{
            height: 100px;
            background-color: darkgray;
			}
			footer{
            height: 100px;
			width:100%;
            background-color: darkgray;
			z-index:-999 !important;
			}
			.card{
            border: 1px solid grey !important;
            height: 100%;
			}
			.card-group{
            display: inline-block;
			}
			.info{
            display: none;
			}
			.card:hover .info{
            display: initial;
			}
			.inputCant{
            border-radius: 0.25rem 0 0 0.25rem;
			border-right:0px;
			}
			
			li.blockquote-footer{
            display: inline-block;
        }
        .footer-top{
            color: rgb(211, 208, 208);
            background-color: rgb(71, 79, 87);
        }
        .footer-top li{
            color: rgb(211, 208, 208);
        }
        .footer-bot{
            background-color: rgb(131, 143, 158);
        }
        .footer-bot p{
            color: rgb(211, 208, 208);
        }
		footer > .row{
		padding:0 !important;
		margin: 0 !important;
		}
		</style>
	</head>
	<body>
		<?php include ('./top.php');?>
		<div class="container">
			<div class="row">
				<?php for($i=1;$i<=10;$i++){?>				
						<div class="card col-xl-2 col-md-3 col-4 mb-2 mt-2">						
							<img class="card-img-top" src="./gallery/bananas.jpg" alt="Card image cap">
							<div class="card-body">
								<p class="card-title"><small>Card title</small></p>
								<div class="row info">
									<p class="card-text col-12"><small>This is a wider card with supporting text below as a natural.</small></p>
									<input type="number" min="1" value="1" class="col-7 inputCant" placeholder="Cantidad" aria-label="Input group example" aria-describedby="btnGroupAddon">
									<button type="button" class="btn btn-secondary col-4"><span class="oi oi-cart"></button>
								</div>
							</div>
						</div>					
				<?php } ?>				
			</div>
		</div>
			<?php include('./footer.php');?>
	</body>
</html>