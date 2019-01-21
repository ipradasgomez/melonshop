{include file="header.tpl" title="Melon Shop" new=$new logoTitle="MelonShop" mostrarBarra=true
usuarioConectado=true}
<div class="row">
  <div class="col-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title"><b>Datos de Perfil</b></h5>
        <div class="row">
          <div class="form-group col-6">
            <label for="nombreCliente">Nombre</label>
            <input type="text" class="form-control" id="nombreCliente" placeholder="Escribe tu nombre">
          </div>
          <div class="form-group col-6">
            <label for="nombreCliente">Apellidos</label>
            <input type="text" class="form-control" id="nombreCliente" placeholder="Escribe tus apellidos">
          </div>
        </div>
        <h5 class="card-title"><b>Dirección de residencia</b></h5>
        <div class="row">
          <div class="form-group col-12">
            <div class="input-group mb-3">
              <div class="input-group-prepend">
                <label class="input-group-text" for="selectCiudadEntrega">Ciudad</label>
              </div>
              <select class="custom-select" id="selectCiudadEntrega">
                {foreach from=$ciudades item=ciudad}
                <option value="{$ciudad->id}">{$ciudad->city_name} - {$ciudad->postal_code}</option>
                {/foreach}
              </select>
            </div>

            <input type="text" class="form-control" id="nombreCliente" placeholder="Dirección">
          </div>

        </div>

        <a href="#" class="btn btn-primary float-right">Guardar cambios</a>
      </div>
    </div>
    <div class="card">
      <div class="card-body">
        <h5 class="card-title"><b>Dirección de entrega</b></h5>
        <div class="row">
          <div class="form-group col-12">
            <div class="input-group mb-3">
              <div class="input-group-prepend">
                <label class="input-group-text" for="selectCiudadEntrega">Ciudad</label>
              </div>
              <select class="custom-select" id="selectCiudadEntrega">
                {foreach from=$ciudades item=ciudad}
                <option value="{$ciudad->id}">{$ciudad->city_name} - {$ciudad->postal_code}</option>
                {/foreach}
              </select>
            </div>

            <input type="text" class="form-control" id="nombreCliente" placeholder="Dirección">
          </div>

        </div>
        <a href="#" class="btn btn-primary float-right">Guardar cambios</a>
      </div>
    </div>
  </div>
  <div class="col-6">

    <div class="card">
      <div class="card-body">
        <h5 class="card-title"><b>Contraseña</b></h5>
        <div class="row">
          <div class="form-group col-12">
            <label for="telefono">Introduce tu contraseña actual</label>
            <input type="password" class="form-control" id="oldpassword" placeholder="*****">
          </div>
          <div class="form-group col-6">
            <label for="nombreCliente">Introduce tu contraseña nueva</label>
            <input type="password" class="form-control" id="newpass" placeholder="******">
          </div>
          <div class="form-group col-6">
            <label for="nombreCliente">Repite la nueva contraseña</label>
            <input type="password" class="form-control" id="newpassrepeat" placeholder="******">
          </div>
        </div>
        <a href="#" class="btn btn-primary float-right">Guardar cambios</a>
      </div>
    </div>

    <div class="card mt-2">
      <div class="card-body">
        <h5 class="card-title"><b>Contacto</b></h5>
        <div class="row">
          <div class="form-group col-6">
            <label for="telefono">Teléfono</label>
            <input type="text" class="form-control" id="telefono" placeholder="Teléfono">
          </div>
          <div class="form-group col-6">
            <label for="nombreCliente">E-mail</label>
            <input type="text" class="form-control" id="nombreCliente" placeholder="Escribe tus apellidos">
            <small>Recuerda que este e-mail será necesario para conectarte</small>
          </div>
        </div>
        <a href="#" class="btn btn-primary float-right">Guardar cambios</a>
      </div>
    </div>
  </div>
</div>

{include file="footer.tpl"}