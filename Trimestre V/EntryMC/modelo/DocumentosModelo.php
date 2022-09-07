<php
class documentos{
                public $CodigoDocumento;
                public $NombreDocumento;

                    function agregar() {
                                        $conet = new Conexion();
                                        $c = $conet->conectando();
                                        $query = "select * from documentos where NombreDocumento = '$this->NombreDocumento'";
                                        $ejecuta = myqli_query($c, $query);
                                        if(mysqli_fetch_array($ejecuta)){
                                            echo "<script> alert('El documento ya existe en el sistema')</script>";
                                        }else{
                                            $insertar = "insert into documentos value"(
                                                                                        '$this->CodigoDocumento',
                                                                                        '$this->NombreDocumento'
                                            )";
                                            echo $insertar;
                                            mysqli_query($c, $insertar);
                                            echo "<script> alert('El documento fue creado en el sistema')</script>";
                                        }
                    } 
                    function Modificar(){

                    }
                    function eliminar(){

                    }
                    function limpiar(){
                        
                    }
                    }
}
?>