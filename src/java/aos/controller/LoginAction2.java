package aos.controller;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/LoginAction2")
public class LoginAction2 extends HttpServlet {

    static String url = "jdbc:mysql://localhost:3306/aos";
    static String userName = "root";
    static String pass = "root";

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        HttpSession session = request.getSession();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url, userName, pass);
            Statement stmt = connection.createStatement();

            String query = "SELECT * FROM users WHERE email='" + email + "' and password='" + password + "'";

            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                response.sendRedirect("UserMode/homePage.jsp");

            }
            if (email.equals("admin@gmail.com") && password.equals("admin")) {
                session.setAttribute("email", email);
                response.sendRedirect("AdminMode/adminHomePage.jsp");
            } else {
                response.sendRedirect("index.jsp");

            }

        } catch (IOException | ClassNotFoundException | SQLException e) {
        }

    }
}
