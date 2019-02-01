{include file="header.tpl" title="Melon Shop" new=$new logoTitle="MelonShop" mostrarBarra=true
usuarioConectado=true}

<div class="row">
    <div class="alert alert-info col-12" role="alert">
        <strong>Pendientes</strong>
    </div>
    {foreach $pedidosPendientes as $pedido}
    <div class="card col-12 p-0 mb-3">
        <div class="card-header">
            <div class="d-inline"><b>Pedido <em>#{$pedido->id}</em></b></div>
            <div class="float-right d-inline">{$pedido->time_placed}</div>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-8">
                    <div class="card col-12">
                        <div class="card-body">
                            <h6 class="card-subtitle mb-2 text-muted">Elementos en el pedido</h6>
                            <ul>
                                 {foreach $itemsPedidosDelUsuario[$pedido->id] as $elemento}
                                <li>{$elemento->item_name|ucfirst}</li>
                                {/foreach}
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="row">
                        <div class="card col-12 p-0">
                            <div class="card-header">
                                Información del pedido
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">Total artículos: {$itemsPedidosDelUsuario[$pedido->id]|count}</li>
                                <li class="list-group-item">Precio total: 23,40€</li>
                               <!--<li class="list-group-item">Fecha prevista entrega: Pendiente de envío</li>--> 
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <ul class="list-group list-group-flush">
            <li class="list-group-item text-right"><b>Estado:</b> Procesando</li>
        </ul>
    </div>
    {/foreach}
    
    <div class="alert alert-warning col-12 mt-3" role="alert">
        <strong>En proceso</strong>
    </div>
    {foreach $pedidosEnProceso as $pedido}
    <div class="card col-12 p-0 mb-3">
        <div class="card-header">
            <div class="d-inline"><b>Pedido <em>#{$pedido->id}</em></b></div>
            <div class="float-right d-inline">{$pedido->time_placed}</div>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-8">
                    <div class="card col-12">
                        <div class="card-body">
                            <h6 class="card-subtitle mb-2 text-muted">Elementos en el pedido</h6>
                            <ul>
                                 {foreach $itemsPedidosDelUsuario[$pedido->id] as $elemento}
                                <li>{$elemento->item_name|ucfirst}</li>
                                {/foreach}
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="row">
                        <div class="card col-12 p-0">
                            <div class="card-header">
                                Información del pedido
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">Total artículos: {$itemsPedidosDelUsuario[$pedido->id]|count}</li>
                                <li class="list-group-item">Precio total: 23,40€</li>
                               <!--<li class="list-group-item">Fecha prevista entrega: Pendiente de envío</li>--> 
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <ul class="list-group list-group-flush">
            <li class="list-group-item text-right"><b>Estado:</b> Procesando</li>
        </ul>
    </div>
    {/foreach}

    <div class="alert alert-success col-12 mt-3" role="alert">
            <strong>Entregados</strong>
        </div>
        {foreach $pedidosEntregados as $pedido}
        <div class="card col-12 p-0 mb-3">
            <div class="card-header">
                <div class="d-inline"><b>Pedido <em>#{$pedido->id}</em></b></div>
                <div class="float-right d-inline">{$pedido->time_placed}</div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-8">
                        <div class="card col-12">
                            <div class="card-body">
                                <h6 class="card-subtitle mb-2 text-muted">Elementos en el pedido</h6>
                                <ul>
                                     {foreach $itemsPedidosDelUsuario[$pedido->id] as $elemento}
                                    <li>{$elemento->item_name|ucfirst}</li>
                                    {/foreach}
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="row">
                            <div class="card col-12 p-0">
                                <div class="card-header">
                                    Información del pedido
                                </div>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">Total artículos: {$itemsPedidosDelUsuario[$pedido->id]|count}</li>
                                    <li class="list-group-item">Precio total: 23,40€</li>
                                   <!--<li class="list-group-item">Fecha prevista entrega: Pendiente de envío</li>--> 
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item text-right"><b>Estado:</b> Procesando</li>
            </ul>
        </div>
        {/foreach}
</div>
{include file="footer.tpl"}