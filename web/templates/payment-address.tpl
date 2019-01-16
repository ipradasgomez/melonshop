{include file="header.tpl" title="Melon Shop" new=$new logoTitle="MelonShop" mostrarBarra=true
usuarioConectado=$usuarioConectado}
<div class="row">
  <div class="col-12">
    {include file="breadcrumb.tpl" step="2"}
  </div>
  <div class="col-8">
    <form action="#" method="POST">
      <h2>El pedido será enviado a esta direccion:</h2>
      <div class="form-group">
        <input type="text" class="form-control" id="direccion" placeholder="C/Direccion Super Aleatoria">
        <small class="form-text text-muted">Si desea modificarla, puedo hacerlo desde aquí.</small>
      </div>
      <button type="submit" class="btn btn-danger col-2" name="modificar">Modificar</button>
      <button type="submit" class="btn btn-primary col-2 offset-7" name="continuarDireccion">Continuar</button>
    </form>
  </div>
  <div class="col-4">
    <ul class="list-group">
      <li class="list-group-item">
        <h2><small>Pedido</small></h2>
      </li>
      <li class="list-group-item d-flex justify-content-between">
      <ul class="list-unstyled w-100">
      {foreach from=$productosEnCarrito item=producto name=bucleProductos}
      <li><div class="d-inline">{$producto[1]}{$producto[0]->unit_short} {$producto[0]->item_name|ucfirst}</div></li>
      {/foreach}
      </ul> 
      </li>
      <li class="list-group-item d-flex justify-content-between"><span>Total</span><span>{($precioCarro + (($precioCarro * 16) / 100))|string_format:"%.2f"} €</span> </li>
    </ul>
  </div>
</div>
{include file="footer.tpl"}