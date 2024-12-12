<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="aos.dao.DatabaseProvider"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Shopping</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../bootstrap/bootstrap.min.css"/>
   <script src="../bootstrap/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <%@include file="userNav.jsp" %>
    <div class="my-6">
        <h1 class="text-center">Available Products</h1>
        <div class="table-responsive">
            <table class="table table-striped table-bordered">
                <thead class="table-dark">
                    <tr>
                        <th>#</th>
                        <th>Product Name</th>
                        <th>Category</th>
                        <th>Price ($)</th>
                        <th>Actions</th>
                    </tr>
                </thead><%
                    try{
                    Connection con = DatabaseProvider.getConn();
//                    int id = (Integer)session.getAttribute("productId");
                String qq= "SELECT * FROM products";
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(qq);
                while(rs.next()){
                
                %>
                <tbody>
                    <tr>
                        <td><%=rs.getInt(1)%></td>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getInt(4)%></td>
                        <td>
                            <a href="#" class="btn btn-primary btn-sm">Add to Cart</a>
                        </td>
                    </tr>
                    <% }
}catch(Exception e){
e.printStackTrace();
}
                    
                    %>
                </tbody>
            </table>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
