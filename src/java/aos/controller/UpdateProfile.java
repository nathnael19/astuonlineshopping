package aos.controller;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;
import aos.dao.DatabaseProvider;
import java.io.PrintWriter;

@WebServlet("/UpdateProfile")
public class UpdateProfile extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String city = request.getParameter("city");
        String region = request.getParameter("region");
        String address = request.getParameter("address");
        int phoneNumber = Integer.parseInt(request.getParameter("phoneNumber"));

//        PrintWriter out = response.getWriter();
//        out.println(userId);
//        
//        String query = "update users set name='"+name+"',email='"+email+"'',city='"+city+"',region='"+region+"',address='"+address+"',phoneNumber='"+phoneNumber+"' where userId='"+userId+"';";
        String qq = "update users set fullName=?, email=?, phoneNumber=?, region=?, city=?, address=? where userId='" + userId + "';";
        String query = "select * from users where userId='" + userId + "';";
        try {
            Connection connection = DatabaseProvider.getConn();
            Statement st = connection.createStatement();

            ResultSet rs = st.executeQuery(query);
            while (rs.next()) {
                PreparedStatement stmt = connection.prepareStatement(qq);
                stmt.setString(1, name);
                stmt.setString(2, email);
                stmt.setInt(3, phoneNumber);
                stmt.setString(4, region);
                stmt.setString(5, city);
                stmt.setString(6, address);

                int row = stmt.executeUpdate();

                if (row > 0) {
                    response.sendRedirect("UserMode/userProfile.jsp?msg=success");
                } else {
                    response.sendRedirect("index.jsp");
                }

            }
        } catch (IOException | SQLException e) {
        }
    }
}
