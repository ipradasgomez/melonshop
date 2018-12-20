{include file="header.tpl" title="Melon Shop" new=$new logoTitle="MelonShop" mostrarBarra=true usuarioConectado=$usuarioConectado}
<div class="container">
    <div class="row">
        <div class="container login-container">
            <div class="row" id="loginform">
                <div class="col-md-6 login-form-1">
                    
                    <h3>Registro</h3>
                    <form action="" method="post">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputEmail4">Nombre</label>
                                <input type="text" class="form-control" id="inputNombre" name="nombre" placeholder="Nombre">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputPassword4">Apellidos</label>
                                <input type="text" class="form-control" id="inputApellidos" name="apellidos" placeholder="Apellidos">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Genero</label>
                                <select class="custom-select" name="genero">
                                    <option value="m">Genero</option>
                                    <option value="m">Male</option>
                                    <option value="f">Female</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputAddress">Contraseña</label>
                                <input type="password" class="form-control" id="inputContrasena" name="clave" placeholder="Contraseña">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-12">
                                <label for="inputAddress">Dirección de Correo</label>
                                <input type="email" class="form-control" id="inputCorreo" name="email" placeholder="email@ejemplo.com">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-12">
                                <label for="inputAddress">Dirección principal</label>
                                <input type="text" class="form-control" id="inputDireccionPrincipal" name="direccion" placeholder="calle los naranjos nº 5">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputCity">Ciudad</label>
                                <input type="text" class="form-control" id="inputCiudad" name="ciudad" placeholder="Málaga">
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary offset-4 offset-md-0 col-4" id="registrar" name="registrar">Registrar</button>
                    </form>
                </div>
                <div class="col-md-6 login-form-2">
                    <div class="login-logo">
                        <img src="../resources/gallery/pinna.png" alt=""/>
                    </div>
                    <h3>Login</h3>
                    <form action="" method="post">
                    <div class="form-row">
                        <div class="form-group col-12">
                            <label for="exampleInputEmail1">Email :</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email" name="email" {if $email}value="{$email}"{/if}>
                        </div>
                        {if $falloEmail}
                            <div class="form-group col-12">
                                <p class="error">{$falloEmail}</p>
                            </div>
                        {/if}
                        <div class="form-group col-12">
                            <label for="exampleInputPassword1">Contraseña :</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Contraseña" name="clave">
                        </div>
                        {if $falloClave}
                            <div class="form-group col-12">
                                <p class="error">{$falloClave}</p>
                            </div>
                        {/if}
                        <div class="form-group col-12">
                            <button type="submit" name="login" id="login" class="btn btn-primary offset-4 offset-md-8 col-4 col-md-4">Entrar</button>
                        </div>
                    </div>
                </form>
                </div>
            </div>
        </div>
    </div>
</div>
{include file="footer.tpl"}