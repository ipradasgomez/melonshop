{include file="header.tpl" title="Melon Shop" new=$new logoTitle="MelonShop" mostrarBarra=false usuarioConectado=false}

<div class="container">
    <div class="row">
        <div class="col-6 registro border">
            <h1 class="text-center">Registro</h1>
            <form>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">Email</label>
                        <input type="email" class="form-control" id="inputEmail4" placeholder="Email">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">Contraseña</label>
                        <input type="password" class="form-control" id="inputPassword4" placeholder="Password">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputAddress">Dirección</label>
                    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">Ciudad</label>
                        <input type="text" class="form-control" id="inputCity">
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Sign in</button>
            </form>
        </div>
        <div class="col-6 login border">
            <h1 class="text-center">Login</h1>
            <form>
                <div class="form-row">
                    <div class="form-group col-12">
                        <label for="exampleInputEmail1">Email :</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                            placeholder="Email">
                    </div>
                    <div class="form-group col-12">
                        <label for="exampleInputPassword1">Contraseña :</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Contraseña">
                    </div>
                    <button type="submit" class="btn btn-primary offset-5 col-2">Entrar</button>
                </div>
            </form>
        </div>
    </div>
</div>

{include file="footer.tpl"}