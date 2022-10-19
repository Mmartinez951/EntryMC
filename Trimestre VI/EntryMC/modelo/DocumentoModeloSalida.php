<?php
class RegistroSalida{
                public $Id_Registro_Salida;
                public $Id_Vehiculo;
                public $Codigo;
                public $Placa;
                public $Marca;
                public $Modelo;
                public $Nombre_Estado;
                public $Observaciones;
                public $Fecha_Registro_Salida;
                

                    function Agregar() {
                                        $conect = new Conexion();
                                        $c = $conect->conectando();
                                        $query = "select * from vehiculos where Placa = ('$this->Placa')";
                                        $ejecuta = mysqli_query($c, $query);
                                        if(mysqli_fetch_array($ejecuta)){
                                            echo "<script> alert ('El vehículo ya existe en el sistema')</script>";
                                        } else{
                                                $insert= "insert into vehiculos values( '$this->Id_Registro_Salida',
                                                                                        '$this->Id_Vehiculo',
                                                                                        '$this->Codigo',
                                                                                        '$this->Placa',
                                                                                        '$this->Marca',
                                                                                        '$this->Modelo',
                                                                                        '$this->Nombre_Estado',
                                                                                        '$this->Observaciones',
                                                                                        '$this->Fecha_Registro_Salida'
                                                                                        )";
                                            //echo ($insert);
                                            mysqli_query($c, $insert);
                                            echo "<script> alert('El vehículo fue creado correctamente')</script>";
                                        }
                                      } }