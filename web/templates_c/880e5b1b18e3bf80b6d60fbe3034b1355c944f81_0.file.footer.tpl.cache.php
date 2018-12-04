<?php
/* Smarty version 3.1.33, created on 2018-12-04 00:07:46
  from '/opt/lamp/apache2/htdocs/melonshop/web/templates/footer.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5c0635d2911527_65615371',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '880e5b1b18e3bf80b6d60fbe3034b1355c944f81' => 
    array (
      0 => '/opt/lamp/apache2/htdocs/melonshop/web/templates/footer.tpl',
      1 => 1543908262,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c0635d2911527_65615371 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->compiled->nocache_hash = '20880995945c0635d2907e29_57739193';
?>
<footer>
<div class="row justify-content-center footer-top">
	<ul class="col-2">
		<li ><h1><small>Lista 1</small></h1></li>
		<li class="blockquote-footer">Lista 1 li 1</li>
		<li class="blockquote-footer">Lista 1 li 2</li>
		<li class="blockquote-footer">Lista 1 li 3</li>
	</ul>
	<ul class="col-2 offset-1">
		<li ><h1><small>Lista 2</small></h1></li>
		<li class="blockquote-footer">Lista 2 li 1</li>
		<li class="blockquote-footer">Lista 2 li 2</li>
		<li class="blockquote-footer">Lista 2 li 3</li>
	</ul>
	<ul class="col-2 offset-1">
		<li ><h1><small>Lista 3</small></h1></li>
		<li class="blockquote-footer">Lista 3 li 1</li>
		<li class="blockquote-footer">Lista 3 li 2</li>
		<li class="blockquote-footer">Lista 3 li 3</li>
	</ul>
<div class="col-12 justify-content-center footer-bot"><p class="small text-center">texto de Copy, derechos y demás</p></div>
</div>
</footer>
<?php echo '<script'; ?>
 src="../resources/js/jquery.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="../resources/js/popper.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="../resources/js/bootstrap.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
>
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    })
<?php echo '</script'; ?>
>
</body>
</html><?php }
}
