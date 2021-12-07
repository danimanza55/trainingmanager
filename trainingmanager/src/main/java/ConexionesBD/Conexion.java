package ConexionesBD;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class Conexion {
    
    public static final String BD = "training_manager";//base de datos a la que accedera el programa
    public static final String USER = "root";
    public static final String CLAVE = "";
    public static final String URL = "jdbc:mysql://localhost:3306/" + BD; //localizacion de la base de datos
    
    
    public static Connection conectar()  //probar que no sea de tipo void i sea de tipo Connection
    {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }

        try {
            con = (Connection) DriverManager.getConnection(URL, USER, CLAVE);

           
        } catch (SQLException ex) {
            System.out.println("Error: " + ex.getMessage());
        }
        
        return con;
    }
    
}
