<div class="card">
    <img class="card-img-top" src="../resources/gallery/images/{$producto[3]}" alt="Card image cap" data-toggle="tooltip"
        data-placement="top" title="{$producto[4]}">
    <div class="card-body">
        <div class="card-title">
            {$producto[1]}<br></br> <small><b>{$producto[2]}€/{$producto[5]}</b></small>
        </div>
        <div class="info">
            <input type="number" name="cantidad" min="1" value="1" class="col-7 inputCant" placeholder="Cantidad">
            <button type="button" class="btn btn-secondary col-4" data-toggle="tooltip"
            data-placement="top" title="Añadir al carrito"><span class="oi oi-cart"></button>
        </div>
    </div>
</div>