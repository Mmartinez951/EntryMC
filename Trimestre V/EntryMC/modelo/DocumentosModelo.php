<?php
class Categorias{
                public $Usuario_Nombre;
                public $Usuario_Apellido;
                public $Tipo_Documento;
                public $Usuario_NumeroDocumento;
                public $Usuario_Direccion;
                public $Usuario_Correo;
                public $Usuario_Celular;
                public $Usuario_Rol;
                public $Usuario_Login;
                public $Usuario_Password;
                

                    function agregar() {
                                        $conect = new Conexion();
                                        $c = $conect->conectando();
                                        $query = "select * from usuarios where Correo_Electronico = '$this->Usuario_Correo'";
                                        $ejecuta = mysqli_query($c, $query);
                                        if(mysqli_fetch_array($ejecuta)){
                                            echo "<script> alert('El documento ya existe en el sistema')</script>";
                                        }else{
                                            $insert = "insert into usuarios value" (
                                                                                        //'$this->Id_Usuario',
                                                                                        '$this->Nombre_Usuario',
                                                                                        '$this->Apellido_Usuario',
                                                                                        '$this->Tipo_Documento',
                                                                                        '$this->Numero_Documento',
                                                                                        '$this->Direccion',
                                                                                        '$this->Correo_Electronico',
                                                                                        '$this->Celular',
                                                                                        '$this->Nombre_Rol',
                                                                                        '$this->Login',
                                                                                        '$this->Password'
                                                                                    );
                                            echo $insert;
                                            mysqli_query($c, $insert);
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