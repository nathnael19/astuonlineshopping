<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Orders - Online Shopping</title>
    <link rel="stylesheet" href="../bootstrap/bootstrap.min.css"/>
</head>
<body>
    <%
            String email = (String)session.getAttribute("loginEmail");
            String pass = (String)session.getAttribute("loginPass");
            
            if(email==null && pass==null){
                response.sendRedirect("../index.jsp?msg=Login First");
            }
        %>
        <%@include file="adminNav.jsp"%>
    <div>
        <div class="table-responsive">
            <table class="table table-striped table-bordered">
                <thead class="table-dark">
                    <tr>
                        <th>Order ID</th>
                        <th>Product Name</th>
                        <th>Buyer's Name</th>
                        <th>Payment Method</th>
                        <th>Date</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>001</td>
                        <td>iPhone 14</td>
                        <td>John Doe</td>
                        <td>Credit Card</td>
                        <td>2024-12-10</td>
                        <td>
                            <a href="#" class="btn btn-success btn-sm">Accept</a>
                            <a href="#" class="btn btn-danger btn-sm ms-2">Reject</a>
                        </td>
                    </tr>
                    <tr>
                        <td>002</td>
                        <td>Adidas Sneakers</td>
                        <td>Jane Smith</td>
                        <td>PayPal</td>
                        <td>2024-12-09</td>
                        <td>
                            <a href="#" class="btn btn-success btn-sm">Accept</a>
                            <a href="#" class="btn btn-danger btn-sm ms-2">Reject</a>
                        </td>
                    </tr>
                    <tr>
                        <td>003</td>
                        <td>Samsung Smart TV</td>
                        <td>Emily Davis</td>
                        <td>Debit Card</td>
                        <td>2024-12-08</td>
                        <td>
                            <a href="#" class="btn btn-success btn-sm">Accept</a>
                            <a href="#" class="btn btn-danger btn-sm ms-2">Reject</a>
                        </td>
                    </tr>
                    <tr>
                        <td>004</td>
                        <td>Leather Jacket</td>
                        <td>Michael Johnson</td>
                        <td>Cash on Delivery</td>
                        <td>2024-12-07</td>
                        <td>
                            <a href="#" class="btn btn-success btn-sm">Accept</a>
                            <a href="#" class="btn btn-danger btn-sm ms-2">Reject</a>
                        </td>
                    </tr>
                    <tr>
                        <td>005</td>
                        <td>Gaming Laptop</td>
                        <td>Sarah Brown</td>
                        <td>Bank Transfer</td>
                        <td>2024-12-06</td>
                        <td>
                            <a href="#" class="btn btn-success btn-sm">Accept</a>
                            <a href="#" class="btn btn-danger btn-sm ms-2">Reject</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
   <script src="../bootstrap/bootstrap.bundle.min.js"></script>
</body>
</html>
