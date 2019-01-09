{include file="header.tpl" title="Melon Shop" new=$new logoTitle="MelonShop" mostrarBarra=true
usuarioConectado=$usuarioConectado}
<div class="row">
  <div class="col-12">
    {include file="breadcrumb.tpl" step="3"}
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
        <tbody id="sortable">

          {foreach from=$carrito item=producto name=bucleProductos}
          <tr>
            <th scope="row">{$smarty.foreach.bucleProductos.index}</th>
            <td>{$producto[0]->item_name|ucfirst}</td>
            <td>{$producto[0]->price}€/{$producto[0]->unit_short}</td>
            <td>
              <form><input type="hidden" name="pid" value="pid"><input type="number" min="1" value="{$producto[1]}" class=" inputCant"
                  placeholder="Cantidad"></form> 
            </td>
            <td>{$producto[1] * $producto[0]->price} €</td>
            <td><button type="button" class="btn btn-info" data-toggle="tooltip"
              data-placement="top" title="Aplicar cambios"><span class="oi oi-pencil"></span></button></td>
            <td><button type="button" class="btn btn-danger" data-toggle="tooltip"
              data-placement="top" title="Eliminar del carrito"><span class="oi oi-trash"></span></button></td>
          </tr>
          {/foreach}
        </tbody>
      </table>
    </div>
  </div>
  <div class="col-4 ">
    <ul class="list-group">
      <li class="list-group-item">
        <h2><small>Resumen</small></h2>
      </li>
      <li class="list-group-item d-flex justify-content-between"><span>Total artículos</span><span>{$carrito|@count}</span> </li>
      <li class="list-group-item d-flex justify-content-between"><span>Subtotal</span><span>{} €</span> </li>
      <li class="list-group-item d-flex justify-content-between"><span>Envío</span><span>3 €</span> </li>
      <li class="list-group-item d-flex justify-content-between"><span>Impuestos (IVA 16%)</span><span>2,54 €</span>
      </li>
      <li class="list-group-item d-flex justify-content-between"><span>Total</span><span>18,97 €</span> </li>
    </ul>
  </div>
</div>
{include file="footer.tpl"}