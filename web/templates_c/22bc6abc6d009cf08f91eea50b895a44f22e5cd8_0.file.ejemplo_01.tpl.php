<?php
/* Smarty version 3.1.33, created on 2018-12-03 23:33:31
  from '/opt/lamp/apache2/htdocs/melonshop/smartyMelonShop/web/templates/ejemplo_01.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5c062dcb5b1c97_41274758',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '22bc6abc6d009cf08f91eea50b895a44f22e5cd8' => 
    array (
      0 => '/opt/lamp/apache2/htdocs/melonshop/smartyMelonShop/web/templates/ejemplo_01.tpl',
      1 => 1543908262,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c062dcb5b1c97_41274758 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'/opt/lamp/apache2/htdocs/melonshop/smartyMelonShop/libs/plugins/modifier.truncate.php','function'=>'smarty_modifier_truncate',),1=>array('file'=>'/opt/lamp/apache2/htdocs/melonshop/smartyMelonShop/libs/plugins/modifier.date_format.php','function'=>'smarty_modifier_date_format',),));
?>
<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ejemplo 01 - Variables simples</title>
</head>
<body>
<h1>Variables de la plantilla</h1>
<p>La variable {$constanteDeTexto} contiene <b><?php echo $_smarty_tpl->tpl_vars['constanteDeTexto']->value;?>
</b></p>
<p>La variable {$variableDeTexto} contiene <b><?php echo $_smarty_tpl->tpl_vars['variableDeTexto']->value;?>
</b></p>
<p>La variable {$constanteNumerica} contiene <b><?php echo $_smarty_tpl->tpl_vars['constanteNumerica']->value;?>
</b></p>
<p>La variable {$variableNumerica} contiene <b><?php echo $_smarty_tpl->tpl_vars['variableNumerica']->value;?>
</b></p>
<p>La fecha actual es <b><?php echo time();?>
</b></p>


<h1>Operaciones con las variables</h1>
<a href="https://www.smarty.net/docsv2/en/language.modifiers.tpl" target="_blank">Operaciones con variables</a>
<p>La variable {$constanteDeTexto} en mayúsculas es <b><?php echo mb_strtoupper($_smarty_tpl->tpl_vars['constanteDeTexto']->value, 'UTF-8');?>
</b></p>
<p>La variable {$constanteDeTexto} en minúsculas es <b><?php echo mb_strtolower($_smarty_tpl->tpl_vars['constanteDeTexto']->value, 'UTF-8');?>
</b></p>
<p>La variable {$constanteDeTexto} truncada en 3 es <b><?php echo smarty_modifier_truncate($_smarty_tpl->tpl_vars['constanteDeTexto']->value,7,'...');?>
</b></p>
<p>La variable {$constanteDeTexto} en minúsculas truncada en 3 es
    <b><?php echo smarty_modifier_truncate(mb_strtolower($_smarty_tpl->tpl_vars['constanteDeTexto']->value, 'UTF-8'),7,'...');?>
</b></p>
<p>La variable {$constanteDeTexto} repetida 7 veces es <b><?php echo str_repeat($_smarty_tpl->tpl_vars['constanteDeTexto']->value,7);?>
</b></p>


<h1>Operaciones con fechas</h1>
<a href="https://www.smarty.net/docsv2/es/language.modifier.date.format.tpl" target="_blank">Fechas y operaciones</a>
<p>La fecha actual es <b><?php echo time();?>
</b></p>
<p>La fecha actual es <b><?php echo smarty_modifier_date_format(time(),"%Y/%m/%d");?>
</b></p>
<p>La fecha actual es <b><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['fechaDeAyer']->value);?>
</b></p>
</body>
</html><?php }
}
