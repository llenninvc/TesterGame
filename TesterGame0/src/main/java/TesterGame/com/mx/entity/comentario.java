/*
<!-- Autor: Luis Lennin Villarreal Castro
Fecha creación: 20/04/2022
Fecha actualización: 21/06/2022
Descripción:clase comentario  -->
*/
package TesterGame.com.mx.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.*;



@Entity//Prmite que esta clase se traduce a tabla en BD
@Table(name = "comentario")//renombrar la tabla en la BD nombre de la tabla
@Data//lombok
@NoArgsConstructor//generará un constructor sin parámetros
@AllArgsConstructor//generará todos los constructores de la clase constructor 
//clase comentario
public class comentario {

	@Id//Indicamos la llave primaria en la BD
	@GeneratedValue(strategy=GenerationType.IDENTITY)// numeración serial en la BD
	@Column(name="id")//columna identificada y nombrada por  un "id" dentro de la BD  
	private Long idComentario;//variable tipo Long idComentario
	
	@Column(name="cod", length=4,nullable=true)//formato del capo cod en la BD
	private int cod;//variable tipo int cod
	
	@Column(name="nombre", length=50,nullable=true)//formato del capo nombre en la BD
	private String nombre;//variable tipo String nombre
	
	@Column(name="juego", length=50,nullable=true)//formato del capo juego en la BD
	private String juego;//variable tipo string juego
	
	@Column(name="comentario", length=1000,nullable=true)//formato del capo comentario en la BD
	private String comentario;//variable tipo String comentario
	
	
	
	

	
}
