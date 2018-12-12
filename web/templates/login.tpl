{include file="header.tpl" title="Melon Shop" new=$new logoTitle="MelonShop" mostrarBarra=true usuarioConectado=$usuarioConectado}
<div class="container">
    <div class="row">
        <div class="col-12 col-md-6 registro order-2 order-md-1">
            <div class="contenedor border p-4">
                <h1 class="text-center col-12">Registro</h1>
                <form>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Nombre :</label>
                            <input type="text" class="form-control" id="inputNombre" placeholder="Nombre">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Apellidos :</label>
                            <input type="text" class="form-control" id="inputApellidos" placeholder="Apellidos">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputAddress">Nombre Usuario :</label>
                            <input type="text" class="form-control" id="inputNombreUsuario" placeholder="Nombre Usuario">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputAddress">Contraseña :</label>
                            <input type="password" class="form-control" id="inputContrasena" placeholder="Contraseña">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-12">
                            <label for="inputAddress">Dirección de Correo :</label>
                            <input type="email" class="form-control" id="inputCorreo" placeholder="email@ejemplo.com">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-12">
                            <label for="inputAddress">Dirección principal:</label>
                            <input type="text" class="form-control" id="inputDireccionPrincipal" placeholder="calle los naranjos nº 5">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputCity">Ciudad</label>
                            <input type="text" class="form-control" id="inputCiudad" placeholder="Málaga">
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary offset-4 offset-md-0 col-4">Registrar</button>
                </form>
            </div>
        </div>
        <div class="col-12 col-md-5 login order-1 order-md-2">
            <div class="contenedor border p-4">
                <h1 class="text-center">Login</h1>
                <form method="post" action="">
                    <div class="form-row">
                        <div class="form-group col-12">
                            <label for="exampleInputEmail1">Email :</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email" name="email">
                        </div>
                        <div class="form-group col-12">
                            <label for="exampleInputPassword1">Contraseña :</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Contraseña">
                        </div>
                    </div>
                    <button type="submit" name="login" id="login" class="btn btn-primary offset-4 offset-md-8 col-4 col-md-4">Entrar</button>
                </form>
            </div>
        </div>
    </div>
</div>
{include file="footer.tpl"}