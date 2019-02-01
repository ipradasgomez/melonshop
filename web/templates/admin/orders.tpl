{include file="admin/header.tpl" title="Admin MelonShop" logoTitle="MelonShop Admin Panel" mostrarBarra=true
usuarioConectado=$usuarioConectado}
<div class="row">
    <div class="col-4">
        <div class="alert alert-secondary" role="alert">
            Pendiente de envío
        </div>

        <ul class="list-group">
            {foreach from=$pedidosPendientes item=pedido}
            <li class="list-group-item"><a href="./order.php?id={$pedido->id}">Pedido #{$pedido->id}
                    ({$pedido->time_placed})</a></li>
            {/foreach}
        </ul>

    </div>
    <div class="col-4">
        <div class="alert alert-secondary" role="alert">
            Pedidos en reparto
        </div>
        <ul class="list-group">
            {foreach from=$pedidosEnReparto item=pedido}
            <li class="list-group-item"><a href="./order.php?id={$pedido->id}">Pedido #{$pedido->id}
                    ({$pedido->time_placed})</a></li>
            {/foreach}
        </ul>
    </div>
    <div class="col-4">
        <div class="alert alert-secondary" role="alert">
            Pedidos confirmados
        </div>


        <ul class="list-group">
            {foreach from=$pedidosEntregados item=pedido}
            <li class="list-group-item"><a href="./order.php?id={$pedido->id}">Pedido #{$pedido->id}
                    ({$pedido->time_placed})</a></li>
            {/foreach}
        </ul>

    </div>
</div>
{include file="admin/footer.tpl"}