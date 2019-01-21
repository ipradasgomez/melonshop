{include file="admin/header.tpl" title="Admin MelonShop" logoTitle="MelonShop Admin Panel" mostrarBarra=true
usuarioConectado=$usuarioConectado}
<div class="row">
        <a href="./orders.php" class="col-6 col-md-4">
            <div class="btnAdmin ml-5 d-flex flex-column justify-content-center">
                <span class="oi oi-basket iconoAdmin align-self-center"></span></br>
                <span class="textBtnAdmin1 align-self-center">Pedidos</span>
            </div>
        </a>
        <a href="./empleados.php" class="col-6 col-md-4">
            <div class="btnAdmin ml-5 d-flex flex-column justify-content-center">
                <span class="oi oi-person iconoAdmin align-self-center "></span></br>
                <span class="textBtnAdmin2 align-self-center">Empleados</span>
            </div>
        </a>
        <a href="#" class="col-6 col-md-4">
            <div class="btnAdmin ml-5 d-flex flex-column justify-content-center">
                <span class="oi oi-plus iconoAdmin align-self-center"></span></br>
                <span class="textBtnAdmin3 align-self-center">Producto</span>
            </div>
        </a>
</div>
{include file="admin/footer.tpl"}