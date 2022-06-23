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
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
       <LINK REL=StyleSheet HREF="estilos.css" TYPE="text/css" MEDIA=screen>
       <link rel="preconnect" href="https://fonts.gstatic.com">
       <link href="https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap" rel="stylesheet">
       <LINK REL=StyleSheet HREF="Estilo.css" TYPE="text/css" MEDIA=screen>

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
   