<?php

class Model {
    private $connection;

    public function connect(){
        $server="localhost";
        $user="root";
        $pass="";
        $database="gestion_riesgo";
        $this->connection = mysqli_connect($server,$user,$pass,$database) or  die(("Error " . mysqli_error($this->connection)));
    }

    public function query($sql){
        return mysqli_query($this->connection,$sql);
    }

    public function multiQuery($sql){
        return mysqli_multi_query ($this->connection,$sql);
    }


    public function terminate(){
        mysqli_close($this->connection);
    }

}

?>