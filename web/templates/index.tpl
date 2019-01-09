{if !isset($busqueda)}
{assign "busqueda" ""}
{/if}
{include file="header.tpl" title="Melon Shop" new=$new logoTitle="MelonShop" mostrarBarra=true
usuarioConectado=$usuarioConectado busqueda=$busqueda}

<div class="row">
    {if $lista|@count > 0}

    {if $busqueda neq ""}
<div class="alert alert-success col-12" role="alert">
  Mostrando resultados de <strong>{$smarty.get.buscar}</strong>
</div>
    {/if}
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