/*
<!-- Autor: Luis Lennin Villarreal Castro
Fecha creación: 20/04/2022
Fecha actualización: 21/06/2022
Descripción: interfaz comentario  -->
*/
package TesterGame.com.mx.model;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import TesterGame.com.mx.entity.comentario;
// clase interface repository para comentario que extiende al beans comentario 
@Repository
public interface IComentarioRepository extends JpaRepository<comentario, Long>{

}
