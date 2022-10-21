<?php
include("./Conexion/Conexion.php");
include("./Controlador/RegistroSalidaControlador.php"); 
if($_POST){
    $obj->Placa = $_POST['Placa'];
}
$cone = new Conexion();
$c = $cone -> conectando();
$queryCantUsuarios = "SELECT COUNT(*) AS TotalRegistros FROM Registro_Salida";
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
    $query="SELECT Id_Registro_Salida, V.Id_Vehiculo,V.Codigo,V.Placa,V.Marca,V.Modelo, ET.Nombre_Estado, Observaciones, Fecha_Registro_Salida FROM registro_salida RG INNER JOIN vehiculos V ON RG.Id_Vehiculo = V.Id_Vehiculo INNER JOIN estados_vehiculo ET ON V.Estado_Vehiculo = ET.Id_Estado_Vehiculo WHERE V.Estado_Vehiculo=4 ORDER BY Id_Registro_Salida WHERE Placa like '%$obj->Placa%' limit $desde, $maximoRegistros";
    $ejecuta = mysqli_query($c,$query);
    $Vehiculos = mysqli_fetch_array($ejecuta);
	
}else{$query="SELECT Id_Registro_Salida, V.Id_Vehiculo,V.Codigo,V.Placa,V.Marca,V.Modelo, ET.Nombre_Estado, Observaciones, Fecha_Registro_Salida FROM registro_salida RG INNER JOIN vehiculos V ON RG.Id_Vehiculo = V.Id_Vehiculo INNER JOIN estados_vehiculo ET ON V.Estado_Vehiculo = ET.Id_Estado_Vehiculo WHERE V.Estado_Vehiculo=4 ORDER BY Id_Registro_Salida limit $desde,$maximoRegistros";
    $ejecuta = mysqli_query($c,$query);
    $Vehiculos = mysqli_fetch_array($ejecuta);
}


$query = "SELECT Id_Registro_Salida, V.Id_Vehiculo,V.Codigo,V.Placa,V.Marca,V.Modelo, ET.Nombre_Estado, Observaciones, Fecha_Registro_Salida FROM registro_salida RG INNER JOIN vehiculos V ON RG.Id_Vehiculo = V.Id_Vehiculo INNER JOIN estados_vehiculo ET ON V.Estado_Vehiculo = ET.Id_Estado_Vehiculo WHERE V.Estado_Vehiculo=4 ORDER BY Id_Registro_Salida limit $desde,$maximoRegistros" ;

$ejecuta = mysqli_query($c,$query);
$RegistroSalida = mysqli_fetch_array ($ejecuta);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Registro de Salida</title>

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
    <script src="./js/sweetalert2.min.js"></script>

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
					Entry MC <br><small class="roboto-condensed-light">Bienvenidos</small>
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
									<a href="Registro-Entrada-List.php"><i class="fas fa-bus"></i> &nbsp; Entrada Vehiculos</a>
								</li>
								<li>
									<a href="Registro-Salida-List.php"><i class="fas fa-bus"></i> &nbsp; Salida Vehiculos</a>
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
				<a href="Registro-Salida-List.php">
					<i class="fas fa-user-cog"></i>
				</a>
				<a href="#" class="btn-exit-system">
					<i class="fas fa-power-off"></i>
				</a>
			</nav>

			<!-- Page header -->
			<div class="full-box page-header">
				<h3 class="text-left">
					<i class="fas fa-clipboard-list fa-fw"></i> &nbsp; REGISTRO DE SALIDAS
				</h3>
				<p class="text-justify">
					GESTIÓN DE SALIDAS DE VEHÍCULOS
				</p>
			</div>

			<div class="container-fluid">
				<ul class="full-box list-unstyled page-nav-tabs">
					<li>
						<a href="Registro-salida-new.php"><i class="fas fa-plus fa-fw"></i> &nbsp; AGREGAR REGISTRO</a>
					</li>
					<li>
						<a class="active" href="Vehiculo-List.php"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; LISTA DE REGISTRO</a>
					</li>
				</ul>	
			</div>

			<!-- Content here-->
			<div class="container-fluid">
				<div class="table-responsive">
					<table class="table table-dark table-sm">
						<thead>
							<tr class="text-center roboto-medium">
								<th>#</th>
								<th>Vehículo</th>
								<th>Codigo</th>
								<th>Placa</th>
								<th>Marca </th>
								<th>Modelo</th>
								<th>Estado Vehículo</th>
								<th>Observaciones </th>
								<th>Fecha Salida</th>
							</tr>
						</thead>
							<?php
							if($RegistroSalida==0){
								echo"No hay Registros";
							}else{
								do{
							?>
							

						<tbody>
							<tr class="text-center" >
								<td><?php echo $RegistroSalida[0]?></td>
								<td><?php echo $RegistroSalida[1]?></td>
								<td><?php echo $RegistroSalida[2]?></td>
								<td><?php echo $RegistroSalida[3]?></td>
								<td><?php echo $RegistroSalida[4]?></td>
								<td><?php echo $RegistroSalida[5]?></td>
								<td><?php echo $RegistroSalida[6]?></td>
								<td><?php echo $RegistroSalida[7]?></td>
								<td><?php echo $RegistroSalida[8]?></td>
							</tr>
							<?php
								}while($RegistroSalida = mysqli_fetch_array($ejecuta));
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