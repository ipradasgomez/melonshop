<div class="col-12 col-md-4 col-lg-3 productbox d-flex flex-column">
    <form action="#" method="post">
        <img class="img-responsive img-fluid img-thumbnail product-img" src="../resources/gallery/images/{$producto->item_photo}">
        <div class="producttitle d-flex justify-content-between">
            <div><span>{$producto->item_name|ucfirst}</span></div>
            <div class="text-nowrap"><small>{$producto->price}€/{$producto->unit_short}</small></div>
        </div>
        <div class="componentes-box"><small><em> {$producto->description}</em></small></div>
        <div class="productprice d-flex justify-content-between">        
            <div class="form-group row">
                <div class="col-10">
                    <input type="text" name="id" id="id" value="{$producto->id}" hidden>
                    <input type="text" name="nombre" id="nombre" value="{$producto->item_name}" hidden>
                    <input class="form-control" type="number" name="cant" value="42" id="example-number-input">
                </div>
            </div>
            <div class="pull-right">
                <button type="submit" name="add" class="btn btn-danger btn-sm addProduct" role="button">Añadir</button>
            </div>
        </div>
    </form>
</div>