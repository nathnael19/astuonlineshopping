package aos.controller;

import aos.dao.DatabaseProvider;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.sql.*;

@WebServlet("/ForgotPassword")
public class ForgotPassword extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) {
        int phoneNumber = Integer.parseInt(request.getParameter("phoneNumber"));
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        try {
            Connection connection = DatabaseProvider.getConn();
            Statement stmt = connection.createStatement();
            String qq = "select * from users where phoneNumber='"+phoneNumber+"'";
            String q2 = "update users set password='"+password+"' where phoneNumber='"+phoneNumber+"'";
            
            if (password.equals(confirmPassword)) {
                 ResultSet rs = stmt.executeQuery(qq);
                 while(rs.next()){
                     stmt.executeUpdate(q2);
                 }
                 
            }
        } catch (Exception e) {

        }
    }
}
