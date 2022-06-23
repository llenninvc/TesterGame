/*
<!-- Autor: Luis Lennin Villarreal Castro
Fecha creación: 20/04/2022
Fecha actualización: 21/04/2022
Descripción:comentario service -->
*/
package TesterGame.com.mx.service;

import java.util.List;

import TesterGame.com.mx.entity.comentario;

//interface de servicio de  comentarios 
public interface IComentarioService {
	public void crearComentario(comentario comentario);//service de crear un comentario
	public void actualizarComentario(comentario comentario);//service de actualizar un comentario
	public void eliminarComentario(comentario comentario);//service de eliminar un comentario
	public comentario obtenerComentario(Long idComentario);//service de obtener un comentario
	public List<comentario> obtenerListaComentario();//service de listar comentarios
}