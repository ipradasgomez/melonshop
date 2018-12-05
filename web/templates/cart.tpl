{include file="header.tpl" title="Melon Shop" new=$new logoTitle="MelonShop" mostrarBarra=true
usuarioConectado=$usuarioConectado}
<div class="row">
  <div class="col-12">
      {include file="breadcrumb.tpl" step="1"}
  </div>
  <div class="col-8">
    <div class="table-responsive">
      <table class="table">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Producto</th>
            <th scope="col">Precio</th>
            <th scope="col">Cantidad</th>
            <th scope="col">Total</th>
            <th scope="col"></th>
            <th scope="col"></th>
          </tr>
        </thead>
        <tbody>
          {for $foo=1 to 15}
          <tr>
            <th scope="row">{$foo}</th>
            <td>Bananas</td>
            <td>1.21 €/kg</td>
            <td>5 (kg)</td>
            <td>6.05 €</td>
            <td><button type="button" class="btn btn-success"><span class="oi oi-plus"></span></button><button type="button"
                class="btn btn-warning"><span class="oi oi-minus"></span></button></td>
            <td><button type="button" class="btn btn-danger"><span class="oi oi-trash"></span></button></td>
          </tr>
          {/for}
        </tbody>
      </table>
    </div>
  </div>
  <div class="col-4 ">
    <ul class="list-group">
      <li class="list-group-item">
        <h2><small>Resumen</small></h2>
      </li>
      <li class="list-group-item d-flex justify-content-between"><span>Total artículos</span><span>7</span> </li>
      <li class="list-group-item d-flex justify-content-between"><span>Subtotal</span><span>13,35 €</span> </li>
      <li class="list-group-item d-flex justify-content-between"><span>Envío</span><span>3 €</span> </li>
      <li class="list-group-item d-flex justify-content-between"><span>Impuestos (IVA 16%)</span><span>2,54 €</span> </li>
      <li class="list-group-item d-flex justify-content-between"><span>Total</span><span>18,97 €</span> </li>
    </ul>
  </div>
</div>
{include file="footer.tpl"}