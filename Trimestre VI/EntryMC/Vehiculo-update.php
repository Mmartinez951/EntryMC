<?php
include("./Conexion/Conexion.php");
include("./Controlador/VehiculoControlador.php");
$obj = new Vehiculos();
$cone = new Conexion();
$c = $cone->conectando();

if($_POST){

    $obj->Id_Vehiculo = $_POST['Id_Vehiculo'];
    $obj->Vehiculo_Codigo = $_POST['Vehiculo_Codigo'];
    $obj->Vehiculo_Placa = $_POST['Vehiculo_Placa'];
    $obj->Vehiculo_Marca = $_POST['Vehiculo_Marca'];
    $obj->Vehiculo_Modelo = $_POST['Vehiculo_Modelo'];
    $obj->Vehiculo_Color = $_POST['Vehiculo_Color'];
    $obj->Vehiculo_Tipo = $_POST['Vehiculo_Tipo'];
    $obj->Vehiculo_Velocidad = $_POST['Vehiculo_Velocidad'];
    $obj->Vehiculo_Estado = $_POST['Vehiculo_Estado'];
}
$key = $_GET['key'];
//echo $key; 
$conect = new Conexion();
$c = $conect->conectando();
$query="select * from vehiculos where Id_Vehiculo = '$key'";
$resultado = mysqli_query($c, $query);
$arreglo = mysqli_fetch_array($resultado);

$obj->Id_Vehiculo = $arreglo[0];
$obj->Vehiculo_Codigo = $arreglo[1];
$obj->Vehiculo_Placa = $arreglo[2];
$obj->Vehiculo_Marca = $arreglo[3];
$obj->Vehiculo_Modelo = $arreglo[4];
$obj->Vehiculo_Color = $arreglo[5];
$obj->Vehiculo_Tipo = $arreglo[6];
$obj->Vehiculo_Velocidad = $arreglo[7];
$obj->Vehiculo_Estado = $arreglo[8];
?>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>Actualizar Vehículo</title>

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
						Carlos Alfaro <br><small class="roboto-condensed-light">Web Developer</small>
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
									<a href="vehiculo-new.php"><i class="fas fa-bus-alt"></i> &nbsp; Vehículos</a>
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
					<i class="fas fa-sync-alt fa-fw"></i> &nbsp; ACTUALIZAR VEHÍCULO
				</h3>
				<p class="text-justify">
					
				</p>
			</div>

			<div class="container-fluid">
				<ul class="full-box list-unstyled page-nav-tabs">
					<!-- <li>
						<a href="client-new.php"><i class="fas fa-plus fa-fw"></i> &nbsp; AGREGAR CLIENTE</a>
					</li> -->
					<li>
						<a href="Vehiculo-list.php"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; LISTA DE VEHÍCULOS</a>
					</li>
				</ul>	
			</div>
			
			<!-- Content here-->
			<div class="container-fluid">
				<form action="" class="form-neon" autocomplete="off" method="POST">
					<fieldset>
						<legend><i class="fas fa-bus"></i> &nbsp; Información básica del Vehículos</legend>
						<div class="container-fluid">
							<div class="row">
								<div class="col-10 col-md-7">
									<div class="form-group">
										<label for="Id_Vehiculo" class="bmd-label-floating"></label>
										<input class="form-control form-control-sm" type="text" name="Id_Vehiculo" id="Id_Vehiculo" placeholder="El Codigo es Asignado por el Sistema" aria-label=".form-control-sm example" readOnly maxlength="27">
									</div>
								</div>
								<div class="col-12 col-md-7">
									<div class="form-group">
										<label for="Vehiculo_Codigo" class="bmd-label-floating">Codigo</label>
										<input type="text" required class="form-control" name="Vehiculo_Codigo" id="Vehiculo_Codigo" maxlength="40">
									</div>
								</div>
								<div class="col-12 col-md-7">
									<div class="form-group">
										<label for="Vehiculo_Placa" class="bmd-label-floating">Placa</label>
										<input type="text" required class="form-control" name="Vehiculo_Placa" id="Vehiculo_Placa" maxlength="40">
									</div>
								</div>
								<div class="col-12 col-md-7">
									<div class="form-group">
										<label for="Vehiculo_Marca" class="bmd-label-floating">Marca</label>
										<input type="text" class="form-control" name="Vehiculo_Marca" id="Vehiculo_Marca" maxlength="20">
									</div>
								</div>
								<div class="col-12 col-md-7">
									<div class="form-group">
										<label for="Vehiculo_Modelo" class="bmd-label-floating">Modelo</label>
										<input type="text" pattern="[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ#- ]{1,150}" class="form-control" name="Vehiculo_Modelo" id="Vehiculo_Modelo" maxlength="150">
									</div>
								</div>
								<div class="col-12 col-md-7">
									<div class="form-group">
										<label for="Vehiculo_Color" class="bmd-label-floating">Color</label>
										<input type="text" pattern="[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ#- ]{1,150}" class="form-control" name="Vehiculo_Color" id="Vehiculo_Color" maxlength="150">
									</div>
								</div>
								<div class="col-12 col-md-7">
								<div class="form-group">
								<label for="Vehiculo_Tipo" class="bmd-label-floating">Tipo Vehículo</label>
	                                <select class="form-control" name="Vehiculo_Tipo" id="Vehiculo_Tipo">
										<?php
											$query ="SELECT * FROM Tipos_Vehiculo";
											$NombreTipoVehículo = mysqli_query($c,$query);

											while($NombreTipo = mysqli_fetch_array($NombreTipoVehículo)){
										?>
											<option value = "<?php echo $NombreTipo[0]?>">
											<?php echo $NombreTipo[1]?>
											</option>
										<?php
										}
										?>    	
	                                </select>
									</div>
								</div>
								<div class="col-12 col-md-7">
									<div class="form-group">
										<label for="Vehiculo_Velocidad" class="bmd-label-floating">Velocidad MAX</label>
										<input type="text" pattern="[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ#- ]{1,150}" class="form-control" name="Vehiculo_Velocidad" id="Vehiculo_Velocidad" maxlength="150">
									</div>
								</div>
								<div class="col-12 col-md-7">
								<div class="form-group">
								<label for="Vehiculo_Estado" class="bmd-label-floating">Estado Vehículo</label>
	                                <select class="form-control" name="Vehiculo_Estado" id="Vehiculo_Estado">
										<?php
											$query ="SELECT * FROM Estados_Vehiculo";
											$NombreEstadosVehiculos = mysqli_query($c,$query);

											while($NombreEstado = mysqli_fetch_array($NombreEstadosVehiculos)){
										?>
											<option value = "<?php echo $NombreEstado[0]?>">
											<?php echo $NombreEstado[1]?>
											</option>
										<?php
										}
										?>    	
	                                </select>
									</div>
								</div>
							</div>
						</div>
						<p class="text-center" style="margin-top: 40px;">
						<button type="submit" class="btn btn-raised btn-success btn-sm" name="Modificar" ><i class="fas fa-sync-alt"> </i>&nbsp;ACTUALIZAR</button>                                   
						</p>
					</fieldset>
					<br><br><br>

					

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