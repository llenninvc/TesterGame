/*
<!-- Autor: Luis Lennin Villarreal Castro
Fecha creación: 20/04/2022
Fecha actualización: 21/06/2022
Descripción: controller comentario -->
*/
package TesterGame.com.mx.controller;
//paquete que nos ayuda a implemnetar un listado
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import TesterGame.com.mx.entity.usuario;
import TesterGame.com.mx.service.IUsuarioService;



@Controller//indica que la clase es un controller
public class UsuarioController {
	@Autowired
	IUsuarioService service;
	//todos los returns retornan a las páginas .jsp
	//conectado a la página principal 
	@RequestMapping("/home-controller")//Anotación que se encarga de relacionar un método con una petición http.
	public String paginaPrincipal(ModelMap model) {
		return "home";//retorna a la página home
	}
	//página para acerca de 
	@RequestMapping( "/acercade-controller")//Anotación que se encarga de relacionar un método con una petición http.
	public String acercade(ModelMap model) {
		return "acercade";//retorna a la página acercade
	}
	//página para crear 
	@RequestMapping(value = "/crear-controller", method = RequestMethod .GET)//Anotación que se encarga de relacionar un método con una petición http.
	public String formularioCrear(ModelMap model) {
		model.addAttribute("usuario", new usuario());
		return "crear";//retorna a la página
	}	
	
	//página para clistar creados
	@RequestMapping (value = "/crear-controller" , method = RequestMethod .POST)//Anotación que se encarga de relacionar un método con una petición http.
	 public String crear(@Validated usuario usuario) {
	 service.crearUsuario (usuario);
	 return "listar" ;//retorna a la página listar
	}
	//////
	
	 
	 @RequestMapping (value = "/listar-controller" , method = RequestMethod .GET)//Anotación que se encarga de relacionar un método con una petición http.
	 public String listar(ModelMap model) {
	 model.put("listaUsuario" , service.obtenerListaUsuario ());
	 return "listar";//retorna a la página listar
	 }
	
	 @RequestMapping (value = "/actualizar-controller" , method = RequestMethod .GET)//Anotación que se encarga de relacionar un método con una petición http.
	 public String formularioActualizar (@RequestParam Long idUsuario, ModelMap model) {
	 usuario usuario = service.obtenerUsuario (idUsuario);
	 model.put("usuario", usuario);
	 return "actualizar" ;//retorna a la página listar
	 }
	 @RequestMapping (value = "/actualizar-controller" , method = RequestMethod .POST)//Anotación que se encarga de relacionar un método con una petición http.
	 public String actualizar(@Validated usuario usuario) {
	 service.actualizarUsuario (usuario);
	 return "listar" ;//retorna a la página listar
	 }
	 @RequestMapping (value = "/eliminar-controller" , method = RequestMethod .GET)//Anotación que se encarga de relacionar un método con una petición http.
	 public String eliminar(@RequestParam Long idUsuario) {
	 usuario usuario = service.obtenerUsuario (idUsuario);
	 service.eliminarUsuario (usuario);
	 return "listar" ;//retorna a la página listar
	 }
	
	
	
	
	/////////////////////////
	
	@RequestMapping("/listarUno-controller")//Anotación que se encarga de relacionar un método con una petición http.
	public String listarUno(ModelMap model) {
		return "listarUno";//retorna a la página listar
	}		 
		
	////////////////////////////VOID////////////////////////////////////////////////////////////
	
	@RequestMapping(value = "/crear", method = RequestMethod .POST)//Anotación que se encarga de relacionar un método con una petición http.
	public void crearUsuario(@RequestBody usuario usuario) {
		service.crearUsuario(usuario);//implementa el service para crear
	}
	

	@RequestMapping("/modificar/{idUsuario}")//Anotación que se encarga de relacionar un método con una petición http.
	public void  actualizarUsuario(@RequestBody usuario usuario,
		@PathVariable("idUsuario")Long idUsuario) {
		usuario.setIdUsuario(idUsuario);
		service.crearUsuario(usuario);//implementa el service para actualizar
	}
	
	@DeleteMapping("/eliminar/{idUsuario}")//asignar solicitudes HTTP DELETE a métodos de controlador específicos
	public void eliminarUsuario(@RequestBody usuario usuario,
			@PathVariable("idUsuario")Long idUsuario) {
		usuario.setIdUsuario(idUsuario);
		service.eliminarUsuario(usuario);//implementa el service para crear un usuario
	}
	
	@GetMapping("/listar")//
	public List<usuario> obtenerListaRegistro(){
		return service.obtenerListaUsuario();//implementa el service para listar los usuarios	
	}
	
	@RequestMapping("/mostrarUno/{idUsuario}")//Anotación que se encarga de relacionar un método con una petición http.
	public usuario obtenerUnRegistro(@RequestBody usuario usuario,
			@PathVariable("idUsuario")Long idUsuario){
		return service.obtenerUsuario(idUsuario);//implementa el service para listar un usuario
	}
	
	
	
	
	
	
	
}
