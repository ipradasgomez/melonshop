{include file="admin/header.tpl" title="Admin MelonShop" logoTitle="MelonShop Admin Panel" mostrarBarra=true usuarioConectado=$usuarioConectado}
<div class="container">
    <div class="row">
        <div class="container login-container">
            <div class="row item-align-centre" id="loginform">
                <div class="col-md-6 login-form-2 offset-md-3">
                    <h3>Login</h3>
                    <form action="" method="post">
                    <div class="form-row">
                        <div class="form-group col-12">
                            <label for="exampleInputCodigo">Codigo Empleado :</label>
                            <input type="number" class="form-control" id="exampleInputCodigo" aria-describedby="emailHelp" placeholder="Ejem: 1547" name="codigo" {if $codigo}value="{$codigo}"{/if}>
                        </div>
                        {if $falloCodigo}
                            <div class="form-group col-12">
                                <p class="error">{$falloCodigo}</p>
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
{include file="admin/footer.tpl"}