/*
<!-- Autor: Luis Lennin Villarreal Castro
Fecha creación: 20/04/2022
Fecha actualización: 21/06/2022
Descripción: controller  -->
*/
package TesterGame.com.mx.controller;
import java.util.List;//paquete que nos ayuda a implemnetar un listado

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

import TesterGame.com.mx.entity.comentario;

import TesterGame.com.mx.service.IComentarioService;

@Controller//indica que la clase es un controller
public class ComentarioController {
	@Autowired
	IComentarioService service;
	//todos los returns retornan a las páginas .jsp
	//conectado a la página principal 
	//crea un comentario
	@RequestMapping(value = "/crearcomentario-controller", method = RequestMethod .GET)//Anotación que se encarga de relacionar un método con una petición http.
	public String formularioCrearComentario(ModelMap model) {
		model.addAttribute("comentario", new  comentario());
		return "crearcomentario";//crea un comentario
	}	
	
	//lista el comentario creado
	@RequestMapping (value = "/crearcomentario-controller" , method = RequestMethod .POST)//Anotación que se encarga de relacionar un método con una petición http.
	 public String crearcomentario(@Validated comentario comentario) {
	 service.crearComentario (comentario);
	 return "listarcomentario" ;//retorna a la pagina de listar comentarios
	}
	
	 //lista los comentarios
	 @RequestMapping (value = "/listarcomentario-controller" , method = RequestMethod .GET)//Anotación que se encarga de relacionar un método con una petición http.
	 public String listarcomentario(ModelMap model) {
	 model.put("listaComentario" , service.obtenerListaComentario ());
	 return "listarcomentario";//retorna a la pagina de listar comentarios
	 }
	//actualiza un comentario 
	 @RequestMapping (value = "/actualizarcomentario-controller" , method = RequestMethod .GET)//Anotación que se encarga de relacionar un método con una petición http.
	 public String formularioActualizarcomentario (@RequestParam Long idComentario, ModelMap model) {
	 comentario comentario = service.obtenerComentario (idComentario);
	 model.put("comentario", comentario);
	 return "actualizarcomentario" ;//retorna a la pagina de listar comentarios
	 }
	 //al actualizar un comentario esta se lista cuando le dan acepatar
	 @RequestMapping (value = "/actualizarcomentario-controller" , method = RequestMethod .POST)//Anotación que se encarga de relacionar un método con una petición http.
	 public String actualizarcomentario(@Validated comentario comentario) {
	 service.actualizarComentario (comentario);
	 return "redirect:/listarcomentario-controller" ;//retorna a la pagina de listar comentarios
	 }
	 //elimina un comentario
	 @RequestMapping (value = "/eliminarcomentario-controller" , method = RequestMethod .GET)//Anotación que se encarga de relacionar un método con una petición http.
	 public String eliminarcomentario(@RequestParam Long idComentario) {
	 comentario comentario= service.obtenerComentario (idComentario);
	 service.eliminarComentario ( comentario);
	 return "listarcomentario" ;//retorna a la pagina de listar comentarios
	 }
	
	
	
	
	/////////////////////////
	
	@RequestMapping("/listarUnocomentario-controller")//Anotación que se encarga de relacionar un método con una petición http.
	public String listarUnocomentario(ModelMap model) {
		return "listarcomentario";//retorna a la pagina de listar comentarios
	}		 
		
	////////////////////////////VOID////////////////////////////////////////////////////////////
	
	@RequestMapping(value = "/crearcomentario", method = RequestMethod .POST)//Anotación que se encarga de relacionar un método con una petición http.
	public void crearComentario(@RequestBody comentario comentario) {
		service.crearComentario( comentario );//service que crea el comentario
	}
	

	@RequestMapping("/modificarcomentario/{idComentario}")//Anotación que se encarga de relacionar un método con una petición http.
	public void  actualizarComentario(@RequestBody comentario comentario,
		@PathVariable("idComentario")Long idComentario) {
		 comentario.setIdComentario(idComentario);
		service.crearComentario( comentario );//service que actualiza el comentario
	}
	
	@DeleteMapping("/eliminarcomentario/{idComentario}")//asignar solicitudes HTTP DELETE a métodos de controlador específicos
	public void eliminarComentario(@RequestBody comentario comentario,
			@PathVariable("idComentario")Long idComentario) {
		comentario.setIdComentario(idComentario);
		service.eliminarComentario( comentario );//service que elimina el comentario
	}
	
	@GetMapping("/listarcomentario")
	public List<comentario> obtenerListaRegistro(){
		return service.obtenerListaComentario();	//service que lista todos los comentarios	
	}
	
	@RequestMapping("/mostrarUnocomentario/{idComentario}")//Anotación que se encarga de relacionar un método con una petición http.
	public comentario obtenerUnRegistrocomentario(@RequestBody comentario comentario,
			@PathVariable("idComentario")Long idComentario ){
		return service.obtenerComentario(idComentario );//service que lista un comentario
	}
	
	
	
}
