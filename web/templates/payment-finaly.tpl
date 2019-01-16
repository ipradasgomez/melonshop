{include file="header.tpl" title="Melon Shop" new=$new logoTitle="MelonShop" mostrarBarra=true
usuarioConectado=$usuarioConectado}
<div class="row">
  <div class="col-12">
    {include file="breadcrumb.tpl" step="6"}
  </div>
  <div class="col-8 container pr-1">
    <h2 class="col-11 offset-1">Enhorabuena acaba de realizar un pedido.</h2>
    <ul class="list-group">
      <li class="list-group-item">
        <h2><small>Resumen</small></h2>
      </li>
      <li class="list-group-item d-flex justify-content-between"><span>Total artículos</span><span>{$productosEnCarrito|@count}</span></li>
      <li class="list-group-item d-flex justify-content-between"><span>Listado del pedido :</span></li>
      
        <li class="list-group-item d-flex justify-content-between row listaFinal">
        {foreach from=$productosEnCarrito item=producto name=bucleProductos}
        <span class="col-4"> {$producto[1]} {$producto[0]->unit_short} {$producto[0]->item_name|ucfirst}</span>
        {/foreach}
        </li>
      
      <li class="list-group-item d-flex justify-content-between"><span>Total</span><span>{($precioCarro + ((($precioCarro+$gastoEnvio) * 16) / 100) + $gastoEnvio)|string_format:"%.2f"} €</span> </li>
    </ul>
  </div>
  <div class="col-12 mt-3 container offset-2">
        <a href="../web/index.php" class="btn btn-Danger col-2">Tienda</a>
        <a href="../web/orders.php" class="btn btn-info col-2 offset-4">Mis pedidos</a>
  </div>
</div>
{include file="footer.tpl"}