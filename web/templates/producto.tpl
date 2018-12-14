<div class="col-12 col-md-4 col-lg-3 productbox d-flex flex-column">
    <img class="img-responsive img-fluid img-thumbnail product-img" src="../resources/gallery/images/{$producto->item_photo}">
    <div class="producttitle d-flex justify-content-between">
        <div><span>{$producto->item_name|ucfirst}</span></div>
        <div class="text-nowrap"><small>{$producto->price}€/{$producto->unit_short}</small></div>
    </div>
    <div class="componentes-box"><small><em> {$producto->description}</em></small></div>
    <div class="productprice d-flex justify-content-between">        
        <div class="form-group row">
            <div class="col-10">
              <input class="form-control" type="number" value="42" id="example-number-input">
            </div>
          </div>
        <div class="pull-right"><a href="#" class="btn btn-danger btn-sm addProduct" role="button">Añadir</a></div>
    </div>
</div>