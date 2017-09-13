<?php

include_once "./app/controller/controller.php";

class Proyecto extends Controller {

    private $view;
    private $num_proyectos_pagina;


    public function __construct() {
        $this->view = $this->getTemplate("./app/views/index.html");
        $this->num_proyectos_pagina=8;
    }

    public function cargarHtmlProyectos() {
        //$proyectoHtml = $this->getTemplate("./app/views/proyecto/proyectos.html");
        $this->view = $this->renderView($this->view, "{{TITULO}}","Proyectos");
       // $this->view = $this->renderView($this->view, "{{CONTENIDO}}", $proyectoHtml);
        $this->showView($this->view);            
    }

    

}

?>