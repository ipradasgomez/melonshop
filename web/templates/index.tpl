{include file="header.tpl" title="Melon Shop" new=$new logoTitle="MelonShop" mostrarBarra=true usuarioConectado=$usuarioConectado}
<div class="row">
    <div class="card-columns">
        {foreach from=$lista item=producto}
            {include file="producto.tpl" producto=$producto}
        {/foreach}
            
    </div>
</div>
{include file="footer.tpl"}