
<nav class="container-fluid sticky-top data">
     <div class="row brand-row align-self-center sticky-top">
        <div class="col-4 offset-1">
            <a class="navbar-brand sticky-top" href="#">
                <img src="./gallery/watermelon.png" class="align-middle d-inline-block align-top logo-img" alt="">
                <h1 class="align-middle brand-text">MelonShop</h1>
            </a>
        </div>
        <div class="col-7 d-flex justify-content-end">
            <div class="btn-group btn-topmenu" role="group" aria-label="Menu Bar">
			<input type="text" class="form-control inputCant" placeholder="Buscar" >
			<button type="button" class="btn btn-light btnNav"><span class="oi oi-magnifying-glass"></span></button>
                <button type="button" class="btn btn-light btnNav"><span class="oi oi-person"></span></button>
                <button type="button" class="btn btn-light notificationBadge btnNav" data-badge="2"><span class="oi oi-basket"></span></button>                
                <div class="btn-group" role="group">
                    <button id="profileMenu" type="button" class="btn btn-light dropdown-toggle btnNav"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Dropdown
                    </button>
                    <div class="dropdown-menu btnNav" aria-labelledby="profileMenu">
                        <a class="dropdown-item" href="#">Dropdown link</a>
                        <a class="dropdown-item" href="#">Dropdown link</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>