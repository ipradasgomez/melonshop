{include file="admin/header.tpl" title="Admin MelonShop" logoTitle="MelonShop Admin Panel" mostrarBarra=true
usuarioConectado=$usuarioConectado}
<div class="row">
    <div class="col-3">
        <div class="alert alert-secondary" role="alert">
            Pendiente de envío
        </div>

        <ul class="list-group">
            <li class="list-group-item">Pedido #0000009</li>
            <li class="list-group-item">Pedido #0000010</li>
        </ul>

    </div>
    <div class="col-6">
        <div class="alert alert-secondary" role="alert">
            Pedidos con nuevos mensajes
        </div>
        <div id="accordion">
            <div class="card">
                <div class="card-header" id="headingOne">
                    <h5 class="mb-0">
                        <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true"
                            aria-controls="collapseOne">
                            Pedido #0000002
                        </button>
                    </h5>
                </div>

                <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                    <div class="card-body">
                        <div class="list-group">
                            <li href="#" class="list-group-item list-group-item-action flex-column align-items-start active">
                                <div class="d-flex w-100 justify-content-between">
                                    <h6 class="mb-1">Cliente</h6>
                                    <small>Hace 2 días</small>
                                </div>
                                <small>Si, ya ha llegado. Gracias de nuevo.</small>
                                <hr />
                                <small>Vale pues gracias por la información.</small>
                            </li>
                            <li href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                                <div class="d-flex w-100 justify-content-between">
                                    <h6 class="mb-1">Comercial</h6>
                                    <small class="text-muted">Hace 3 días</small>
                                </div>
                                <small class="text-muted">No realizan entregas los fines de semana. Espere al lunes y
                                    si no contáctenos de nuevo.</small>
                            </li>
                            <li href="#" class="list-group-item list-group-item-action flex-column align-items-start ">
                                <div class="d-flex w-100 justify-content-between">
                                    <h6 class="mb-1">Cliente</h6>
                                    <small>Hace 4 días</small>
                                </div>
                                <small>Buenas, el pedido pone que ya ha sido entregado pero aún estoy esperándolo...
                                    ¿Está todo bien?</small>
                            </li>
                        </div>
                        <form>
                            <div class="row">
                                <div class="col-10"><input class="form-control" type="text" placeholder="Escribe un mensaje..."></div>
                                <div class="col-2"><button type="button" data-toggle="tooltip" data-placement="bottom"
                                        data-original-title="Enviar mensaje" class="btn btn-primary mt-1"><span class="oi oi-comment-square"></span></button></div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header" id="headingTwo">
                    <h5 class="mb-0">
                        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo"
                            aria-expanded="false" aria-controls="collapseTwo">
                            Pedido #0000003
                        </button>
                    </h5>
                </div>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                    <div class="card-body">
                        <div class="list-group">
                            <li href="#" class="list-group-item list-group-item-action flex-column align-items-start active">
                                <div class="d-flex w-100 justify-content-between">
                                    <h6 class="mb-1">Cliente</h6>
                                    <small>Hace 30 minutos</small>
                                </div>
                                <small>¿Son frutas de temporada?</small>
                            </li>
                        </div>
                        <form>
                            <div class="row">
                                <div class="col-10"><input class="form-control" type="text" placeholder="Escribe un mensaje..."></div>
                                <div class="col-2"><button type="button" data-toggle="tooltip" data-placement="bottom"
                                        data-original-title="Enviar mensaje" class="btn btn-primary mt-1"><span class="oi oi-comment-square"></span></button></div>
                            </div>
                        </form>
                    </div>
                    
                </div>
            </div>
        </div>
        <div class="alert alert-secondary mt-3" role="alert">
            Últimos pedidos leídos
        </div>
        <div id="accordion">
            <div class="card">
                <div class="card-header" id="headingOne">
                    <h5 class="mb-0">
                        <button class="btn btn-link" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true"
                            aria-controls="collapseOne">
                            Pedido #0000007
                        </button>
                    </h5>
                </div>

                <div id="collapseThree" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                    <div class="card-body">
                        <div class="list-group">
                            <li href="#" class="list-group-item list-group-item-action flex-column align-items-start active">
                                <div class="d-flex w-100 justify-content-between">
                                    <h6 class="mb-1">Cliente</h6>
                                    <small>Hace 2 días</small>
                                </div>
                                <small>La dirección es la misma de entrega... espero su respuesta.</small>
                            </li>
                            <li href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                                <div class="d-flex w-100 justify-content-between">
                                    <h6 class="mb-1">Comercial</h6>
                                    <small class="text-muted">Hace 3 días</small>
                                </div>
                                <small class="text-muted">Envíenos su información y las recogeremos.</small>
                            </li>
                            <li href="#" class="list-group-item list-group-item-action flex-column align-items-start ">
                                <div class="d-flex w-100 justify-content-between">
                                    <h6 class="mb-1">Cliente</h6>
                                    <small>Hace 4 días</small>
                                </div>
                                <small>Las frutas me han llegado demasiado dañadas.</small>
                            </li>
                        </div>
                        <form>
                            <div class="row">
                                <div class="col-10"><input class="form-control" type="text" placeholder="Escribe un mensaje..."></div>
                                <div class="col-2"><button type="button" data-toggle="tooltip" data-placement="bottom"
                                        data-original-title="Enviar mensaje" class="btn btn-primary mt-1"><span class="oi oi-comment-square"></span></button></div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-3">
        <div class="alert alert-secondary" role="alert">
            Pedidos confirmados
        </div>


        <ul class="list-group">
            <li class="list-group-item">Pedido #0000011</li>
            <li class="list-group-item">Pedido #0000012</li>
        </ul>

    </div>
</div>
{include file="admin/footer.tpl"}