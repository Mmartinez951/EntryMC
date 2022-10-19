<?php
include("./modelo/DocumentosVehiculo.php");
$obj = new Vehiculos();
if ($_POST){

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