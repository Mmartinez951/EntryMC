<?php
class Categorias{
                public $CodigoDocumento;
                public $NombreDocumento;

                    function agregar() {
                                        $conet = new Conexion();
                                        $c = $conect->conectando();
                                        $query = "select * from usuarios where Id_Usuario = '$this->NombreDocumento'";
                                        $ejecuta = myqli_query($c, $query);
                                        if(mysqli_fetch_array($ejecuta)){
                                            echo "<script> alert('El documento ya existe en el sistema')</script>";
                                        }else{
                                            $insertar = "insert into usuarios value"(
                                                                                        '$this->Id_Usuario',
                                                                                        '$this->Nombre_Usuario',
                                                                                        '$this->Apellido_Usuario',
                                                                                        '$this->Tipo_Documento',
                                                                                        '$this->Numero_Documento',
                                                                                        '$this->Correo_Electronico',
                                                                                        '$this->Celular',
                                                                                        '$this->Nombre_Rol',
                                                                                        '$this->Login',
                                                                                        '$this->Password'
                                            );
                                            echo $insertar;
                                            mysqli_query($c, $insertar);
                                            echo "<script> alert('El usuario fue creado correctamente')</script>";
                                        }
                    } 
                    function Modificar(){

                    }
                    function eliminar(){

                    }
                    function limpiar(){
                        
                    }
                    }

?>