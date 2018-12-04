<?php
/* Smarty version 3.1.33, created on 2018-12-04 00:07:46
  from '/opt/lamp/apache2/htdocs/melonshop/web/templates/index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5c0635d28d6bb9_74783890',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b41d7aea8be7da62c91547139fa9f6a923e9ed42' => 
    array (
      0 => '/opt/lamp/apache2/htdocs/melonshop/web/templates/index.tpl',
      1 => 1543909767,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:header.tpl' => 1,
    'file:footer.tpl' => 1,
  ),
),false)) {
function content_5c0635d28d6bb9_74783890 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->compiled->nocache_hash = '16838226465c0635d283c366_33542263';
$_smarty_tpl->_subTemplateRender("file:header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, $_smarty_tpl->cache_lifetime, array('title'=>"Melon Shop",'new'=>$_smarty_tpl->tpl_vars['new']->value,'logoTitle'=>"MelonShop",'conectado'=>$_smarty_tpl->tpl_vars['conectado']->value), 0, false);
?>
<div class="container main-container">
    <div class="row">
        <div class="card-columns">
            <?php
$_smarty_tpl->tpl_vars['bebe'] = new Smarty_Variable(null, $_smarty_tpl->isRenderingCache);$_smarty_tpl->tpl_vars['bebe']->step = 1;$_smarty_tpl->tpl_vars['bebe']->total = (int) ceil(($_smarty_tpl->tpl_vars['bebe']->step > 0 ? 15+1 - (1) : 1-(15)+1)/abs($_smarty_tpl->tpl_vars['bebe']->step));
if ($_smarty_tpl->tpl_vars['bebe']->total > 0) {
for ($_smarty_tpl->tpl_vars['bebe']->value = 1, $_smarty_tpl->tpl_vars['bebe']->iteration = 1;$_smarty_tpl->tpl_vars['bebe']->iteration <= $_smarty_tpl->tpl_vars['bebe']->total;$_smarty_tpl->tpl_vars['bebe']->value += $_smarty_tpl->tpl_vars['bebe']->step, $_smarty_tpl->tpl_vars['bebe']->iteration++) {
$_smarty_tpl->tpl_vars['bebe']->first = $_smarty_tpl->tpl_vars['bebe']->iteration === 1;$_smarty_tpl->tpl_vars['bebe']->last = $_smarty_tpl->tpl_vars['bebe']->iteration === $_smarty_tpl->tpl_vars['bebe']->total;?>
                <div class="card">
                    <img class="card-img-top" src="../resources/gallery/bananas.jpg" alt="Card image cap" data-toggle="tooltip"
                         data-placement="top" title="Bananas criadas en criaderos submarinos y en cautividad.">
                    <div class="card-body">
                        <div class="card-title">
                           <?php echo $_smarty_tpl->tpl_vars['bebe']->value;?>
 Banana super larga</br> <small><b>2,65€/kg</b></small>
                        </div>
                        <div class="info">
                            <input type="number" min="1" value="1" class="col-7 inputCant" placeholder="Cantidad"
                                   aria-label="Input group example" aria-describedby="btnGroupAddon">
                            <button type="button" class="btn btn-secondary col-4"><span class="oi oi-cart"></button>
                        </div>
                    </div>
                </div>
                <?php }
}
?>
        </div>
    </div>
</div>
<?php $_smarty_tpl->_subTemplateRender("file:footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
