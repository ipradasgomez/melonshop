{include file="header.tpl" title="Melon Shop" new=$new logoTitle="MelonShop"}
    <div class="row">
        <div class="card-columns">
            {for $foo=1 to 15}
                <div class="card">
                    <img class="card-img-top" src="../resources/gallery/bananas.jpg" alt="Card image cap" data-toggle="tooltip"
                         data-placement="top" title="Bananas criadas en criaderos submarinos y en cautividad.">
                    <div class="card-body">
                        <div class="card-title">
                           Banana super larga</br> <small><b>2,65€/kg</b></small>
                        </div>
                        <div class="info">
                            <input type="number" min="1" value="1" class="col-7 inputCant" placeholder="Cantidad"
                                   aria-label="Input group example" aria-describedby="btnGroupAddon">
                            <button type="button" class="btn btn-secondary col-4"><span class="oi oi-cart"></button>
                        </div>
                    </div>
                </div>
                {/for}
        </div>
    </div>
{include file="footer.tpl"}
