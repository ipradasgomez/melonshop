{include file="admin/header.tpl" title="Admin MelonShop" logoTitle="MelonShop Admin Panel" mostrarBarra=true
usuarioConectado=$usuarioConectado}
<div class="row">
            <div class="col-4">
                    <div class="list-group" id="list-tab" role="tablist">
                      <a class="list-group-item list-group-item-action active" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">Resumen</a>
                      <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile">Productos</a>
                      <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="#list-messages" role="tab" aria-controls="messages">Mensajes</a>
                    </div>
                  </div>
                  <div class="col-8">
                    <div class="tab-content" id="nav-tabContent">
                      <div class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list">
                        <div class="card col-12 p-0 mb-3">
                          <div class="card-header">
                              <div class="d-inline"><b>Información del pedido <em>{$smarty.get.id}</em></b></div>
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
                          <div class="container row ml-1"><button type="button" class="btn btn-success col-12">Enviar</button></div>
                      </div>
                      </div>
                      <div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">
                        {foreach from=$items item=producto}
                        {$producto->quantity}{$producto->unit_short} - {$producto->item_name|ucfirst}<br/>
                        {/foreach}

                      </div>
                      <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">
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
                  </div>
   
</div>
{include file="admin/footer.tpl"}