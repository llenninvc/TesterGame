<!-- Autor: Luis Lennin Villarreal Castro
Fecha creación: 20/04/2022
Fecha actualización: 21/04/2022
Descripción: lista uno -->
<!--incuye el header de la página web -->
<%@ include file="common/headerTabla2Comentarios.jsp"%>
 
<br><br>
<h3>Lista de Bugs de juegos Tester Game </h3>
<br><br>

 <section>


<!--ciclo para listar todos los comentarios de la BD-->
 <c:forEach items="${listaComentario}" var="comentario" >
<!--crear las tarjetas de comentarios-->
 
 <br>

  <article>
      <h2>Reporte-Bug</h2>
    <p>Usted a comentado un bug en el juego, sus datos y reportes son:</p>
    <p>
 <tr>
 <!--llenado de los campos de comentarios-->
  <th width="13%">Comentario:</th>
 <td>${comentario.idComentario}</td><br>
  <th width="13%">Codigo:</th>
 <td>${comentario.cod} </td><br>
  <th width="13%">Nombre:</th>
 <td>${comentario.nombre} </td><br>
  <th width="13%">Comentario:</th>
 <td>${comentario.juego} </td><br>
 <br>
 </p>
 <td>
 
 
 <!--botones de actualizar y eliminar  -->
 <a type="button" class="btn btn-success"
 href="/actualizarcomentario-controller?idComentario=${idComentario}" >Actualizar </a><br>
 <a type="button" class="btn btn-warning"
 href="/eliminarcomentario-controller?idComentario=${idComentario}" >Eliminar </a></td>
 </tr>
     <img src="https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/7de78cbf-aeea-4851-aa56-d377c6ad345f/d6eo11s-c5758f3b-b486-4c49-9183-f56247fa7f7e.gif/v1/fill/w_258,h_155,q_85,strp/merchant_by_ichigo_tan_d6eo11s-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTU1IiwicGF0aCI6IlwvZlwvN2RlNzhjYmYtYWVlYS00ODUxLWFhNTYtZDM3N2M2YWQzNDVmXC9kNmVvMTFzLWM1NzU4ZjNiLWI0ODYtNGM0OS05MTgzLWY1NjI0N2ZhN2Y3ZS5naWYiLCJ3aWR0aCI6Ijw9MjU4In1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.KkVn9PR-Zet-hvpkH1V3c-TEc4hgIHFwaDRXJ81HpaM">
   </article>


 
 </c:forEach>

<br>
</section>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<!--incuye el pie de página de la página web -->
<%@ include file="common/footer.jsp"%>


