<?php
//require_once 'Producto.php';
//require_once 'Ordenador.php';

class DataBase
{
    private static $BD;

    public function __construct()
    {
        try {
            $con = @new PDO("mysql:host=informatica.iesvegademijas.es; dbname=ismael.p", "ismael.p", "v1qQ5a&9");
        } catch (Exception $e) {
            $con = null;
            exit("No se ha podido conectar a la base de datos");
        }
        $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        self::$BD = $con;
    }

    protected static function ejecutaConsulta($sql)
    {
        if (isset(self::$BD)) {
            $resultado = self::$BD->query($sql);
        }

        return $resultado;
    }

    public static function obtenerProductos()
    {
        $sql = "SELECT item.id, item_name, price, item_photo, description, unit_short FROM item, unit WHERE item.unit_id=unit.id;";
        $resultado = self::ejecutaConsulta($sql);
        $productos = array();

        if ($resultado) {
            // Añadimos un elemento por cada producto obtenido
            $row = $resultado->fetchObject();
            while ($row != null) {
                $productos[] = $row;
                $row = $resultado->fetchObject();
            }
        }

        return $productos;
    }
/*
public static function obtieneProductos()
{
$sql = "SELECT cod, nombre_corto, nombre, PVP, familia FROM producto;";
$resultado = self::ejecutaConsulta($sql);
$productos = array();

if ($resultado) {
// Añadimos un elemento por cada producto obtenido
$row = $resultado->fetch();
while ($row != null) {
$productos[] = new Producto($row);
$row = $resultado->fetch();
}
}

return $productos;
}

public static function obtieneOrdenador($ord)
{
$sql = "SELECT producto.cod, nombre_corto, COALESCE( nombre , '' ) as nombre, PVP, procesador, RAM, disco, grafica, unidadoptica, SO, COALESCE( otros , '' ) as otros FROM producto, ordenador WHERE producto.cod=ordenador.cod AND producto.cod='$ord'  ";

$resultado = self::ejecutaConsulta($sql);

if ($resultado) {
return $resultado->fetchObject();
}else{
return false;
}
}

public static function obtieneProducto($codigo)
{
$sql = "SELECT cod, nombre_corto, nombre, PVP, familia FROM producto";
$sql .= " WHERE cod='" . $codigo . "'";
$resultado = self::ejecutaConsulta($sql);
$producto = null;

if (isset($resultado)) {
$row = $resultado->fetch();
$producto = new Producto($row);
}

return $producto;
}

public static function verificaCliente($nombre, $contrasena)
{
$sql = "SELECT usuario FROM usuarios ";
$sql .= "WHERE usuario='$nombre' ";
$sql .= "AND contrasena='" . md5($contrasena) . "';";
$resultado = self::ejecutaConsulta($sql);
$verificado = false;

if (isset($resultado)) {
$fila = $resultado->fetch();
if ($fila !== false) {
$verificado = true;
}

}
return $verificado;
}
 */
}