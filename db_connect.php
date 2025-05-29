<?php 

  $db_host = "localhost";
  $db_user = "webuser";
  $db_pass = "webuser";
  $db_database = "adminlte";
  $db_port = '3306';
<<<<<<< HEAD



=======
/*
$db_host = 'lantigua21.com';
$db_user = 'lantigua21';		
$db_pass ='Lantigua@21';
$db_database= 'lantigua21';
$db_port = '3306';
*/
>>>>>>> f5ecfbf (actualizacion del db connect)
  //directivas necesarias para desactivar errores y warnings así como no detener la ejecución si hay error//
  ini_set("display_errors", 0);
  ini_set("display_startup_errors", 0);
  mysqli_report(MYSQLI_REPORT_OFF);
 
  //$conexion = mysqli_connect("$host", "$user", "$pass", "$databasebase", "$db_port");

function sanitizar($conexion, $datos)
{
  return mysqli_real_escape_string($conexion, htmlspecialchars(trim(strip_tags($datos ?? ""))));
}

class carrito{

  public $numeroproductos;
  public $productos;

  public function __construct()
  {
    $this->numeroproductos = 0;
    $this->productos = array();
  }

  public function agregarproducto($id, $nombre, $foto, $precio, $cantidad )
  {
    foreach($this->productos as $indice => $producto)
    {
      if ($indice == $id)
      {//El producto a agregar ya se encuentra el carrito
        $this->productos[$id]["cantidad"] += $cantidad;
        return;
      }
    }
    //El producto a añadir no se encuentra en el carrito
    $this->productos[$id]["nombre"] = $nombre;
    $this->productos[$id]["foto"] = $foto;
    $this->productos[$id]["precio"] = $precio;
    $this->productos[$id]["cantidad"] = $cantidad;

    $this->numeroproductos++;
  }

  public function eliminarproducto($id)
  {
    unset($this->productos[$id]);
    $this->numeroproductos--;
  }
}

class pasarela{
     

  public function cobrar($total, $tarjeta, $idcomercio)
  {
    if (strlen($tarjeta) == 16)
    {
      $this->codoperacion = rand(1000000, 9999999);
    }
    else
    {
      $this->codoperacion = "ERROR";
    }
  }
}


?>
