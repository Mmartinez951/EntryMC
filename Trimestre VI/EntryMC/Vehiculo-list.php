<?php
include("./Conexion/Conexion.php");
include("./Controlador/VehiculoControlador.php");
if($_POST){
    $obj->Placa = $_POST['Placa'];
}
$cone = new Conexion();
$c = $cone -> conectando();
$queryCantUsuarios = "SELECT COUNT(*) AS TotalRegistros FROM vehiculos";
$ejecuta = mysqli_query($c,$queryCantUsuarios);
$TotalRegistros = mysqli_fetch_array($ejecuta)['TotalRegistros'];

$maximoRegistros = 10;
if(empty($_GET['pagina'])){
	$pagina=1;
}else{
	$pagina=$_GET['pagina'];
}
$desde = ($pagina-1)*$maximoRegistros;
$totalRegistros=ceil($TotalRegistros/$maximoRegistros);

if(isset($_POST['buscarUsuario'])){
    $query="SELECT Id_Vehiculo, Codigo, Placa, marca, Modelo,color,TP.Nombre_Tipo_Vehiculo, velocidad_MAX,EV.Nombre_Estado   FROM vehiculos V
	INNER JOIN tipos_vehiculo TP ON V.Tipo_Vehiculo= TP.Id_Tipo_Vehiculo
	INNER JOIN estados_vehiculo EV ON V.Estado_Vehiculo = EV.Id_Estado_Vehiculo ORDER BY Id_Vehiculo WHERE Placa like '%$obj->Placa%' limit $desde, $maximoRegistros";
    $ejecuta = mysqli_query($c,$query);
    $Vehiculos = mysqli_fetch_array($ejecuta);
	
}else{$query="SELECT Id_Vehiculo, Codigo, Placa, marca, Modelo,color,TP.Nombre_Tipo_Vehiculo, velocidad_MAX,EV.Nombre_Estado   FROM vehiculos V
	INNER JOIN tipos_vehiculo TP ON V.Tipo_Vehiculo= TP.Id_Tipo_Vehiculo
	INNER JOIN estados_vehiculo EV ON V.Estado_Vehiculo = EV.Id_Estado_Vehiculo ORDER BY Id_Vehiculo limit $desde,$maximoRegistros";
    $ejecuta = mysqli_query($c,$query);
    $Vehiculos = mysqli_fetch_array($ejecuta);
}


$query = "SELECT Id_Vehiculo, Codigo, Placa, marca, Modelo,color,TP.Nombre_Tipo_Vehiculo, velocidad_MAX,EV.Nombre_Estado   FROM vehiculos V
INNER JOIN tipos_vehiculo TP ON V.Tipo_Vehiculo= TP.Id_Tipo_Vehiculo
INNER JOIN estados_vehiculo EV ON V.Estado_Vehiculo = EV.Id_Estado_Vehiculo ORDER BY Id_Vehiculo limit $desde,$maximoRegistros" ;

$ejecuta = mysqli_query($c,$query);
$Vehiculos = mysqli_fetch_array ($ejecuta);

 

/* echo $TotalRegistros; */
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>Lista de clientes</title>

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
									<a href="Vehiculo-new.php"><i class="fas fa-bus-alt"></i> &nbsp; Vehículos</a>
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
					<i class="fas fa-clipboard-list fa-fw"></i><i class="fas fa-bus"></i> &nbsp; LISTA DE VEHÍCULOS
				</h3>
				<p class="text-justify">
					GESTIÓN DE VEHÍCULOS DE LA PLATAFORMA EntryMC 
				</p>
			</div>

			<div class="container-fluid">
				<ul class="full-box list-unstyled page-nav-tabs">
					<li>
						<a href="Vehiculo-new.php"><i class="fas fa-plus fa-fw"></i> &nbsp; AGREGAR VEHÍCULO</a>
					</li>
					<li>
						<a class="active" href="client-list.php"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; LISTA DE VEHÍCULOS</a>
					</li>
				</ul>	
			</div>
			<div class="container-fluid">
				<form class="form-neon" action="">
					<div class="container-fluid">
						<div class="row justify-content-md-center">
							<div class="col-12 col-md-6">
								<div class="form-group">
									<label for="inputSearch" class="bmd-label-floating">¿Qué vehículo estas buscando?</label>
									<input type="text" class="form-control" name="buscarUsuario" id="inputSearch" maxlength="30">
								</div>
							</div>
							<div class="col-12">
								<p class="text-center" style="margin-top: 40px;">
									<button type="submit" name="buscarUsuario" id="buscarUsuario" class="btn btn-raised btn-info"><i class="fas fa-search"></i> &nbsp; BUSCAR</button>
								</p>
							</div>
						</div>
					</div>
				</form>
			</div>
			
			
			<!-- Content here-->
			<div class="container-fluid">
				<div class="table-responsive">
					<table class="table table-dark table-sm">
						<thead>
							<tr class="text-center roboto-medium">
								<th>#</th>
								<th>Codigo</th>
								<th>Placa</th>
								<th>Marca</th>
								<th>Modelo</th>
								<th>Color</th>
								<th>Tipo Vehículo</th>
								<th>Velocidad</th>
								<th>Estado</th>
								<th>ACTUALIZAR</th>
								<th>ELIMINAR</th>
							</tr>
						</thead>
							<?php
							if($Vehiculos==0){
								echo"No hay Registros";
							}else{
								do{
							?>
							

						<tbody>
							<tr class="text-center" >
								<td><?php echo $Vehiculos[0]?></td>
								<td><?php echo $Vehiculos[1]?></td>
								<td><?php echo $Vehiculos[2]?></td>
								<td><?php echo $Vehiculos[3]?></td>
								<td><?php echo $Vehiculos[4]?></td>
								<td><?php echo $Vehiculos[5]?></td>
								<td><?php echo $Vehiculos[6]?></td>
								<td><?php echo $Vehiculos[7]?></td>
								<td><?php echo $Vehiculos[8]?></td>
								
							
							
								</td>
								<td>
									<a href=" <?php if($Vehiculos[0] <> ''){
										echo "Vehiculo-update.php?key=".urlencode($Vehiculos[0]);
									}  ?>"
									class="btn btn-success">
									<i class="fas fa-edit"></i>
									</a>
								</td>
								<td>
									<a href=" <?php if($Vehiculos[0] <> ''){
										echo "client-delete.php?key=".urlencode($Vehiculos[0]);
									}  ?>"
										class="btn btn-warning">
		  								<i class="far fa-trash-alt"></i>
										</button>
									</form>
								</td>
							</tr>
							<?php
								}while($Vehiculos = mysqli_fetch_array($ejecuta));
							}
							?>
						</tbody>
					</table>
				</div>
				<nav aria-label="Page navigation example">
					<ul class="pagination justify-content-center">
					<?php 
                    if($pagina!=1){
                    ?>
                    <li class="page-item ">
                        <a class="page-link" href="?pagina=<?php echo 1; ?>"><</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="?pagina=<?php echo $pagina-1; ?>"><<</a>
                    </li>
                    <?php
                    }
                    for($i=1; $i<=$totalRegistros; $i++){
                        if($i==$pagina){
                            echo'<li class="page-item active" aria-current="page"><a class="page-link" href="?pagina='.$i.'">'.$i.'</a></li>';    
                        }
                        else{
                            echo'<li class="page-item "><a class="page-link" href="?pagina='.$i.'">'.$i.'</a></li>'; 
                        }
                    }
                    if($pagina !=$totalRegistros){
                    ?>
                    
                    <li class="page-item">
                        <a class="page-link" href="?pagina=<?php echo $pagina+1; ?>">>></a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="?pagina=<?php echo $totalRegistros; ?>">></a>
                    </li>
                    <?php
                    }
                    ?>
						</li>
					</ul>
				</nav>
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