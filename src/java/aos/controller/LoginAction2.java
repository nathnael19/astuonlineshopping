package aos.controller;

import aos.dao.DatabaseProvider;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/LoginAction2")
public class LoginAction2 extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        HttpSession session = request.getSession();
        if (email.equals("admin@gmail.com") && password.equals("admin")) {
            session.setAttribute("loginEmail", email);
            session.setAttribute("loginPass", password);
            response.sendRedirect("AdminMode/adminHomePage.jsp");
        } else {
            try {
                Connection connection = DatabaseProvider.getConn();
                Statement stmt = connection.createStatement();

                String query = "SELECT * FROM users WHERE email='" + email + "' and password='" + password + "'";

                ResultSet rs = stmt.executeQuery(query);

                if (rs.next()) {
                    session.setAttribute("loginEmail", email);
                    session.setAttribute("loginPass", password);
                    response.sendRedirect("UserMode/homePage.jsp");

                } else {
                    response.sendRedirect("index.jsp");
                }

            } catch (IOException | SQLException e) {
                response.sendRedirect("index.jsp");
            }
        }

    }
}
