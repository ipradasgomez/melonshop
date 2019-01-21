{include file="header.tpl" title="Melon Shop" new=$new logoTitle="MelonShop" mostrarBarra=true
usuarioConectado=$usuarioConectado}
<div class="container">
    <div class="row">
        <div class="container login-container">
            <div class="row" id="loginform">
                {if isset($registrado)}
<div class="col-12">
        <div class="alert alert-success col-12 text-center" role="alert">

                <strong>Usuario creado correctamente</strong>
            </div>  
</div>
                {/if}
                <div class="col-md-6 login-form-1">
                    <h3>Registro</h3>
                    <form action="" method="post">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputUsuario">Nombre de Usuario</label>
                                <input type="text" class="form-control" id="inputUsuario" name="usuario" placeholder="Usuario">
                                {if isset($faltaUsuario)}
                                <div class="alert alert-danger col-12" role="alert">

                                    <strong>Escribe un nombre de usuario</strong>
                                </div>
                                {/if}
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputContrasena">Contraseña</label>
                                <input type="password" class="form-control" id="inputContrasena" name="clave"
                                    placeholder="Contraseña">
                                {if isset($faltaClave)}
                                <div class="alert alert-danger col-12" role="alert">

                                    <strong>Escribe tu clave</strong>
                                </div>
                                {/if}
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputNombre">Nombre</label>
                                <input type="text" class="form-control" id="inputNombre" name="nombre" placeholder="Nombre">

                                {if isset($faltaNombre)}
                                <div class="alert alert-danger col-12" role="alert">

                                    <strong>Escribe tu nombre</strong>
                                </div>
                                {/if}
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputApellidos">Apellidos</label>
                                <input type="text" class="form-control" id="inputApellidos" name="apellidos"
                                    placeholder="Apellidos">
                                {if isset($faltaApellidos)}
                                <div class="alert alert-danger col-12" role="alert">

                                    <strong>Escribe tus apellidos</strong>
                                </div>
                                {/if}
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="selectGenero">Genero</label>
                                <select class="custom-select" id="selectGenero" name="genero">
                                    <option value="m">Masculino</option>
                                    <option value="f">Femenino</option>
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
                                {if isset($faltaEmail)}
                                <div class="alert alert-danger col-12" role="alert">
                                    <strong>Escribe tu e-mail</strong>
                                </div>
                                {/if}
                                {if isset($usuarioEnUso)}
                                <div class="alert alert-danger col-12" role="alert">

                                    <strong>El e-mail ya se encuentra en uso</strong>
                                </div>
                                {/if}
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-12">
                                <label for="inputDireccionPrincipal">Dirección principal</label>
                                <input type="text" class="form-control" id="inputDireccionPrincipal" name="direccion"
                                    placeholder="calle los naranjos nº 5">
                                {if isset($faltadireccion)}
                                <div class="alert alert-danger col-12" role="alert">

                                    <strong>Escribe tu direcicón</strong>
                                </div>
                                {/if}
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
                </div>
                <div class="col-md-6 login-form-2">
                    <div class="login-logo">
                        <img src="../resources/gallery/pinna.png" alt="" />
                    </div>
                    <h3>Login</h3>
                    <form action="" method="post">
                        <div class="form-row">
                            <div class="form-group col-12">
                                <label for="exampleInputEmail1">Email :</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                                    placeholder="Email" name="email" {if $email}value="{$email}" {/if}> </div> {if
                                    isset($falloEmail)} <div class="alert alert-danger col-12" role="alert">

                                <p><strong>E-mail incorrecto</strong></p>
                            </div>
                            {/if}
                            <div class="form-group col-12">
                                <label for="exampleInputPassword1">Contraseña :</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Contraseña"
                                    name="clave">
                            </div>
                            {if isset($falloClave)}
                            <div class="alert alert-danger col-12" role="alert">
                                <p><strong>Clave incorrecta</strong></p>
                            </div>
                            {/if}
                            <div class="col-12">
                            <a href="./recovery.php"><small>¿Has olvidado tu contraseña?</small></a>
                            </div>
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