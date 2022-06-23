<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<!--/*
Autor: Luis Lennin Villarreal Castro
Fecha creación: 20/04/2022
Fecha actualización: 21/04/2022
Descripción: Interfaz de servicio para service 

    
<div class="container">
        <div class="row justify-content-md-center">
<div class="col-sm-13 col-md-6 col-xl-4">

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
       

           <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>

	
   
    	<link href="../resources/CSS/tarjetaComentarios.css" rel="stylesheet">  
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


    <script>
    
var colors = new Array(
  [62,35,255],
  [60,255,60],
  [255,35,98],
  [45,175,230],
  [255,0,255],
  [255,128,0]);

var step = 0;
//color table indices for: 
// current color left
// next color left
// current color right
// next color right
var colorIndices = [0,1,2,3];

//transition speed
var gradientSpeed = 0.002;

function updateGradient()
{
  
  if ( $===undefined ) return;
  
var c0_0 = colors[colorIndices[0]];
var c0_1 = colors[colorIndices[1]];
var c1_0 = colors[colorIndices[2]];
var c1_1 = colors[colorIndices[3]];

var istep = 1 - step;
var r1 = Math.round(istep * c0_0[0] + step * c0_1[0]);
var g1 = Math.round(istep * c0_0[1] + step * c0_1[1]);
var b1 = Math.round(istep * c0_0[2] + step * c0_1[2]);
var color1 = "rgb("+r1+","+g1+","+b1+")";

var r2 = Math.round(istep * c1_0[0] + step * c1_1[0]);
var g2 = Math.round(istep * c1_0[1] + step * c1_1[1]);
var b2 = Math.round(istep * c1_0[2] + step * c1_1[2]);
var color2 = "rgb("+r2+","+g2+","+b2+")";

 $('#gradient').css({
   background: "-webkit-gradient(linear, left top, right top, from("+color1+"), to("+color2+"))"}).css({
    background: "-moz-linear-gradient(left, "+color1+" 0%, "+color2+" 100%)"});
  
  step += gradientSpeed;
  if ( step >= 1 )
  {
    step %= 1;
    colorIndices[0] = colorIndices[1];
    colorIndices[2] = colorIndices[3];
    
    //pick two new target color indices
    //do not pick the same as the current one
    colorIndices[1] = ( colorIndices[1] + Math.floor( 1 + Math.random() * (colors.length - 1))) % colors.length;
    colorIndices[3] = ( colorIndices[3] + Math.floor( 1 + Math.random() * (colors.length - 1))) % colors.length;
    
  }
}

setInterval(updateGradient,10);
    </script>

    <div id="gradient"/>
    
