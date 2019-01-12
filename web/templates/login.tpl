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
                                    <label for="inputUsuario">Nombre de Usuario</label>
                                    <input type="text" class="form-control" id="inputUsuario" name="usuario" placeholder="Usuario">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputContrasena">Contraseña</label>
                                    <input type="password" class="form-control" id="inputContrasena" name="clave" placeholder="Contraseña">
                                </div>
                            </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputNombre">Nombre</label>
                                <input type="text" class="form-control" id="inputNombre" name="nombre" placeholder="Nombre">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputApellidos">Apellidos</label>
                                <input type="text" class="form-control" id="inputApellidos" name="apellidos" placeholder="Apellidos">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="selectGenero">Genero</label>
                                <select class="custom-select" id="selectGenero" name="genero">
                                    <option value="m">Genero</option>
                                    <option value="m">Male</option>
                                    <option value="f">Female</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="selectCiudad">Ciudad</label>
                                <select class="custom-select" id="selectCiudad" name="ciudad">
                                    {foreach from=$ciudades item=ciudad}
                                        <option value="{$ciudad->id}">{$ciudad->city_name} - {$ciudad->postal_code}</option>
                                    {/foreach}      
                                </select>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-12">
                                <label for="inputCorreo">Dirección de Correo</label>
                                <input type="email" class="form-control" id="inputCorreo" name="email" placeholder="email@ejemplo.com">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-12">
                                <label for="inputDireccionPrincipal">Dirección principal</label>
                                <input type="text" class="form-control" id="inputDireccionPrincipal" name="direccion" placeholder="calle los naranjos nº 5">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputTelefono">Telefono</label>
                                <input type="text" class="form-control" id="inputTelefono" name="telefono" placeholder=" Ejem: 697078461">
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary offset-4 offset-md-0 col-4" id="registrar" name="registrar">Registrar</button>
                    </form>
                    <div class="row">
                        <div class="alert alert-danger col-12" role="alert">
                        <strong>
                            <!-- Error de usuario en uso -->
                            {if $usuarioEnUso}
                                <p>{$usuarioEnUso}</p>
                            {/if}
                            <!-- Errores de campo no relleno -->
                            {if $faltaUsuario}
                                <p>{$faltaUsuario}</p>
                            {/if}
                            {if $faltaNombre}
                                <p>{$faltaNombre}</p>
                            {/if}
                            {if $faltaApellidos}
                                <p>{$faltaApellidos}</p>
                            {/if}
                           
                            {if $faltaClave}
                                <p>{$faltaClave}</p>
                            {/if}
                            {if $faltaEmail}
                                <p>{$faltaEmail}</p>
                            {/if}
                            {if $faltaDireccion}
                                <p>{$faltaDireccion}</p>
                            {/if}
                            </strong>
                        </div>
                    </div>
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
                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email" name="email" {if $email}value="{$email}"{/if}>
                        </div>
                        {if $falloEmail}
                            <div class="alert alert-danger col-12" role="alert">
                        <strong>{$falloEmail}</strong></div>
                        {/if}
                        <div class="form-group col-12">
                            <label for="exampleInputPassword1">Contraseña :</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Contraseña" name="clave">
                        </div>
                        {if $falloClave}
                            <div class="alert alert-danger col-12" role="alert">
                        <strong>{$falloClave}</strong></div>
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