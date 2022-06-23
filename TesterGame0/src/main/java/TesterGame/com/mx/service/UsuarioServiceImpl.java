/*
<!-- Autor: Luis Lennin Villarreal Castro
Fecha creación: 20/04/2022
Fecha actualización: 21/04/2022
Descripción: servicio de usuario clase  -->
*/
package TesterGame.com.mx.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import TesterGame.com.mx.entity.usuario;
import TesterGame.com.mx.model.IUsuarioRepository;
//clase UsuarioServiceImpl  que implementa a IUsuarioService
@Service//nos indica que la clase es un service
public class UsuarioServiceImpl  implements IUsuarioService {

	
	@Autowired//anotación que permite inyectar unas dependencias con otras dentro de Spring 
	IUsuarioRepository repository; 
//guarda el usuario creado
	@Override
	public void crearUsuario(usuario usuario) {
		repository.save(usuario);
		
	}
	//guarda el usuario actualizado
	@Override
	public void actualizarUsuario(usuario usuario) {
		repository.save(usuario);
		
	}
//elimina un usuario creado anteriormente 
	@Override
	public void eliminarUsuario(usuario usuario) {
		repository.delete(usuario);
		
	}
//lista todos los usuarios
	@Override
	public List<usuario> obtenerListaUsuario() {
		
		return repository.findAll();
	}

//lista un usuario
	@Override
	public usuario obtenerUsuario(Long idUsuario) {
		return repository.findById(idUsuario).get();
	}
	
	
}
