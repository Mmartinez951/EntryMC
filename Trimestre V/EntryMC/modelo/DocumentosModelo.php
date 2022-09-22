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
                

                    function Agregar() {
                                        $conect = new Conexion();
                                        $c = $conect->conectando();
                                        $query = "select * from usuarios where  Numero_Documento = ('$this->Usuario_NumeroDocumento')";
                                        $ejecuta = mysqli_query($c, $query);
                                        if(mysqli_fetch_array($ejecuta)){
                                            echo "<script> alert ('El usuario ya existe en el sistema')</script>";
                                        } else{
                                                $insert= "insert into usuarios values(  '$this->Id_Usuario',
                                                                                        '$this->Usuario_Nombre',
                                                                                        '$this->Usuario_Apellido',
                                                                                        '$this->Tipo_Documento',
                                                                                        '$this->Usuario_NumeroDocumento',
                                                                                        '$this->Usuario_Direccion',
                                                                                        '$this->Usuario_Correo',
                                                                                        '$this->Usuario_Celular',
                                                                                        '$this->Usuario_Rol',
                                                                                        '$this->Usuario_Login',
                                                                                        '$this->Usuario_Password'
                                                                                        )";
                                            //echo ($insert);
                                            mysqli_query($c, $insert);
                                            echo "<script> alert('El usuario fue creado correctamente')</script>";
                                        }
                    } 
                    function Modificar(){

                                       $conect = new Conexion();
                                       $c = $conect->conectando();
                                       $query = "select * from Usuarios where Numero_Documento = '$this->Usuario_NumeroDocumento'";
                                       $ejecuta = mysqli_query($c, $query);
                                          $update = "update usuarios set 
                                                                           Nombre_Usuario='$this->Usuario_Nombre',
                                                                           Apellido_Usuario='$this->Usuario_Apellido',
                                                                           Tipo_Documento='$this->Tipo_Documento',
                                                                           Numero_Documento='$this->Usuario_NumeroDocumento',
                                                                           Direccion='$this->Usuario_Direccion',
                                                                           Correo_Electronico='$this->Usuario_Correo',
                                                                           Celular='$this->Usuario_Celular',
                                                                           Nombre_Rol='$this->Usuario_Rol',
                                                                           Login='$this->Usuario_Login',
                                                                           Password='$this->Usuario_Password'
                                                                           where Id_Usuario='$this->Id_Usuario'";
                                          //echo $update;
                                          mysqli_query($c,$update);
                                          echo "<script> alert('El Usuario fue Modificado en el Sistema')</script>";
                                          
                                       }

                    
                    function limpiar(){
                                       try{
                                       $conect = new Conexion();
                                       $c = $conect->conectando();
                                       $query = "delete from usuarios where Id_Usuario='$this->Id_Usuario'";
                                       $d=mysqli_query($c,$query);
                                    }catch(e){
                                          
                                          echo "<script> alert('El Usuario fue Eliminado en el Sistema')</script>";
                                          
                                    }

                    }
                    
                  }             

?>