/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aos.controller;

import aos.dao.DatabaseProvider;
import com.mysql.cj.conf.ConnectionPropertiesTransform;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/AddProduct")
public class AddProduct extends HttpServlet{
    
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
        int id =1;
         String name = request.getParameter("name");
        String category = request.getParameter("productCategory");
        int price = Integer.parseInt(request.getParameter("price"));
        
        String insertProduct = "INSERT INTO products VALUES(?,?,?,?)";
        
//        try{
//            Connection connection = DatabaseProvider.getConn();
//            Statement stmt = connection.createStatement();
//            ResultSet rs = stmt.executeQuery("select max(productId) from product");
//            while(rs.next()){
//                id=rs.getInt(1);
//                id++;
//            }
//            PreparedStatement ps = connection.prepareStatement(insertProduct);
//            ps.setInt(1, id);
//            ps.setString(2, name);
//            ps.setString(3, category);
//            ps.setInt(4,price);
//            
//            ps.executeUpdate();
//        }catch(SQLException e){
//        }
       
        PrintWriter out = response.getWriter();
        out.println(name +" " +category+" "+price);
            
    }
}
