<?php
include("./modelo/DocumentosModelo.php");
$obj = new Categorias();
if($_POST){

	$obj -> Id_Usuario = $_POST['Id_Usuario'];
    $obj -> Nombre_Usuario = $_POST['Nombre_Usuario'];
    $obj -> Apellido_Usuario = $_POST['Apellido_Usuario'];
    $obj -> Tipo_Documento = $_POST['Tipo_Documento'];
    $obj -> Numero_Documento = $_POST['Numero_Documento'];
    $obj -> Correo_Electronico = $_POST['Correo_Electronico'];
    $obj -> Celular = $_POST['Celular'];
    $obj -> Nombre_Rol = $_POST['Nombre_Rol'];
    $obj -> Login = $_POST['Login'];
    $obj -> Password = $_POST['Password'];
}

if(isset($_POST['Guardar'])){
    echo "llegue";
    $obj->agregar();
}

if(isset($_POST['modifica'])){
    $obj->modificar();
}

if(isset($_POST['elimina'])){
    $obj->eliminar();
}
if(isset($_POST['limpia'])){
    $obj->limpiar();
}




?>