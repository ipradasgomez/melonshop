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
            background-color: darkgray;
			z-index:-999 !important;
			}
			.card{
            border: 1px solid grey !important;
			}
			.card-body{
			padding: .8rem;
			}
			.info{
            display: none;
			}			
			.card-body:hover .info{
            display: initial;
			}
			.inputCant{
            border-radius: 0.25rem 0 0 0.25rem;
			}
		</style>
	</head>
	<body>
		<?php include ('./top.php');?>
		<div class="container">
			<div class="row m-4">
			<?php for($i=1;$i<=10;$i++){?>
				<div class="card-group col-xl-2 col-md-3 col-4 mb-2 mt-2 producto">
					<div class="card">
						<img class="card-img-top" src="./gallery/bananas.jpg" alt="Card image cap">
						<div class="card-body">
							<p class="card-title">Banana<small>1,21 €/kg</small></p>							
							<div class="info">
								<p class="card-text"><small>This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</small></p>
								<div class="btn-group" role="group" aria-label="Basic example">
									<input type="number" class="form-control inputCant" placeholder="Cantidad" aria-label="Input group example" aria-describedby="btnGroupAddon">
									<button type="button" class="btn btn-secondary btn2">Icon<span class="iconic" data-glyph="heart" title="heart" aria-hidden="true"></span></button>
								</div>
							</div>
						</div>
					</div>
				</div>
			<?php } ?>
				
			</div>
		</div>
		<footer>
			
		</footer>
		
		<script src="./js/jquery.js"></script>
		<script src="./js/popper.js"></script>
		<script src="./js/bootstrap.min.js"></script>
	</body>
</html>