<%@page import="aos.dao.DatabaseProvider"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Product</title>
        <link rel="stylesheet" href="../bootstrap/bootstrap.min.css"/>
        <script src="../bootstrap/bootstrap.bundle.min.js"></script>
        <style>
            .form-container {
                max-width: 600px;
                margin: 50px auto;
                padding: 30px;
                background-color: #f8f9fa;
                border-radius: 8px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }
        </style>
    </head>
    <body>
        <%@include file="adminNav.jsp"%>
        <%
            int productId = Integer.parseInt(request.getParameter("productId"));
            try {
                Connection conn = DatabaseProvider.getConn();
                Statement stmt = conn.createStatement();
                String q1 = "select * from products where productId='" + productId + "'";

                ResultSet rs = stmt.executeQuery(q1);
                while (rs.next()) {
        %>
        <div class="form-container">
            <h2 class="text-center mb-4">Edit Product</h2>
            <form action="../EditProduct" method="post">
                <div class="mb-3">
                    <input type="hidden" name="productId" class="form-control" id="productId" value="<%=rs.getInt(1)%>" required>
                </div>
                <!-- Product Name -->
                <div class="mb-3">
                    <label for="productName" class="form-label">Product Name</label>
                    <input type="text" name="name" class="form-control" id="productName" value="<%=rs.getString(2)%>" required>
                </div>

                <!-- Category -->
                <div class="mb-3">
                    <label for="productCategory" class="form-label">Category</label>
                    <select class="form-select" id="productCategory" name="productCategory" value="<%=rs.getString(3)%>" required>
                        <option selected disabled>Select category</option>
                        <option value="Electronics">Electronics</option>
                        <option value="Footwear">Footwear</option>
                        <option value="Fashion">Fashion</option>
                        <option value="Gaming">Gaming</option>
                        <option value="Home Appliances">Home Appliances</option>
                    </select>
                </div>

                <!-- Price -->
                <div class="mb-3">
                    <label for="productPrice" class="form-label">Price ($)</label>
                    <input type="number" name="price" class="form-control" id="productPrice" value="<%=rs.getInt(4)%>" required>
                </div>
                <%}%>
                <!-- Submit Button -->
                <div class="d-grid gap-2">
                    <button type="submit" class="btn btn-primary">Update Product</button>
                </div>
            </form>
            <%
                } catch (Exception e) {
                    e.printStackTrace();
                }

            %>
        </div>
    </body>
</html>
