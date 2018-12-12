<ul class="breadcrumb col-12 d-flex">
    <li class="{if $step gt "1"}completed{/if}{if $step eq "1"}active{/if} flex-fill" ><div class="col-12">Carrito</div></li>
    <li class="{if $step gt "2"}completed{/if}{if $step eq "2"}active{/if} flex-fill"><div class="col-12">Entrega</div></li>
    <li class="{if $step gt "3"}completed{/if}{if $step eq "3"}active{/if} flex-fill"> <div class="col-12">Pago</div></li>
    <li class="{if $step gt "4"}completed{/if}{if $step eq "4"}active{/if} flex-fill"><div class="col-12">Confirmación envío</div></li>
    <li class="{if $step gt "5"}completed{/if}{if $step eq "5"}active{/if} flex-fill"><div class="col-12">Terminado</div></li>
</ul>