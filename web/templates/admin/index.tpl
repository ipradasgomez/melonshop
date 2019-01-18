{include file="admin/header.tpl" title="Admin MelonShop" logoTitle="MelonShop Admin Panel" mostrarBarra=true
usuarioConectado=$usuarioConectado}
<div class="row">
    <div class="col-4">
        <div class="row">
            <div class="col-12">
                <a href="./orders.php" class="mt-2 d-flex flex-column ">
                    <div class="align-self-center btnAdmin"><span class="oi oi-basket iconoAdmin"></span></div> 
                   <div class="align-self-center"> <p>Pedidos</p></div>
                </a>
            </div>
        </div>
    </div>
    <div class="col-4">
        <div class="row">
            <div class="col-12">
                <a href="#" class="mt-2 d-flex flex-column">
                        <div class="align-self-center btnAdmin"><span class="oi oi-person iconoAdmin"></span></div>
                   <div class="align-self-center"> <p>Empleados</p></div>
                </a>
            </div>
        </div>
    </div>
    <div class="col-4">
        <div class="row">
            <div class="col-12">
                <a href="#" class="mt-2 d-flex flex-column">
                        <div class="align-self-center btnAdmin"><p class="oi oi-plus iconoAdmin"></p></div>
                    <div class="align-self-center"><p>Producto</p></div>
                </a>
            </div>
        </div>
    </div>
</div>
{include file="admin/footer.tpl"}