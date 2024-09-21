
package pe.edu.upeu.modelo.dao;

import java.util.List;
import pe.edu.upeu.modelo.entity.RolEntity;

/**
 *
 * @author Docente
 */
public interface RolDao {
    int createRol(RolEntity r);
    int updateRol(RolEntity r);
    int deleteRol(int id);
    RolEntity readRol(int id);
    List<RolEntity> readAll();
}
