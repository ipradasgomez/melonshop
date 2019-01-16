{include file="admin/header.tpl" title="Admin MelonShop" logoTitle="MelonShop Admin Panel" mostrarBarra=true usuarioConectado=$usuarioConectado}
<div class="row">
        <div class="col-1"></div>
        <a href="./orders.php" class="col-4 border btnAdmin m-3 mt-2">
            <span class="oi oi-basket iconoAdmin1"></span></br>
            <span class="textBtnAdmin1">Pedidos</span>
        </a>
        <a href="#" class="col-4 border btnAdmin m-3 ml-5 mt-2">
            <span class="oi oi-person iconoAdmin2"></span></br>
            <span class="textBtnAdmin2">Empleados</span>
        </a>
        <div class="col-1"></div>
        <div class="col-1"></div>
        <a href="#" class="col-4 border btnAdmin m-3 mt-2">
            <span class="oi oi-plus iconoAdmin3"></span></br>
            <span class="textBtnAdmin3">Producto</span>
        </a>
        <a href="#" class="col-4 border btnAdmin m-3 ml-5 mt-2">
            <span class="oi oi-bolt iconoAdmin4"></span></br>
        </a>
</div>
{include file="admin/footer.tpl"}