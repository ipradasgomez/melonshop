<?php
class DataBase
{
    private static $BD;
    private static $QUERYS;
    public function __construct()
    {
        try {
            $con = @new PDO("mysql:host=informatica.iesvegademijas.es; dbname=ismael.p", "ismael.p", "v1qQ5a&9");
        } catch (Exception $e) {
            $con = null;
            exit("No se ha podido conectar a la base de datos");
        }
        $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $con->exec("set names utf8");
        self::$BD = $con;

        //Preparamos las Querys
        //ObtenerUsuario
        self::$QUERYS['obtenerUsuario'] = self::$BD->prepare("SELECT first_name, contact_email, password from customer where contact_email = :email");
        self::$QUERYS['obtenerEmpleado'] = self::$BD->prepare("SELECT rol, id, employee_code, employe_password, first_name, last_name from employee where employee_code = :codigo");
        self::$QUERYS['registraUsuario'] = self::$BD->prepare("INSERT INTO customer(first_name, last_name, user_name, password, contact_email, contact_phone, city_id, address) values (:first_name, :last_name, :u_name, :u_password, :email, :phone, :city_id, :u_address)");
        self::$QUERYS['obtenerProductos'] = self::$BD->prepare("SELECT item.id, item_name, price, item_photo, description, unit_short FROM item, unit WHERE item.unit_id=unit.id AND item_name LIKE :search");
        self::$QUERYS['obtenerProducto'] = self::$BD->prepare("SELECT item.id, item_name, price, item_photo, description, unit_short FROM item, unit WHERE item.unit_id=unit.id and item.id = :itemid");
        self::$QUERYS['obtenerCiudades'] = self::$BD->prepare("SELECT * FROM city");

    }

    protected static function ejecutaConsulta($sql)
    {
        $resultado = null;
        if (isset(self::$BD)) {
            $sth = self::$BD->prepare($sql);

            if ($sth) {
                $sth->execute();
                if (self::$BD->errorInfo()[0] == "00000") {
                    $resultado = $sth;
                }
            }

        }
        return $resultado;
    }

    public static function obtenerUsuario($email)
    {
        $usuario = null;
        self::$QUERYS["obtenerUsuario"]->bindParam(':email', $email, PDO::PARAM_STR, strlen($email));

        if (self::$QUERYS["obtenerUsuario"]->execute()) {
            $usuario = self::$QUERYS["obtenerUsuario"]->fetchObject();
        }
        return $usuario;
    }

    public static function obtenerEmpleado($codigo)
    {
        $empleado = null;
        self::$QUERYS["obtenerEmpleado"]->bindParam(':codigo', $codigo, PDO::PARAM_STR, strlen($codigo));

        if (self::$QUERYS["obtenerEmpleado"]->execute()) {
            $empleado = self::$QUERYS["obtenerEmpleado"]->fetchObject();
        }
        return $empleado;
    }

    public static function obtenerProducto($id)
    {
        $producto = null;
        self::$QUERYS["obtenerProducto"]->bindParam(':itemid', $id, PDO::PARAM_STR, strlen($id));
        if (self::$QUERYS["obtenerProducto"]->execute()) {
            $producto = self::$QUERYS["obtenerProducto"]->fetchObject();
        }

        return $producto;
    }
    public static function obtenerProductos($search = "")
    {
        $search = "%".$search."%";
        $productos = null;
        self::$QUERYS["obtenerProductos"]->bindParam(':search',$search, PDO::PARAM_STR);
        if (self::$QUERYS["obtenerProductos"]->execute()) {
            $productos = array();
            // Añadimos un elemento por cada producto obtenido
            $row = self::$QUERYS["obtenerProductos"]->fetchObject();
            while ($row != null) {
                $productos[] = $row;
                $row = self::$QUERYS["obtenerProductos"]->fetchObject();
            }

        }
        return $productos;
    }

    public static function obtenerCiudades()
    {
        $ciudades = null;
        if (self::$QUERYS["obtenerCiudades"]->execute()) {
            $ciudades = array();
            // Añadimos un elemento por cada producto obtenido
            $row = self::$QUERYS["obtenerCiudades"]->fetchObject();
            while ($row != null) {
                $ciudades[] = $row;
                $row = self::$QUERYS["obtenerCiudades"]->fetchObject();
            }

        }
        return $ciudades;
    }

    public static function registrarUsuario($first_name, $last_name, $user_name, $password, $contact_email, $contact_phone="", $city_id, $address="")
    {
        $registrado = false;
        if (self::$QUERYS["registraUsuario"]->execute(array(
            ':first_name' => $first_name,
            ':last_name' => $last_name,
            ':u_name' => $user_name,
            ':u_password' => $password,
            ':email' => $contact_email,
            ':phone' => $contact_phone,
            ':city_id' => $city_id,
            ':u_address' => $address,
        ))) {
            $registrado = true;
        }
        return $registrado;

    }

    public static function existeUsuario($email)
    {
        return self::obtenerUsuario($email) != null;
    }

    public static function filtraString($str)
    {
        return trim(filter_var($str, FILTER_SANITIZE_STRING));
    }
}
 
