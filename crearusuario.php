<?php
if (isset($_REQUEST["guardar"])) {
  include_once "db_ecommerce.php";
  $conexion = mysqli_connect($db_host, $db_user, $db_pass, $db_database);
  if ($conexion->connect_errno) {
    die("<p>Error de conexión Nº: $conexion->connect_errno - $conexion->connect_error</p>\n</body>\n</html>");
  }
  $nombre = sanitizar($conexion, $_REQUEST["nombre"]);
  $email = sanitizar($conexion, $_REQUEST["email"]);
  $clave = sanitizar($conexion, $_REQUEST["clave"]);
  $tipo = sanitizar($conexion, $_REQUEST["tipo"]);

  $clave = md5($clave);
  $query = "INSERT INTO usuarios (nombre, email, clave,tipo ) VALUES (\"$nombre\", \"$email\", \"$clave\", \"$tipo\")";
  $resultset = mysqli_query($conexion, $query);

  if ($resultset)
  {
    print "<meta http-equiv=\"refresh\" content=\"0; url=panel.php?modulo=usuarios&mensaje=Usuario creado exitosamente\" />  ";
    //header("location: panel.php?modulo=usuarios&mensaje=Usuario creado exitosamente ");
  }
  else
  {?>
    <div class="alert alert-danger float-right" role="alert">
      <strong>Atención! no se ha creado el usuario <?php print mysqli_error($con) ?> </strong>
    </div>
<?php }
}
?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1><i class="fas fa-user-plus    "></i> Crear Usuario</h1>
          <script>
            $(".alert").alert();
          </script>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Crear usuario del ecommerce</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <form method="post" action="panel.php?modulo=crearusuario">
                <div class="form-group">
                  <label for="email">Email</label>
                  <input type="email" name="email" class="form-control" value="" required>
                </div>
                <div class="form-group">
                  <label for="clave">Clave</label>
                  <input type="password" name="clave" class="form-control"  value="" required>
                </div>
                <div class="form-group">
                  <label for="nombre">Nombre</label>
                  <input type="text" name="nombre" class="form-control"  value="" required>
                </div>
                <div class="form-group">
                <div class="form-group">
                <input type="radio" name="tipo" value="empleado" checked> Empleado<br>
                <input type="radio" name="tipo" value="administrador"> Administrador<br>
                </div>
                <div class="form-group">

                  <button type="submit" name="guardar" class="btn btn-primary">Guardar</button>
                  <a class="btn btn-danger" href="panel.php?modulo=usuarios" role="button">Cancelar</a>
                </div>
              </form>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
  </section>
  <!-- /.content -->
</div>