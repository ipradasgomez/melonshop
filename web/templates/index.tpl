{include file="header.tpl" title="Melon Shop" new=$new logoTitle="MelonShop" mostrarBarra=true
usuarioConectado=$usuarioConectado}
<div class="row">
    {if $lista|@count > 0}
        {foreach from=$lista item=producto}
        {include file="producto.tpl" producto=$producto}
        {/foreach}
    {else}
        <div class="alert alert-danger col-12" role="alert">
  <strong>¡Oh no!</strong> No se han encontrado productos.
</div>
    {/if}
</div>
{include file="footer.tpl"}