<!-- Autor: Luis Lennin Villarreal Castro
Fecha creación: 20/04/2022
Fecha actualización: 21/04/2022
Descripción:crea comentario form -->
<!--incuye el header de la página web -->
<%@ include file="common/headerCrear.jsp"%>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Formulario de Contacto</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/css/materialize.min.css">
        <link href="../resources/CSS/EstiloCrear.css" rel="stylesheet"> 
        <title>TesterGame</title>
    </head>
<!-- contenedor para comentarios -->
         <section class="container">
        <div class="row">
        <article class="col s6 offset-s3">

<form:form method="post" modelAttribute="comentario">
  					<div >
                    <br>            
                    </div>
<fieldset class="form-group"> 
						
						<!-- capos a llenar de los comentarios -->
                    <h3 class="center-align">Registro</h3>
                    
                    
                   <div class="input-field">
                        <form:label path="cod">Codigo Del Juego:</form:label>
                       <br>
                        <form:input path="cod" type="text" class="center-align" required="required" pattern="[0-9]{0,11}" title="Porfavor escribir solo numeros (10 numeros maximo)"/>
                    </div>
                    
                     <div class="input-field">
                     <form:label path="nombre">Nombre del juego:</form:label>
                        <br>
                        <form:input path="nombre" type="text" class="center-align" required="required"/>
                    </div>                   
                  
                    <div class="input-field">
                       <form:label path="juego">comentarios:</form:label>
                        <br>
                        <form:input  path="juego" type="text" class="center-align" required="required"/>
                    </div>

                  
</fieldset>

                    <p class="center-align">
                    <!-- boton para los comentarios -->
                    <button type="submit" class="btn btn-success" >enviar</button>
                    </p>
				    </div>
                
 </form:form>

    </article>
    </section>
 </div>
 </div>






<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
