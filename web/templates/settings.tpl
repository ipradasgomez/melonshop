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
        <a href="#" class="btn btn-primary float-right">Guardar cambios</a>
      </div>
    </div>

  </div>
  <div class="col-6">

    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Direcciones</h5>


        <div class="input-group mb-3">
          <div class="input-group-prepend">
            <label class="input-group-text" for="selectCiudad">Ciudad</label>
          </div>
          <select class="custom-select" id="selectCiudad">
            <option selected>Choose...</option>
            <option value="1">One</option>
            <option value="2">Two</option>
            <option value="3">Three</option>
          </select>
        </div>
        <a href="#" class="btn btn-primary float-right">Guardar cambios</a>
      </div>
    </div>
    <div class="card mt-2">
      <div class="card-body">
        <h5 class="card-title">Contacto</h5>
        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
          content.</p>
        <a href="#" class="btn btn-primary float-right">Guardar cambios</a>
      </div>
    </div>
  </div>
</div>

{include file="footer.tpl"}