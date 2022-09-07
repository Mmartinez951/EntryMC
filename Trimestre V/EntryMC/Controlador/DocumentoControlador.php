<php
    include('../client-new.php');
    $obj = new Documentos();
    if($_post){
        $obj->CodigoDocumento = $_post['CodigoDocumento'];
        $obj->NombreDocumento = $_post['NombreDocumento'];
    }
if(isset($_post['guarda'])){
    $obj->agregar();
}    

?>