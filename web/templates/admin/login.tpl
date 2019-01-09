{include file="admin/header.tpl" title="Melon Shop" new=$new logoTitle="MelonShop" mostrarBarra=true usuarioConectado=$usuarioConectado}
<div class="container">
    <div class="row">
        <div class="container login-container">
            <div class="row item-align-centre" id="loginform">
                <div class="col-md-6 login-form-2 offset-md-3">
                    <h3>Login</h3>
                    <form action="" method="post">
                    <div class="form-row">
                        <div class="form-group col-12">
                            <label for="exampleInputEmail1">Email :</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email" name="email" {if $email}value="{$email}"{/if}>
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
{include file="admin/footer.tpl"}