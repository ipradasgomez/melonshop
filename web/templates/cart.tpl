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
            <th scope="row">{$smarty.foreach.bucleProductos.index + 1}</th>
            <td>{$producto[0]->item_name|ucfirst}</td>
            <td>{$producto[0]->price}€/{$producto[0]->unit_short}</td>
            <td>
              <form action="#" method="POST"><input type="hidden" name="pid" value="pid"><input type="number" min="1" name="cant" value="{$producto[1]}" class=" inputCant" placeholder="Cantidad">
            </td>
            <td>{$producto[1] * $producto[0]->price} €</td>
            <td>
              <input type="text" name="id" id="id" value="{$producto[0]->id}" hidden>
              <button type="submit" name="modificar" class="btn btn-info" data-toggle="tooltip" data-placement="top" title="Aplicar cambios"><span class="oi oi-pencil"></span></button>
            </td>
              </form> 
            <td>
              <form action="#" method="post">
                <input type="text" name="id" id="id" value="{$producto[0]->id}" hidden>
                <button type="submit" name="eliminar" class="btn btn-danger" data-toggle="tooltip"
                data-placement="top" title="Eliminar del carrito"><span class="oi oi-trash"></span></button>
              </form>
            </td>
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
      <li class="list-group-item d-flex justify-content-between"><span>Subtotal</span><span>{$carro->precioTotal()} €</span> </li>
      <li class="list-group-item d-flex justify-content-between"><span>Envío</span><span>{$gastoEnvio} €</span> </li>
      <li class="list-group-item d-flex justify-content-between"><span>Impuestos (IVA 16%)</span><span>{(($carro->precioTotal() * 16) / 100)|string_format:"%.2f"} €</span>
      </li>
      <li class="list-group-item d-flex justify-content-between"><span>Total</span><span>{($carro->precioTotal() + (($carro->precioTotal() * 16) / 100) + $gastoEnvio)|string_format:"%.2f"} €</span> </li>
    </ul>

    <!-- Botones -->
    <div class="row">
      <form action="#" method="POST" class="col-6">
        <button type="submit" name="vaciar" class="btn btn-danger" data-toggle="tooltip"
        data-placement="top" title="Vaciar carrito"><span class="oi oi-trash"></span></button>
      </form>
      <form action="#" method="POST" class="col-6">
        <button type="submit" name="finalizar" class="btn btn-info" data-toggle="tooltip"
        data-placement="top" title="Finalizar Compra"><span class="oi oi-cart"></span></button>
      </form>
    </div>

  </div>
</div>
{include file="footer.tpl"}