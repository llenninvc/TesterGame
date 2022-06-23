/*
<!-- Autor: Luis Lennin Villarreal Castro
Fecha creación: 20/04/2022
Fecha actualización: 21/04/2022
Descripción: interfaz usuario  -->
*/
package TesterGame.com.mx.model;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import TesterGame.com.mx.entity.usuario;

//clase interface repository para usuarios que extiende al beans usaurios
@Repository
public interface IUsuarioRepository extends JpaRepository<usuario, Long> {

}
