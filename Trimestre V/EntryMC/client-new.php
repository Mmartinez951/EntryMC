<?php
include("./Conexion/Conexion.php");
include("./Controlador/categoriaControlador.php");
$obj = new Categorias();
$cone = new Conexion();
$c = $cone->conectando();


if($_POST){

    $obj->Usuario_Nombre = $_POST['Usuario_Nombre'];
    $obj->Usuario_Apellido = $_POST['Usuario_Apellido'];
    $obj->Tipo_Documento = $_POST['Tipo_Documento'];
    $obj->Usuario_NumeroDocumento = $_POST['Usuario_NumeroDocumento'];
    $obj->Usuario_Direccion = $_POST['Usuario_Direccion'];
    $obj->Usuario_Correo = $_POST['Usuario_Correo'];
    $obj->Usuario_Celular = $_POST['Usuario_Celular'];
    $obj->Usuario_Rol = $_POST['Usuario_Rol'];
    $obj->Usuario_Login = $_POST['Usuario_Login'];
    $obj->Usuario_Password = $_POST['Usuario_Password'];
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>Nuevo Usuario</title>

	<!-- Normalize V8.0.1 -->
	<link rel="stylesheet" href="./css/normalize.css">

	<!-- Bootstrap V4.3 -->
	<link rel="stylesheet" href="./css/bootstrap.min.css">

	<!-- Bootstrap Material Design V4.0 -->
	<link rel="stylesheet" href="./css/bootstrap-material-design.min.css">

	<!-- Font Awesome V5.9.0 -->
	<link rel="stylesheet" href="./css/all.css">

	<!-- Sweet Alerts V8.13.0 CSS file -->
	<link rel="stylesheet" href="./css/sweetalert2.min.css">

	<!-- Sweet Alert V8.13.0 JS file-->
	<script src="./js/sweetalert2.min.js" ></script>

	<!-- jQuery Custom Content Scroller V3.1.5 -->
	<link rel="stylesheet" href="./css/jquery.mCustomScrollbar.css">
	
	<!-- General Styles -->
	<link rel="stylesheet" href="./css/style.css">


</head>
<body>
	
	<!-- Main container -->
	<main class="full-box main-container">
		<!-- Nav lateral -->
		<section class="full-box nav-lateral">
			<div class="full-box nav-lateral-bg show-nav-lateral"></div>
			<div class="full-box nav-lateral-content">
				<figure class="full-box nav-lateral-avatar">
					<i class="far fa-times-circle show-nav-lateral"></i>
					<img src="./assets/avatar/Avatar.png" class="img-fluid" alt="Avatar">

					<figcaption class="roboto-medium text-center">
						Usuario <br><small class="roboto-condensed-light">Rol</small>
					</figcaption>
				</figure>
				<div class="full-box nav-lateral-bar"></div>
				<nav class="full-box nav-lateral-menu">
					<ul>
						<li>
							<a href="home.html"><i class="fas fa-home"></i> &nbsp; Dashboard</a>
						</li>

						<li>
							<a href="#" class="nav-btn-submenu"><i class="fas fa-sliders-h"></i> &nbsp; Administracion <i class="fas fa-chevron-down"></i></a>
							<ul>
								<li>
									<a href="client-new.php"><i class="fas fa-user fa-fw"></i> &nbsp; Usuarios</a>
								</li>
								<li>
									<a href="client-list.php"><i class="fas fa-bus-alt"></i> &nbsp; Vehículos</a>
								</li>
								<li>
									<a href="client-search.html"><i class="fas fa-briefcase"></i> &nbsp; Roles</a>
								</li>
								<li>
									<a href="client-search.html"><i class="fas fa-key"></i> &nbsp; Permisos</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="#" class="nav-btn-submenu"><i class="fas fa-keyboard"></i> &nbsp; Registros Patios <i class="fas fa-chevron-down"></i></a>
							<ul>
								<li>
									<a href="item-new.html"><i class="fas fa-bus"></i> &nbsp; Entrada Vehiculos</a>
								</li>
								<li>
									<a href="item-list.html"><i class="fas fa-bus"></i> &nbsp; Salida Vehiculos</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="#" class="nav-btn-submenu"><i class="fas fa-search"></i> &nbsp; Consultas <i class="fas fa-chevron-down"></i></a>
							<ul>
								<li>
									<a href="reservation-new.html"><i class="fas fa-ticket-alt"></i> &nbsp; Ordenes de Trabajo</a>
								</li>
						</li>
							</ul>
						</li>
					</ul>
				</nav>
			</div>
		</section>

		<!-- Page content -->
		<section class="full-box page-content">
			<nav class="full-box navbar-info">
				<a href="#" class="float-left show-nav-lateral">
					<i class="fas fa-exchange-alt"></i>
				</a>
				<a href="user-update.html">
					<i class="fas fa-user-cog"></i>
				</a>
				<a href="#" class="btn-exit-system">
					<i class="fas fa-power-off"></i>
				</a>
			</nav>

			<!-- Page header -->
			<div class="full-box page-header">
				<h3 class="text-left">
					<i class="fas fa-plus fa-fw"></i> &nbsp; AGREGAR USUARIO
				</h3>
				<p class="text-justify">
					Agregar usuarios
				</p>
			</div>

			<div class="container-fluid">
				<ul class="full-box list-unstyled page-nav-tabs">
					<li>
						<a class="active" href="client-new.php"><i class="fas fa-plus fa-fw"></i> &nbsp; AGREGAR USUARIO</a>
					</li>
					<li>
						<a href="client-list.php"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; LISTA DE USUARIOS</a>
					</li>
				</ul>	
			</div>
			
			<!-- Content here-->
			<div class="container-fluid">
				<form action="" class="form-neon" autocomplete="off" method="POST">
					<fieldset>
						<legend><i class="fas fa-user"></i> &nbsp; Información básica</legend>
						<div class="container-fluid">
							<div class="row">
								<!-- <div class="col-12 col-md-6">
									<div class="form-group">
										<label for="cliente_dni" class="bmd-label-floating">#</label>
										<input type="text" pattern="[a-zA-Z0-9-]{1,27}" class="form-control" id="cliente_dni" id="cliente_dni" maxlength="27">
									</div>
								</div> -->
								<div class="col-10 col-md-7">
									<div class="form-group">
										<label for="Usuario_Nombre" class="bmd-label-floating">Nombre</label>
										<input type="text" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,40}" class="form-control" name="Usuario_Nombre" id="Usuario_Nombre" maxlength="40">
									</div>
								</div>
								<div class="col-12 col-md-7">
									<div class="form-group">
										<label for="Usuario_Apellido" class="bmd-label-floating">Apellido</label>
										<input type="text" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,40}" class="form-control" name="Usuario_Apellido" id="Usuario_Apellido" maxlength="40">
									</div>
								</div>
								<div class="col-12 col-md-7">
								<div class="form-group">
								<label for="Tipo_Documento" class="bmd-label-floating">Tipo Documento</label>
	                                <select class="form-control" name="Tipo_Documento" id="Tipo_Documento">
										<?php
											$query ="SELECT * FROM Tipo_Documentos";
											$NombreDocumentos = mysqli_query($c,$query);

											while($NombreDocumento = mysqli_fetch_array($NombreDocumentos)){
										?>
											<option value = "<?php echo $NombreDocumento[0]?>">
											<?php echo $NombreDocumento[1]?>
											</option>
										<?php
										}
										?>    	
	                                </select>
									</div>
								</div>
								<div class="col-12 col-md-7">
									<div class="form-group">
										<label for="Usuario_NumeroDocumento" class="bmd-label-floating">Numero de documento</label>
										<input type="text" pattern="[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ#- ]{1,150}" class="form-control" name="Usuario_NumeroDocumento" id="Usuario_NumeroDocumento" maxlength="150">
									</div>
								</div>
								<div class="col-12 col-md-7">
									<div class="form-group">
										<label for="Usuario_Direccion" class="bmd-label-floating">Dirección</label>
										<input type="text" pattern="[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ#- ]{1,150}" class="form-control" name="Usuario_Direccion" id="Usuario_Direccion" maxlength="150">
									</div>
								</div>
								<div class="col-10 col-md-7">
									<div class="form-group">
										<label for="Usuario_Correo" class="bmd-label-floating">Correo electronico</label>
										<input type="text" pattern="[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ#- ]{1,150}" class="form-control" name="Usuario_Correo" id="Usuario_Correo" maxlength="150">
									</div>
								</div>
								<div class="col-10 col-md-7">
									<div class="form-group">
										<label for="Usuario_Celular" class="bmd-label-floating">Celular</label>
										<input type="text" pattern="[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ#- ]{1,150}" class="form-control" name="Usuario_Celular" id="Usuario_Celular" maxlength="150">
									</div>
								</div>
								<div class="col-10 col-md-7">
									<div class="form-group">
									<label for="Usuario_Rol" class="bmd-label-floating">Rol</label>
	                                <select class="form-control" name="Usuario_Rol" id="Usuario_Rol">
										<?php
											$query ="SELECT * FROM Roles";
											$NombreRoles = mysqli_query($c,$query);
											//echo $NombreDocumento;

											while($NombreRol = mysqli_fetch_array($NombreRoles)){
										?>
											<option value = "<?php echo $NombreRol[0]?>">
											<?php echo $NombreRol[1]?>
											</option>
										<?php
										}
										?>    
											
	                                </select>
									</div>
								</div>
								<div class="col-10 col-md-7">
								<div class="form-group">
										<label for="Usuario_Login" class="bmd-label-floating">Login</label>
										<input type="text" pattern="[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ#- ]{1,150}" class="form-control" name="Usuario_Login" id="Usuario_Login" >
								</div>
								</div>
								<div class="col-10 col-md-7">
								<div class="form-group">
										<label for="Usuario_Password" class="bmd-label-floating">Password</label>
										<input type="password" pattern="[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ#- ]{1,150}" class="form-control" name="Usuario_Password" id="Usuario_Password">
									</div>
								</div>
							</div>
						</div>
					</fieldset>
					<br><br><br>
					<p class="text-center" style="margin-top: 40px;">
						<button type="reset" class="btn btn-raised btn-secondary btn-sm"><i class="fas fa-paint-roller"></i> &nbsp; LIMPIAR</button>
						&nbsp; &nbsp;
						<button type="submit" class="btn btn-raised btn-info btn-sm" name="Guardar"><i class="far fa-save"></i> &nbsp; GUARDAR </button> 
					</p>
				</form>
			</div>	

		</section>
	</main>
	
	
	<!--=============================================
	=            Include JavaScript files           =
	==============================================-->
	<!-- jQuery V3.4.1 -->
	<script src="./js/jquery-3.4.1.min.js" ></script>

	<!-- popper -->
	<script src="./js/popper.min.js" ></script>

	<!-- Bootstrap V4.3 -->
	<script src="./js/bootstrap.min.js" ></script>

	<!-- jQuery Custom Content Scroller V3.1.5 -->
	<script src="./js/jquery.mCustomScrollbar.concat.min.js" ></script>

	<!-- Bootstrap Material Design V4.0 -->
	<script src="./js/bootstrap-material-design.min.js" ></script>
	<script>$(document).ready(function() { $('body').bootstrapMaterialDesign(); });</script>

	<script src="./js/main.js" ></script>
</body>
</html>