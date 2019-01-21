{include file="header.tpl" title="Melon Shop" new=$new logoTitle="MelonShop" mostrarBarra=false
usuarioConectado=false}
<div class="container">
    <div class="row">
        <div class="container login-container">
            <div class="row item-align-centre" id="loginform">
                <div class="col-md-6 login-form-2 offset-md-3">
                    <h3>Recupera tu contraseña</h3>
                    <form action="" method="post">
                    <div class="form-row">
                      {if isset($recovering)}
<div class="alert alert-success" role="alert">
  Se ha generado una nueva contraseña para tu cuenta, revisa tu bandeja de entrada y/o spam.
</div>
                        {/if}
                        <div class="form-group col-12 row">
                            <label for="exampleInputCodigo">Introduce tu nick o e-mail.</label>
                            <input type="email" class="form-control" id="exampleInputCodigo" aria-describedby="emailHelp" placeholder="E-mail" name="mail">
                        </div>
                        <div class="form-group col-12 row">
                             <a href="./login.php" class="btn btn-danger col-4">Volver</a><div class="col"></div> <button type="submit" name="recover" id="recover" class="btn btn-primary col-4">Recuperar</button>
                        </div>
                    </div>
                </form>
                </div>
            </div>
        </div>
    </div>
</div>
{include file="footer.tpl"}