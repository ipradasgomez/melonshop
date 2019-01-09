<div class="col-12 col-md-4 col-lg-3 productbox d-flex flex-column">
    <img class="img-responsive img-fluid img-thumbnail product-img" src="../resources/gallery/images/{$producto->item_photo}">
    <div class="producttitle d-flex justify-content-between">
        <div><span>{$producto->item_name|ucfirst}</span></div>
        <div class="text-nowrap"><small>{$producto->price}€/{$producto->unit_short}</small></div>
    </div>
    <div class="componentes-box"><small><em> {$producto->description}</em></small></div>
    <div class="cardSpacer"></div>
    <div class="productprice d-flex justify-content-between">
        <form action="#" method="post" style="height:20px">
            <div class="form-group row">
                <div class="col-8">
                    <input type="text" name="id" id="id" value="{$producto->id}" hidden>
                    <input type="text" name="nombre" id="nombre" value="{$producto->item_name}" hidden>
                    <input class="form-control" type="number" name="cant" min="0" value="1" id="example-number-input">
                </div>
                <div class="col-2">
                    <button type="submit" name="add" class="btn btn-danger btn-sm addProduct" role="button">Añadir</button>
                </div>
            </div>
        </form>
    </div>
</div>