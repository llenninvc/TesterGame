/*
<!-- Autor: Luis Lennin Villarreal Castro
Fecha creación: 20/04/2022
Fecha actualización: 21/04/2022
Descripción: interfaz usuario service -->
*/
package TesterGame.com.mx.service;

import java.util.*;

import TesterGame.com.mx.entity.usuario;


// interfaz de usuario service para los servicios que se brindan 
public interface IUsuarioService {

	public void crearUsuario(usuario usuario);//service de crear usaurios
	public void actualizarUsuario(usuario usuario);//service de actualizar usuarios
	public void eliminarUsuario(usuario usuario);//service de eliminar usuarios
	public usuario obtenerUsuario(Long idUsuario);//service de obtener un usuario
	public List<usuario> obtenerListaUsuario();//service de listar un usuario
	
}
