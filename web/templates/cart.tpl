{include file="header.tpl" title="Melon Shop" new=$new logoTitle="MelonShop" mostrarBarra=true usuarioConectado=$usuarioConectado}
    <div class="row">
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
                        <tr>
                          <th scope="row">1</th>
                          <td>Bananas</td>
                          <td>1.21 €/kg</td>
                          <td>5 kg</td>
                          <td>6.05</td>
                          <td><button type="button" class="btn btn-success"><span class="oi oi-plus"></span></button><button type="button" class="btn btn-warning"><span class="oi oi-minus"></span></button></td>
                          <td><button type="button" class="btn btn-danger"><span class="oi oi-trash"></span></button></td>
                        </tr>
                        
                      </tbody>
                </table>
              </div>
        </div>
        <div class="col-4"></div>
    </div>
{include file="footer.tpl"}
