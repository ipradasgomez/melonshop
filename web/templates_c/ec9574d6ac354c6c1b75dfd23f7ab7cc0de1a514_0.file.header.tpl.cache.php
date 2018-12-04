<?php
/* Smarty version 3.1.33, created on 2018-12-04 00:07:46
  from '/opt/lamp/apache2/htdocs/melonshop/web/templates/header.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5c0635d28fff29_85714817',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ec9574d6ac354c6c1b75dfd23f7ab7cc0de1a514' => 
    array (
      0 => '/opt/lamp/apache2/htdocs/melonshop/web/templates/header.tpl',
      1 => 1543909899,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c0635d28fff29_85714817 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->compiled->nocache_hash = '2791390655c0635d28e9987_66121323';
?>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</title>
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
                <h1 class="align-middle brand-text"><?php echo $_smarty_tpl->tpl_vars['logoTitle']->value;?>
</h1>
            </a>
        </div>
        <div class="col-6 d-flex justify-content-end">
            <div class="btn-group btn-topmenu" role="group" aria-label="Menu Bar">
			<input type="text" class="form-control inputCant" placeholder="Buscar" >
			<button type="button" class="btn btn-light btnNav"><span class="oi oi-magnifying-glass"></span></button>
                <button type="button" class="btn btn-light btnNav"><span class="oi oi-person"></span></button>
                <button type="button" class="btn btn-light notificationBadge btnNav" data-badge="<?php echo $_smarty_tpl->tpl_vars['new']->value;?>
"><span class="oi oi-basket"></span></button>                
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
</nav>
<?php }
}
