package aos.controller;

import aos.dao.DatabaseProvider;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/EditProduct")
public class EditProduct extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        String name = request.getParameter("name");
        String category = request.getParameter("productCategory");
        int price = Integer.parseInt(request.getParameter("price"));

        try {
            Connection connection = DatabaseProvider.getConn();
            Statement stmt = connection.createStatement();

            String qq = "select * from products where productId='" + productId + "'";
            String updateProduct = "update products set name=?, category=?, price=? where productId='" + productId + "';";
            PreparedStatement st = connection.prepareStatement(updateProduct);

            ResultSet rs = stmt.executeQuery(qq);
            while (rs.next()) {
                st.setString(1, name);
                st.setString(2, category);
                st.setInt(3, price);
                
                int row = st.executeUpdate();
                
                if(row>0){
                response.sendRedirect("AdminMode/adminHomePage.jsp");
                }
                else{   
                response.sendRedirect("AdminMode/adminProfile.jsp");
                }
            }

        } catch (SQLException e) {
        }
    }
}
