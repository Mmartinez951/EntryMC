<?php
include("./modelo/DocumentoModeloEntrada.php");
$obj = new RegistroEntrada();
if ($_POST){

    $obj->Id_Registro_Entrada = $_POST['Id_Registro_Entrada'];
    $obj->Id_Vehiculo = $_POST['Id_Vehiculo'];
    $obj->Codigo = $_POST['Codigo'];
    $obj->Placa = $_POST['Placa'];
    $obj->Marca = $_POST['Marca'];
    $obj->Modelo = $_POST['Modelo'];
    $obj->Estado_Vehiculo = $_POST['Estado_Vehiculo'];
    $obj->Observaciones = $_POST['Observaciones'];
    $obj->Fecha_Registro_Entrada = $_POST['Fecha_Registro_Salida'];
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