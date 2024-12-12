package aos.controller;

import aos.dao.DatabaseProvider;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet("/SignupAction")
public class SignupAction extends HttpServlet {

    static String url = "jdbc:mysql://localhost:3306/aos";
    static String userName = "root";
    static String pass = "root";

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

        String insertUser = "INSERT INTO users VALUES(?,?,?,?,?,?,?,?,?,?)";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url, userName, pass);

            Statement st = connection.createStatement();
            st.executeUpdate(createTable);

            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("select max(userId) from users");
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

            ps.executeUpdate();
        } catch (SQLException e) {
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SignupAction.class.getName()).log(Level.SEVERE, null, ex);
        }
        PrintWriter out = response.getWriter();
        out.println(id);
    }
}
