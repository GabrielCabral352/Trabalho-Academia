
package crud;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;

public class Conn {
    private static Connection conn;
    public static Connection getConnection() throws SQLException{
        String db = "jdbc:mysql://localhost:3306/db_academia";
        String user = "root";
        String pass = "";
        if(conn == null){
            conn = DriverManager.getConnection(db, user, pass);
        }
        return conn;
    }
}
