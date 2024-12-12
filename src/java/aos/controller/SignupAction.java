package aos.controller;

import aos.dao.DatabaseProvider;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/SignupAction")
public class SignupAction extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = 1;
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dob");
        String city = request.getParameter("city");
        String region = request.getParameter("region");
        String address = request.getParameter("address");
        int phoneNumber = Integer.parseInt(request.getParameter("phoneNumber"));
        String password = request.getParameter("password");

        String createTable = "CREATE TABLE IF NOT exists users(userId int not null primary key, fullName varchar(100) not null, email varchar(100), gender varchar(10),phoneNumber int not null,password varchar(50),region varchar(100),city varchar(100),address varchar(100), dob varchar(100));";
        String createTableAdmin = "CREATE TABLE IF NOT exists admin(adminId int not null primary key, fullName varchar(100) not null, email varchar(100), gender varchar(10),phoneNumber int not null,password varchar(50),region varchar(100),city varchar(100),address varchar(100), dob varchar(100));";

        String insertUser = "INSERT INTO users VALUES(?,?,?,?,?,?,?,?,?,?)";
        String insertAdmin = "INSERT INTO admin VALUES(?,?,?,?,?,?,?,?,?,?)";

        try {
            Connection connection = DatabaseProvider.getConn();
            Statement st = connection.createStatement();
            st.executeUpdate(createTable);
            st.executeUpdate(createTableAdmin);

            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("select max(userId) from users");
            ResultSet rsAdmin = stmt.executeQuery("select max(adminId) from users");

            while (rs.next()) {
                id = rs.getInt(1);
                id++;
            }
            PreparedStatement ps = connection.prepareStatement(insertUser);
            ps.setInt(1, id);
            ps.setString(2, name);
            ps.setString(3, email);
            ps.setString(4, gender);
            ps.setInt(5, phoneNumber);
            ps.setString(6, password);
            ps.setString(7, region);
            ps.setString(8, city);
            ps.setString(9, address);
            ps.setString(10, dob);

            int row1=ps.executeUpdate();
            
            PreparedStatement psAdmin = connection.prepareStatement(insertAdmin);
            psAdmin.setInt(1, id);
            psAdmin.setString(2, "Nathnael Nigussie");
            psAdmin.setString(3, "nathnael@gmail.com");
            psAdmin.setString(4, "Male");
            psAdmin.setLong(5, 919933640);
            psAdmin.setString(6, "admin");
            psAdmin.setString(7, "Oromia");
            psAdmin.setString(8, "Chiro");
            psAdmin.setString(9, "bahrdar");
            psAdmin.setString(10, "2003/12/29");
            
            int row2 = psAdmin.executeUpdate();
            if(row1>0 || row2>0){
                response.sendRedirect("signup.jsp?msg=success");
            }else{
                response.sendRedirect("signup.jsp?msg=fail");
            }
        } catch (SQLException e) {
        }
        
    }
}
