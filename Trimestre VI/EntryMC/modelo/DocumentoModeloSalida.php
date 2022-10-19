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