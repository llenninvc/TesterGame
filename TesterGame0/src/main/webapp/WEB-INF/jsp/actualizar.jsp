<!-- Autor: Luis Lennin Villarreal Castro
Fecha creación: 20/04/2022
Fecha actualización: 21/04/2022
Descripción: actualizar -->

<%@ include file="common/headerCrear.jsp"%>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Formulario de Contacto</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/css/materialize.min.css">
        <link href="../resources/CSS/EstiloCrear.css" rel="stylesheet"> 
        <title>TesterGame</title>
    </head>

         <section class="container">
        <div class="row">
        <article class="col s6 offset-s3">

<form:form method="post" modelAttribute="usuario">
 <form:hidden path="idUsuario" />
  					<div >
                    <br>            
                    </div>
<fieldset class="form-group"> 
						
                    <h3 class="center-align">Registro</h3>
                    
                   <div class="input-field">
                        <form:label path="cod">Codigo Del Juego:</form:label>
                       <br>
                        <form:input path="cod" type="text" class="center-align" required="required"/>
                    </div>
                    
                    <div class="input-field">
                            <form:label path="nombre" class="center-align">Nombre:</form:label>
                           <br>
                            <form:input path="nombre" type="text"  class="center-align" required="required"  pattern="[A-Za-z]{1,}" title="Porfavor escribir solo letras"/>
                    </div>
                    
                    <div class="input-field">
                       <form:label path="juego">Juego:</form:label>
                        <br>
                        <form:input  path="juego" type="text" class="center-align" required="required" pattern="[A-Za-z]{1,}" title="Porfavor escribir solo letras"/>
                    </div>

                    <div class="input-field">
                     <form:label path="codigo">Codigo de Usuario:</form:label>
                        <br>
                        <form:input path="codigo" type="text" class="center-align" required="required"/>
                    </div>
</fieldset>

                    <p class="center-align">
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

