package pe.edu.upeu.modelo.test;

import com.google.gson.Gson;
import pe.edu.upeu.modelo.config.ConexionMysql;
import pe.edu.upeu.modelo.config.ConexionOracle;
import pe.edu.upeu.modelo.dao.RolDao;
import pe.edu.upeu.modelo.dao.UsuarioDao;
import pe.edu.upeu.modelo.daoImpl.RolDaoImpl;
import pe.edu.upeu.modelo.daoImpl.UsuarioDaoImpl;


/**
 *
 * @author Docente
 */
public class Test {
  static UsuarioDao udao = new UsuarioDaoImpl();
  static RolDao rdao = new RolDaoImpl();
  static Gson g = new Gson();
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        //System.out.println(g.toJson(rdao.createRol(new RolEntity(0,"Prueba",1))));
        //System.out.println(g.toJson(rdao.updateRol(new RolEntity(41,"Prueba333",1))));
        //System.out.println(g.toJson(rdao.deleteRol(41)));
        //System.out.println(g.toJson(rdao.readRol(21)));
        //System.out.println(g.toJson(rdao.readAll()));
        
        if(ConexionOracle.getConection()!=null){
            System.out.println("1");
        }else{
            System.out.println("0");
        }
    }
    static void todo(){
     if(ConexionOracle.getConection()!=null){
            System.out.println("Conectado Oracle");
        }else{
            System.out.println("Error");
        }
        if(ConexionMysql.getConection()!=null){
            System.out.println("Conectado Mysql");
        }else{
            System.out.println("Error");
        }
        System.out.println(g.toJson(udao.login("dreyna", "1234567")));
    }
    
}
