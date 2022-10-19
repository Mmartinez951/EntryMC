<?php
class Vehiculos{
                public $Id_Vehiculo;
                public $Vehiculo_Codigo;
                public $Vehiculo_Placa;
                public $Vehiculo_Marca;
                public $Vehiculo_Modelo;
                public $Vehiculo_Color;
                public $Vehiculo_Tipo;
                public $Vehiculo_Velocidad;
                public $Vehiculo_Estado;
                

                    function Agregar() {
                                        $conect = new Conexion();
                                        $c = $conect->conectando();
                                        $query = "select * from vehiculos where Placa = ('$this->Vehiculo_Placa')";
                                        $ejecuta = mysqli_query($c, $query);
                                        if(mysqli_fetch_array($ejecuta)){
                                            echo "<script> alert ('El vehículo ya existe en el sistema')</script>";
                                        } else{
                                                $insert= "insert into vehiculos values( '$this->Id_Vehiculo',
                                                                                        '$this->Vehiculo_Codigo',
                                                                                        '$this->Vehiculo_Placa',
                                                                                        '$this->Vehiculo_Marca',
                                                                                        '$this->Vehiculo_Modelo',
                                                                                        '$this->Vehiculo_Color',
                                                                                        '$this->Vehiculo_Tipo',
                                                                                        '$this->Vehiculo_Velocidad',
                                                                                        '$this->Vehiculo_Estado'
                                                                                        )";
                                            //echo ($insert);
                                            mysqli_query($c, $insert);
                                            echo "<script> alert('El vehículo fue creado correctamente')</script>";
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
                                                                           Estado_Usuario='$this->Estado_Usuario',
                                                                           Login='$this->Usuario_Login',
                                                                           Password='$this->Usuario_Password'
                                                                           where Id_Usuario='$this->Id_Usuario'";
                                          //echo $update;
                                          mysqli_query($c,$update);
                                          echo "<script>
                                                    alert('Los datos fueron actualizados correctamente');
                                                    location.href='client-list.php';
                                                </script>";
                                          
                                       }

                    
                    function Eliminar(){
                                       try{
                                       $conect = new Conexion();
                                       $c = $conect->conectando();
                                       $query = "delete from usuarios where Id_Usuario='$this->Id_Usuario'";
                                       $d=mysqli_query($c,$query);
                                    }catch(e){
                                        echo "<script>
                                                alert('Los datos fueron eliminados correctamente');
                                                location.href='client-list.php';
                                            </script>";
                                    }

                    }
                    
                  }             

?>