package aos.controller;

import aos.dao.DatabaseProvider;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/AddProduct")
public class AddProduct extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = 1;
        String name = request.getParameter("name");
        String category = request.getParameter("productCategory");
        int price = Integer.parseInt(request.getParameter("price"));

        try {
            Connection connection = DatabaseProvider.getConn();
            Statement stmt = connection.createStatement();
            Statement st = connection.createStatement();

            String createTable = "CREATE TABLE IF NOT exists products(productId int not null primary key,name varchar(100) not null, category varchar(70) not null,price int not null);";
            String insertProduct = "INSERT INTO products VALUES(?,?,?,?);";

            st.executeUpdate(createTable);
            ResultSet rs = stmt.executeQuery("select max(productId) from products;");
            while (rs.next()) {
                id = rs.getInt(1);
                id++;
            }
            PreparedStatement ps = connection.prepareStatement(insertProduct);
            ps.setInt(1, id);
            ps.setString(2, name);
            ps.setString(3, category);
            ps.setInt(4, price);

            int row = ps.executeUpdate();
            if (row > 0) {
                HttpSession session = request.getSession();
                session.setAttribute("productId", id);
                response.sendRedirect("AdminMode/adminHomePage.jsp");

            } else {
                response.sendRedirect("AdminMode/userProfile.jsp");
            }
        } catch (SQLException e) {
        }

    }
}
