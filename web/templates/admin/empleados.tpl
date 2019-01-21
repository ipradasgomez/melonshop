{include file="admin/header.tpl" title="Admin MelonShop" logoTitle="MelonShop Admin Panel" mostrarBarra=true
usuarioConectado=$usuarioConectado}
<div class="row">
    <div class="col">
        <div class="alert alert-secondary" role="alert">
            <span class="col">Empleados ( Activos ) :</span>
        </div>
        <div id="accordion">
            <div class="card">
            <!-- Cabecera de la card -->
                <div class="card-header" id="headingOne">
                    <h5 class="mb-0">
                        <button class="btn btn-link w-100" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true"
                            aria-controls="collapseOne">
                            <span class="float-left">Ismael Ponce Gaparros</span>
                            <span class="float-right">Codigo: #00001</span>
                        </button>
                    </h5>
                </div>
                <!-- Desplegable -->
                <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                    <div class="card-body cartEmpleado">
                        <div class="list-group">
                            <li href="#" class="list-group-item list-group-item-action flex-column align-items-start active">
                                <div class="d-flex w-100 justify-content-between">
                                    <h5 class="mb-1">Nombre:</h5>
                                </div>
                                <h4>Ismael Ponce Gaparros</h4>
                            </li>
                            <li href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                                <div class="d-flex w-100 justify-content-between">
                                    <h5 class="mb-1">Activo desde:</h5>
                                    <h5 class="text-muted">24 de Enero del 2017 (24/01/2017)</h4>
                                </div>
                            </li>
                            <li href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                                <div class="d-flex w-100 justify-content-between">
                                    <h5 class="mb-1">Ultimo pedido entregado:</h5>
                                    <h6 class="text-muted">Hace 1 dia.</h6>
                                </div>
                            </li>
                        </div>
                        <form class="row d-flex justify-content-around mt-3">
                            <button type="submit" name="modificar" class="btn btn-primary col-2" data-toggle="tooltip" data-placement="top" title="Enviar mensaje"><span class="oi oi-text"></span></button>
                            <button type="submit" name="modificar" class="btn btn-info col-2" data-toggle="tooltip" data-placement="top" title="Modificar perfil"><span class="oi oi-pencil"></span></button>
                            <button type="submit" name="modificar" class="btn btn-secondary col-2" data-toggle="tooltip" data-placement="top" title="Contactar"><span class="oi oi-phone"></span></button>
                            <button type="button" name="Borrar" class="btn btn-danger col-2" data-toggle="tooltip" data-placement="bottom" data-original-title="Dar de baja"><span class="oi oi-trash"></span></button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header" id="headingTwo">
                    <button class="btn btn-link w-100" data-toggle="collapse" data-target="#collapsetwo" aria-expanded="true"
                        aria-controls="collapseOne">
                        <span class="float-left">Daniel Fernández Blanco</span>
                        <span class="float-right">Codigo: #00002</span>
                    </button>
                </div>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                   <div class="card-body cartEmpleado">
                        <div class="list-group">
                            <li href="#" class="list-group-item list-group-item-action flex-column align-items-start active">
                                <div class="d-flex w-100 justify-content-between">
                                    <h5 class="mb-1">Nombre:</h5>
                                </div>
                                <h4>Daniel Fernández Blanco</h4>
                            </li>
                            <li href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                                <div class="d-flex w-100 justify-content-between">
                                    <h5 class="mb-1">Activo desde:</h5>
                                    <h5 class="text-muted">13 de Diciembre del 2018 (13/12/2018)</h4>
                                </div>
                            </li>
                            <li href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                                <div class="d-flex w-100 justify-content-between">
                                    <h5 class="mb-1">Ultimo pedido entregado:</h5>
                                    <h6 class="text-muted">Hace 3 horas.</h6>
                                </div>
                            </li>
                        </div>
                        <form class="row d-flex justify-content-around mt-3">
                            <button type="submit" name="modificar" class="btn btn-primary col-2" data-toggle="tooltip" data-placement="top" title="Enviar mensaje"><span class="oi oi-text"></span></button>
                            <button type="submit" name="modificar" class="btn btn-info col-2" data-toggle="tooltip" data-placement="top" title="Modificar perfil"><span class="oi oi-pencil"></span></button>
                            <button type="submit" name="modificar" class="btn btn-secondary col-2" data-toggle="tooltip" data-placement="top" title="Contactar"><span class="oi oi-phone"></span></button>
                            <button type="button" name="Borrar" class="btn btn-danger col-2" data-toggle="tooltip" data-placement="bottom" data-original-title="Dar de baja"><span class="oi oi-trash"></span></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="alert alert-secondary mt-3" role="alert">
            Empleados ( Baja ) :
        </div>
        <div id="accordion">
            <div class="card">
                <div class="card-header" id="headingOne">
                    <h5 class="mb-0">
                        <button class="btn btn-link w-100" data-toggle="collapse" data-target="#collapse3" aria-expanded="true"
                            aria-controls="collapse3">
                            <span class="float-left">Bruno Esteban Fernandez</span>
                            <span class="float-right">Codigo: #00003</span>
                        </button>
                    </h5>
                </div>
                <div id="collapse3" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                   <div class="card-body cartEmpleado">
                        <div class="list-group">
                            <li href="#" class="list-group-item list-group-item-action flex-column align-items-start active">
                                <div class="d-flex w-100 justify-content-between">
                                    <h5 class="mb-1">Nombre:</h5>
                                </div>
                                <h4>Bruno Esteban Fernandez</h4>
                            </li>
                            <li href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                                <div class="d-flex w-100 justify-content-between">
                                    <h5 class="mb-1">De Baja desde:</h5>
                                    <h5 class="text-muted">ayer (21/01/2019)</h4>
                                </div>
                            </li>
                        </div>
                        <form class="row d-flex justify-content-around mt-3">
                            <button type="submit" name="modificar" class="btn btn-primary col-2" data-toggle="tooltip" data-placement="top" title="Modificar perfil"><span class="oi oi-pencil"></span></button>
                            <button type="submit" name="modificar" class="btn btn-secondary col-2" data-toggle="tooltip" data-placement="top" title="Contactar"><span class="oi oi-phone"></span></button>
                            <button type="submit" name="modificar" class="btn btn-info col-2" data-toggle="tooltip" data-placement="top" title="Dar de alta"><span class="oi oi-person"></span></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-3">
            <form action="#" class="col-12">
                <button type="submit" name="modificar" class="btn btn-info col-3 offset-4 pt-3 pb-3" data-toggle="tooltip" data-placement="top" title="Dar de alta a un empleado nuevo"><span class="oi oi-plus"></span></button>
            </form>
        </div>
    </div>
</div>
{include file="admin/footer.tpl"}