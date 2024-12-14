<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            String email = (String)session.getAttribute("loginEmail");
            String pass = (String)session.getAttribute("loginPass");
            
            if(email==null && pass==null){
                response.sendRedirect("../index.jsp?msg=Login First");
            }
        %>
        
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
                        try {
                            Connection con = DatabaseProvider.getConn();
                            String qq = "SELECT * FROM products";
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery(qq);
                            while (rs.next()) {
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
