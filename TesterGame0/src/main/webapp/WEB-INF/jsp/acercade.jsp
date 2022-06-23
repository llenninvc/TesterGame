<!--
Autor: Luis Lennin Villarreal Castro
Fecha creación: 20/04/2022
Fecha actualización: 21/06/2022
Descripción: estilo pra la página web acercade  
-->

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Sobres nosotros</title>
        <link rel='stylesheet' href='WeStyle.css'>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <LINK REL=StyleSheet HREF="estilos.css" TYPE="text/css" MEDIA=screen>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="../estilohome.css">
        

             	<link href="../resources/CSS/acercade.css" rel="stylesheet">  
        

    </head>
    <body>

<div class='heroEffects'>
    <div class="bg">  
        <div class="arrow bouncy">  
            <svg height="25" width="50">
                <polygon points="0,0 25,10 50,0 25,25" fill="rgba(255,255,255,.5)" stroke-width="0" stroke="rgba(255,255,255,.3)"/>
            </svg>
        </div>  
        <div class="title centerV"> 
            <div>
                <div class="text"> 
                    <h1>Acerca de...</h1>
                    <p>Tester Game, tu trabajo nos ayuda mucho, gracias por tu colaboracion :)</p>

                </div>
            </div>
        </div> 
    </div> 
    <div class="shade"></div>
</div>


<!-- For scrolling -->
<div class='content'>
<br>
    <p>QU&Eacute; PROPOSITO TIENE ESTA P&Aacute;GINA???</p> 

    <p>Esta pagina tiene el proposito  de que cada persona pueda ayudar a encontrar errores en un juego en particular, por lo que podran registrar 
                    para encontrar errores en el juego seleccionado y reportar las fallas, todo esto para que el juego al lanzarse de manera oficial, no tenga fallas para 
                    los usuarios.</p>
                    <img src="../resources/img/gamer.jpg" class="attachment-full size-full lazyautosizes lazyloaded" alt=""></picture> 
	<br>
                    
                    https://i.ytimg.com/vi/x_L7ptbXBhk/hqdefault.jpg
	<p>Fundador de pagina: Luis Lennin Villarreal Castro</p>
	<img src="../resources/img/mod.jpeg" class="attachment-full size-full lazyautosizes lazyloaded" alt=""></picture> 
	 <br> <br>
	 
	<p>Programador de medio tiempo estudia en la Universidad de la sierra sur y esta enfocado en el area de informatica, de pasatiempo: jugar videojuegos,animacion 3D y edicion de imagenes.</p>

 <br><br><br>

</div>

<script>
(function () {
    $(window).scroll(function () { 
        var Num = $(window).scrollTop() / 500;
        var Num2 = $(window).scrollTop() * .0004; // higher number for more zoom
        var Num2mod = Num2 + 1;
        var Num3 = $(window).scrollTop() * .2; // Title speed
        var Num3mod = Num3 + 1;
        return $('.shade').css('opacity', Num),
        $(".bg").css({"transform":"scale(" + Num2mod + ")"}),
        $(".text").css({"margin-top":"-" + Num3mod + "px"});
    });
}.call(this));
</script>
    </body>
</html>





