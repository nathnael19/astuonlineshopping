package aos.dao;
import java.sql.*;
public class DatabaseProvider {
    static Connection connection = null;
    static String url = "jdbc:mysql://localhost:3306/aos";
    static String userName = "root";
    static String password = "root";
    
    public static Connection getConn(){
        
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
           connection = DriverManager.getConnection(url,userName,password); 
        }catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
        return connection;
    }
}
