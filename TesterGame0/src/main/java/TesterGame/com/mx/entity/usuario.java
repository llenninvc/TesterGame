/*
<!-- Autor: Luis Lennin Villarreal Castro
Fecha creación: 20/04/2022
Fecha actualización: 21/06/2022
Descripción:clase usuario -->
*/
package TesterGame.com.mx.entity;
//paqutes importados para la funcion de la clase usuario
import javax.persistence.Column;//paquete para importar columas a la BD 
import javax.persistence.Entity;//paquete para reconocer la clase Entity
import javax.persistence.GeneratedValue;//paquete GeneratedValue
import javax.persistence.GenerationType;//paquete GenerationTypo
import javax.persistence.Id;//paqute para identificar el ID
import javax.persistence.Table;//pquete para latabla dentro de la BD y el sistema 
import lombok.*;// importacion del paquete lombok 


@Entity//Prmite que esta clase se traduce a tabla en BD
@Table(name = "usuarios")//renombrar la tabla en la BD nombre de la tabla
@Data//lombok
@NoArgsConstructor//generará un constructor sin parámetros
@AllArgsConstructor//generará todos los constructores de la clase constructor 


//clase usuario 
public class usuario {

	
	@Id//Indicamos la llave primaria en la BD
	@GeneratedValue(strategy=GenerationType.IDENTITY)// numeración serial en la BD
	@Column(name="id")//columna identificada y nombrada por  un "id" dentro de la BD  
	private Long idUsuario;//variable tipo Long idUsuario
	
	@Column(name="cod", length=4,nullable=true)//formato del capo cod en la BD
	private int cod;//variable tipo int cod
	
	@Column(name="nombre", length=50,nullable=true)//formato del campo nombre  en la BD
	private String nombre;//variable tipo String nombre 
	
	
	@Column(name="juego", length=50,nullable=true)//formato del capo juego en la BD
	private String juego;//variable tipo String nombre 
	
	@Column(name="codigo", nullable=true)//formato del capo codigo en la BD
	private int codigo;//variable tipo int codigo
	
	
	





	
}
