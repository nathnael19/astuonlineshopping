<%@page import="aos.dao.DatabaseProvider"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin - Online Shopping</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="../bootstrap/bootstrap.min.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <%@include file="adminNav.jsp"%>
        <!-- Body Section -->
        <div class="my-6">
            <div class="table-responsive">
                <table class="table table-striped table-bordered">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>Product Name</th>
                            <th>Category</th>
                            <th>Price ($)</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <%
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
                                <a href="editProduct.jsp?productId=<%=rs.getInt(1)%>" class="btn btn-warning btn-sm">Edit</a>
                                <a href="deleteProduct.jsp?productId=<%=rs.getInt(1)%>" class="btn btn-danger btn-sm ms-2">Delete</a>
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
        <script src="../bootstrap/bootstrap.bundle.min.js"></script>
    </body>
</html>
