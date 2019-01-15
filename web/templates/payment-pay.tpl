{include file="header.tpl" title="Melon Shop" new=$new logoTitle="MelonShop" mostrarBarra=true
usuarioConectado=$usuarioConectado}
<div class="row">
  <div class="col-12">
    {include file="breadcrumb.tpl" step="3"}
  </div>
  <div class="col-8">
      <h2>Para pagar</h2>
      <div class="alert alert-dark" role="alert">
        Especifica como te gustaría realizar el pago
      </div>
      <form action="#" method="POST">
        <div class="row">
          <div class="col-4">
              <label for="tarjeta">Tipo de Tarjeta :</label>  
          </div>
          <div class="col-2">
            <input class="form-check-input" type="checkbox" name="tarjeta" value="Visa" id="defaultCheck1">
            <img src="../resources/gallery/Visa.png" alt="" class="imgCreditCard">
          </div>
          <div class="col-2">
            <input class="form-check-input" type="checkbox" name="tarjeta" value="Mastercard" id="defaultCheck2">
            <img src="../resources/gallery/Mastercard.png" alt="" class="imgCreditCard">
          </div>
          <div class="col-2">
            <input class="form-check-input" type="checkbox" name="tarjeta" value="AmericanExpress" id="defaultCheck3">
            <img src="../resources/gallery/AmericanExpres.png" alt="" class="imgCreditCard">
          </div>
          <div class="col-6">
            <label for="tarjeta">Numero Tarjeta :</label>
          </div>
          <div class="col-6">
            <input type="number" class="form-control" placeholder="1234 5678 9012 3456" id="tarjeta">
          </div>
          <div class="col-6">
            <label for="cvv">CCV :</label>
          </div>
          <div class="col-6">
            <input type="number" class="form-control" placeholder="123" id="cvv">
          </div>
        </div>
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
  <div class="col-12">
    <form action="#" method="POST">
        <button type="submit" class="btn btn-Danger col-2" name="atras">Atras</button>
        <button type="submit" class="btn btn-info col-2 offset-4" name="continuar">Continuar</button>
      </form>
  </div>
</div>
{include file="footer.tpl"}