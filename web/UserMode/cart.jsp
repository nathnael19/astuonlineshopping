<%@page import="aos.dao.DatabaseProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Cart</title>
       <link rel="stylesheet" href="../bootstrap/bootstrap.min.css"/>
   <script src="../bootstrap/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <%
//            String email = (String)session.getAttribute("loginEmail");
//            String pass = (String)session.getAttribute("loginPass");
//            
//            if(email==null && pass==null){
//                response.sendRedirect("../index.jsp?msg=Login First");
//            }
        %>
        
            <%@include file="userNav.jsp" %>
            <div class="my-6">
            <div class="table-responsive">
                <button>Total=18000</button><a href="proceed.jsp"><button  class="ms-1">Proceed</button></a>
                <table class="table table-striped table-bordered">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>Product Name</th>
                            <th>Category</th>
                            <th>Quantity</th>
                            <th>Price ($)</th>
                            <th>Actions</th>
                        </tr>
                    </thead><%
                        try {
                            Connection con = DatabaseProvider.getConn();
                            String productIdString = request.getParameter("productId");
                            Statement statement = con.createStatement();
                            String query = "create table if not exists cart(productId int not null,name varchar(100) not null, category varchar(100), quantity int,price int, totalPrice int);";
                            statement.executeUpdate(query);
                            
                            String qq = "SELECT * FROM products where productId='"+productIdString+"'";
                            Statement st = con.createStatement();
                            ResultSet rss = st.executeQuery(qq);    
                            
                            int productId = Integer.parseInt(productIdString);
                            while (rss.next()) {
                            String insertQuery = "insert into cart values(?,?,?,?,?,?)";
                            PreparedStatement stmt = con.prepareStatement(insertQuery);
                            stmt.setInt(1, productId);
                            stmt.setString(2,rss.getString(2));
                            stmt.setString(3,rss.getString(3));
                            stmt.setInt(4,1);
                            stmt.setInt(5,rss.getInt(4));
                            stmt.setInt(6,rss.getInt(4)*5);
                            
                            ResultSet rs = stmt.executeQuery();
                            while(rs.next()){
                    %>
                    <tbody>
                        <tr>
                            <td><%=rs.getInt(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td>Quantity</td>
                            <td><%=rs.getInt(4)%></td>
                            <td>
                                <a href="proceed.jsp" class="btn btn-primary btn-sm">Buy</a>
                            </td>
                        </tr>
                        <% }}
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
