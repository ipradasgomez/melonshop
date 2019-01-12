{include file="header.tpl" title="Melon Shop" new=$new logoTitle="MelonShop" mostrarBarra=true
usuarioConectado=true}

<div class="row">
    <div class="alert alert-info col-12" role="alert">
        <strong>Pendientes</strong>
    </div>
    <div class="card col-12 p-0 mb-3">
        <div class="card-header">
            <div class="d-inline"><b>Pedido <em>#0000000000001</em></b></div>
            <div class="float-right d-inline">12/12/2019</div>
        </div>
        <div class="card-body">
            <div class="row">

                <div class="col-8">
                    <div class="card col-12">
                        <div class="card-body">
                            <h6 class="card-subtitle mb-2 text-muted">Elementos en el pedido</h6>
                            <ul>
                                <li>2 kg - Kiwis</li>
                                <li>1 Caja - Manzanas</li>
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
                                <li class="list-group-item">Total artículos: 2</li>
                                <li class="list-group-item">Precio total: 23,40€</li>
                                <li class="list-group-item">Fecha prevista entrega: Pendiente de envío</li>
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
    <div class="alert alert-success col-12 mt-3" role="alert">
        <strong>Finalizados</strong>
    </div>
    <div class="card col-12 p-0 mb-3">
        <div class="card-header">
            <div class="d-inline"><b>Pedido <em>#0000000000002</em></b></div>
            <div class="float-right d-inline">12/12/2019</div>
        </div>
        <div class="card-body">
            <div class="row">

                <div class="col-8">
                    <div class="card col-12">
                        <div class="card-body">
                            <h6 class="card-subtitle mb-2 text-muted">Elementos en el pedido</h6>
                            <ul>
                                <li>2 kg - Kiwis</li>
                                <li>1 Caja - Manzanas</li>
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
                                <li class="list-group-item">Total artículos: 2</li>
                                <li class="list-group-item">Precio total: 23,40€</li>
                                <li class="list-group-item">Entregado: 24/03/2050</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{include file="footer.tpl"}