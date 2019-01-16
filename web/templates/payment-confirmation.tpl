{include file="header.tpl" title="Melon Shop" new=$new logoTitle="MelonShop" mostrarBarra=true
usuarioConectado=$usuarioConectado}
<div class="row">
  <div class="col-12">
    {include file="breadcrumb.tpl" step="4"}
  </div>
  <div class="col-8 container pr-1 mb-2">
    <h2 class="col-11 offset-3">Resumen del Pedido</h2>
    <ul class="list-group">
      <li class="list-group-item">
        <h2><small>Resumen</small></h2>
      </li>
      <li class="list-group-item d-flex justify-content-between"><span>Total artículos</span><span>{$productosEnCarrito|@count}</span></li>
      <li class="list-group-item d-flex justify-content-between"><span>Subtotal</span><span>{$precioCarro} €</span> </li>
      <li class="list-group-item d-flex justify-content-between"><span>Envío</span><span>{$gastoEnvio} €</span> </li>
      <li class="list-group-item d-flex justify-content-between"><span>Impuestos (IVA 16%)</span><span>{((($precioCarro+$gastoEnvio) * 16) / 100)|string_format:"%.2f"} €</span></li>
      <li class="list-group-item d-flex justify-content-between"><span>Total</span><span>{($precioCarro + ((($precioCarro+$gastoEnvio) * 16) / 100) + $gastoEnvio)|string_format:"%.2f"} €</span> </li>
    </ul>
  </div>
  <div class="col-12 container offset-2">
    <form action="#" method="POST">
        <button type="submit" class="btn btn-Danger col-2" name="atrasPago">Atras</button>
        <button type="submit" class="btn btn-info col-2 offset-4" name="continuarFinal">Confirmar</button>
      </form>
  </div>
</div> 
{include file="footer.tpl"}