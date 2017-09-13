<?php

include_once "./app/controller/user.php";
include_once "./app/controller/proyecto.php";


class Router
{

    private $user;
    private $proyecto;

    public function __construct(){
        $this->user = new User();
        $this->proyecto=new Proyecto();

    }

    public function router()
    {

        if (isset($_GET["mode"])) {
            if (isset($_SESSION["user_id"])) {

                switch ($_GET["mode"]) {

                    case "cerrar-sesion":
                        session_destroy();
                        header("Location:index.php");
                        break;

                    case "proyectos":
                        $this->proyecto->cargarHtmlProyectos();
                        break;
                    
                    default:
                        header("Location:index.php");
                        break;
                }
            }else{
                $this->user->inicioSesion();
            }
        } else if (isset($_POST["mode"])) {
            switch ($_POST["mode"]) {
                case "login":
                    $this->user->login($_POST["username"], $_POST["password"]);
                    break;

                default:
                    header("Location:index.php");
                    break;
            }
        } else {
           if (isset($_SESSION["user_id"])) {
                $this->proyecto->cargarHtmlProyectos();
           }else{
                $this->user->inicioSesion();
           }
        }
    }


}

?>