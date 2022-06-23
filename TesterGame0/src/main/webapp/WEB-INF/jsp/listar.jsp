
<!--incuye el header de la página web -->
<%@ include file="common/headerTabla2.jsp"%>
<div class="panel panel-primary" >
<div class="panel-heading" >
 <br> <br> 
 <h3>Lista de Usuarios inscritos en Tester Game </h3>
  <br> <br>
</div>
<div class="panel-body" >
<div id="box">

 <section>
 <!-- ciclo para mostrar las tarjetas de usuario -->
 <c:forEach items="${listaUsuario}" var="usuario" >
 <br>

  <article>
      <h2>Usuario</h2>
    <p>Tarjeta de identificacion de usuario con datos escritos  por el creador del registro</p>
    <p>
 <tr>
 <!--incluye los datos a la tarjeta de usuarios desde BD -->
  <th width="13%">idUsuario:</th>
 <td>${usuario.idUsuario} </td><br>
  <th width="13%">cod:</th>
 <td>${usuario.cod} </td><br>
  <th width="13%">nombre:</th>
 <td>${usuario.nombre} </td><br>
  <th width="13%">juego:</th>
 <td>${usuario.juego} </td><br>
  <th width="13%">codigo:</th>
 <td>${usuario.codigo} </td><br>
 <br>
 </p>
 <!--botones de eliminar yactualizar -->
 <td><a type="button" class="btn btn-success"
 href="/actualizar-controller?idUsuario=${usuario.idUsuario}" >Actualizar </a><br>
 <a type="button" class="btn btn-warning"
 href="/eliminar-controller?idUsuario=${usuario.idUsuario}" >Eliminar </a></td>
 </tr>
 <!-- imagen de perfil de usuarios-->
     <img src="https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/62142078-a6c3-4fab-9f03-9ede1adbf7d1/de24m6w-7daa02b3-76aa-47fc-875c-c907753606d2.png/v1/crop/w_92,h_92,x_3,y_0,scl_0.10562571756602,strp/rin_by_dav_19_de24m6w-92s.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODcxIiwicGF0aCI6IlwvZlwvNjIxNDIwNzgtYTZjMy00ZmFiLTlmMDMtOWVkZTFhZGJmN2QxXC9kZTI0bTZ3LTdkYWEwMmIzLTc2YWEtNDdmYy04NzVjLWM5MDc3NTM2MDZkMi5wbmciLCJ3aWR0aCI6Ijw9MTAwMCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.tFsvUbXDPJFjtjx_W3bDoMkLV1QCZdRuBwjnTlCl6gU" alt="">
   </article>


 </c:forEach>
<br>
</section>
</div>
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
<br>
<br>
<br>
<br>
<br>
<br>
<!--incuye el pie de página de la página web -->
<%@ include file="common/footer.jsp"%>





