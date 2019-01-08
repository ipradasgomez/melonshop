<?php

class Carrito{

    public function __construct()
    {
        if(empty($_SESSION['carrito'])){
            $_SESSION['carrito'] = [];
        }
    }

    public function addProducto($producto, $cant){
        if(isset($_SESSION['carrito'][$producto->id])){
            $_SESSION['carrito'][$producto->id][1]+=$cant;
        }else{
            $_SESSION['carrito'][$producto->id] = [$producto, (int) $cant];
        }
    }

    public function longitud(){
        if(isset($_SESSION['carrito'])){
            return count($_SESSION['carrito']);
        }else{
            return 0;
        }
    }

    public function precioTotal(){
        $respuesta = 0;
        foreach ($$_SESSION['carrito'] as $key => $value) {
            $respuesta += $value[0]->price * $value[1];
        }
        return $respuesta;
    }

    public function carro(){
        if(isset($_SESSION['carrito'])){
            return $_SESSION['carrito'];
        }else{
            return null;
        }
    }

    public function vaciarCarro(){
        unset($_SESSION['carrito']);
    }
}

?>