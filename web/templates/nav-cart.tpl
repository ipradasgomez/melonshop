{assign var="total" value=0}
<div class="dropdown-menu dropdown-menu-right" aria-labelledby="nav-cart">
<table class="table table-sm borderless" style="cursor:pointer">
{if $productosEnCarrito|@count >0}
{foreach from=$productosEnCarrito item=producto}
       <tr>
           <td><b>{$producto[1]}</b><small><b>{$producto[0]->unit_short}</b></small></td>
           <td><b>{$producto[0]->item_name|capitalize}</b></td>
           <td><small>({$producto[0]->price}/{$producto[0]->unit_short})</small></td>
           <td><b>{$producto[0]->price * $producto[1]}€</b></td>
           {assign var="total" value=$total+$producto[0]->price * $producto[1]}
        </tr>
  {/foreach}
  <tr><td colspan="4" class="text-right" style="font-variant:small-caps"><small><b>Total: {$total} €</b></small></td></tr>
  <tr><td colspan="4"><a href="./cart.php" class="btn btn-info col-12">Ir al carrito</a></td></tr>
  {else}
<tr><td colspan="4" class="text-center"style="font-variant:small-caps"><small><b>Carrito vacio</b></small></td></tr>
  
  {/if}
  </table>
</div>