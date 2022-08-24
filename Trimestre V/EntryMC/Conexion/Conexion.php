<?php

    class Conexion{
                    private $servidor = "localhost";
                    private $usuario = "root";
                    private $password = "";
                    private $db = "entry_mc";



                    public function conectando(){
                        $con = mysqli_connect($this -> servidor, $this -> usuario, $this -> password, $this-> db) or die ("Error al conectar con el servidor");
                        return $con;
                    }

    }

    $obj = new Conexion();
        if($obj -> conectando()){
                echo "Conectado al servidor";
        }
?>

