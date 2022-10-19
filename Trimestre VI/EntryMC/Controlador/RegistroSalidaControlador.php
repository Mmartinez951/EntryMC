<?php
include("./modelo/DocumentosModeloSalida.php");
$obj = new RegistroSalida();
if ($_POST){

    $obj->Id_Registro_Salida = $_POST['Id_Registro_Salida'];
    $obj->Id_Vehiculo = $_POST['Id_Vehiculo'];
    $obj->Codigo = $_POST['Codigo'];
    $obj->Placa = $_POST['Placa'];
    $obj->Marca = $_POST['Marca'];
    $obj->Modelo = $_POST['Modelo'];
    $obj->Nombre_Estado = $_POST['Nombre_Estado'];
    $obj->Observaciones = $_POST['Observaciones'];
    $obj->Fecha_Registro_Salida = $_POST['Fecha_Registro_Salida'];
}

if(isset($_POST['Guardar'])){
    $obj->Agregar(); 
}

if(isset($_POST['Modificar'])){
    $obj->Modificar();
}

if(isset($_POST['Eliminar'])){
    $obj->Eliminar();
}
if(isset($_POST['limpia'])){
    $obj->limpiar();
}


?>