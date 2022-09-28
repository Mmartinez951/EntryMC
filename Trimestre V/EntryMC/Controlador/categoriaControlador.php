<?php
include("./modelo/DocumentosModelo.php");
$obj = new Categorias();
if ($_POST){

    $obj->Id_Usuario = $_POST['Id_Usuario'];
    $obj->Usuario_Nombre = $_POST['Usuario_Nombre'];
    $obj->Usuario_Apellido = $_POST['Usuario_Apellido'];
    $obj->Tipo_Documento = $_POST['Tipo_Documento'];
    $obj->Usuario_NumeroDocumento = $_POST['Usuario_NumeroDocumento'];
    $obj->Usuario_Direccion = $_POST['Usuario_Direccion'];
    $obj->Usuario_Correo = $_POST['Usuario_Correo'];
    $obj->Usuario_Celular = $_POST['Usuario_Celular'];
    $obj->Usuario_Rol = $_POST['Usuario_Rol'];
    $obj->Estado_Usuario = $_POST['Estado_Usuario'];
    $obj->Usuario_Login = $_POST['Usuario_Login'];
    $obj->Usuario_Password = $_POST['Usuario_Password'];
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