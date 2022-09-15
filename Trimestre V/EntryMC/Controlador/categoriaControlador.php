<?php
include("./modelo/DocumentosModelo.php");
$obj = new Categorias();
/* if($_POST){

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
 */
if(isset($_POST['Guardar'])){
    echo $obj->agregar(); 
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