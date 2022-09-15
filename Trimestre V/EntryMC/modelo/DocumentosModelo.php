<?php
class Categorias{
                public $Id_Usuario;
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
                                        $query = "select * from usuarios where Usuario_NumeroDocumento = ('$this->Usuario_NumeroDocumento')";
                                        $ejecuta = mysqli_query($c, $query);
                                        if(mysqli_fetch_array($ejecuta)){
                                            echo "<script> alert ('El usuario ya existe en el sistema')</script>";
                                        } else{
                                                $insert= "insert into usuarios values(  $this->Id_Usuario,
                                                                                        $this->Usuario_Nombre,
                                                                                        $this->Usuario_Apellido,
                                                                                        $this->Tipo_Documento,
                                                                                        $this->Usuario_NumeroDocumento,
                                                                                        $this->Usuario_Direccion,
                                                                                        $this->Usuario_Correo,
                                                                                        $this->Usuario_Celular,
                                                                                        $this->Usuario_Rol,
                                                                                        $this->Usuario_Login,
                                                                                        $this->Usuario_Password
                                                                                        )";
                                            echo ($insert);
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