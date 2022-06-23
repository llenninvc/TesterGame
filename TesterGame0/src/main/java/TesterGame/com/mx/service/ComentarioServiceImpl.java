/*
<!-- Autor: Luis Lennin Villarreal Castro
Fecha creación: 20/04/2022
Fecha actualización: 21/04/2022
Descripción: comentario service  -->
*/
package TesterGame.com.mx.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import TesterGame.com.mx.entity.comentario;
import TesterGame.com.mx.model.IComentarioRepository;
//clase ComentarioServiceImpl que implementa a IComentarioService
@Service//nos indica que la clase es un service
public class ComentarioServiceImpl implements IComentarioService {

	@Autowired
	IComentarioRepository repository;
//guarda un comentario
	public void crearcomentario(comentario comentario) {
		repository.save(comentario);

	}
//guarda un comnentario actualizado
	public void actualizarcomentario(comentario comentario) {
		repository.save(comentario);

	}
//elimina un comentario de la lista de comentarios
	public void eliminarcomentario(comentario comentario) {
		repository.delete(comentario);

	}
//obtiene un comentario con su id principal 
	public comentario obtenercomentario(Long idComentario) {

		return repository.findById(idComentario).get();
	}
//lista todos los comentarios
	@Override
	public List<comentario> obtenerListaComentario() {

		return repository.findAll();
	}
//crea los comentarios
	@Override
	public void crearComentario(comentario comentario) {
		repository.save(comentario);

	}
//actualiza un comentario y lo guarda
	@Override
	public void actualizarComentario(comentario comentario) {
		repository.save(comentario);

	}
//elimina un comentario
	@Override
	public void eliminarComentario(comentario comentario) {
			repository.delete(comentario);


	}
//obtiene un comentario con su id dentro de una lista 
	@Override
	public comentario obtenerComentario(Long idComentario) {
		return repository.findById(idComentario).get();
	}

}
