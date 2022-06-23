<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<!--/*
Autor: Luis Lennin Villarreal Castro
Fecha creación: 20/04/2022
Fecha actualización: 21/04/2022
Descripción: Interfaz de servicio para service 
*/
-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="../webjars/5.1.3/css/bootstrap.min.css">
       <link rel="stylesheet" href="../webjars/5.1.3/css/fontawesome.min.css">
      

	<link href="../resources/CSS/Estilo.css" rel="stylesheet">  
    <link href="../resources/CSS/Pag_Principal.css" rel="stylesheet"> 
    
    </head>
     <body>

      <ul>
          <li><a class="active" href="/home-controller">Tester Game</a></li>
          <li><a  class="nav-item nav-link"  href="/home-controller">Principal</a></li>
          <li><a class="nav-item nav-link"  href="/crear-controller">Crear</a></li>
          <li><a  class="nav-item nav-link"  href="listar-controller">Listar</a></li>
          <li><a class="nav-item nav-link"  href="/crearcomentario-controller">Reportar Bug</a></li>
          <li><a  class="nav-item nav-link"  href="listarcomentario-controller">ListarBug</a></li>
          <li><a class="nav-item nav-link"  href="/acercade-controller">Acerca de...</a></li>
      </ul>