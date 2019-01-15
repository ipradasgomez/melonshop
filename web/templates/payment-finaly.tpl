{include file="header.tpl" title="Melon Shop" new=$new logoTitle="MelonShop" mostrarBarra=true
usuarioConectado=$usuarioConectado}
<div class="row">
  <div class="col-12">
    {include file="breadcrumb.tpl" step="6"}
  </div>
  <div class="col-8">
      <h2>Ehorabuena acaba de realizar un pedido.</h2>
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
  <div class="col-12">
        <a href="../web/index.php" class="btn btn-Danger col-2">Tienda</a>
        <a href="../web/orders.php" class="btn btn-info col-2 offset-4">Mis pedidos</a>
  </div>
</div>
{include file="footer.tpl"}