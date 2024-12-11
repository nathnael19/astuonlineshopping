<%-- 
    Document   : order
    Created on : Dec 10, 2024, 3:25:06 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Orders - Online Shopping</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .orders-table-container {
            max-width: 1000px;
            margin: 50px auto;
            padding: 30px;
            background-color: #f8f9fa;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">ASTU Online Shopping (Admin)</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="adminHomePage.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="addProduct.jsp">Add Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="order.jsp">Orders</a>
                    </li>
                </ul>
                <ul class="navbar-nav">
                    <!-- Profile Dropdown -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="profileDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Profile
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="profileDropdown">
                            <li><a class="dropdown-item" href="adminProfile.jsp">View Profile</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="../logout.jsp">Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Orders Table -->
    <div class="orders-table-container">
        <h2 class="text-center mb-6">Manage Orders</h2>
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

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
