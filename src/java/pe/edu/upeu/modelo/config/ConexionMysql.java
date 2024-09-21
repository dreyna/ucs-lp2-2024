
package pe.edu.upeu.modelo.config;

/**
 *
 * @author Docente
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
public class ConexionMysql {
    private static Connection cx;
    
    public static Connection getConection(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            if(cx==null){
                cx = DriverManager.getConnection("jdbc:mysql://localhost:3306/bdcaso", "root", "");
            }
        } catch (ClassNotFoundException e) {
            System.out.println("Conexion: "+e);
        } catch (SQLException ex) {
            Logger.getLogger(ConexionOracle.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return cx;
    }
}
