<%-- 
    Document   : addProduct
    Created on : Dec 9, 2024, 9:33:42 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product - Online Shopping</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
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
                        <a class="nav-link active" href="addProduct.jsp">Add Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="order.jsp">Orders</a>
                    </li>
                </ul>
                <ul class="navbar-nav">
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

    <!-- Add Product Form -->
    <div class="form-container">
        <h2 class="text-center mb-4">Add New Product</h2>
        <form action="../AddProduct" method="post">
            <!-- Product Name -->
            <div class="mb-3">
                <label for="productName" class="form-label">Product Name</label>
                <input type="text" name="name" class="form-control" id="productName" placeholder="Enter product name" required>
            </div>

            <!-- Category -->
            <div class="mb-3">
                <label for="productCategory" class="form-label">Category</label>
                <select class="form-select" id="productCategory" name="productCategory" required>
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
                <input type="number" name="price" class="form-control" id="productPrice" placeholder="Enter product price" required>
            </div>

            <!-- Submit Button -->
            <div class="d-grid gap-2">
                <button type="submit" class="btn btn-primary">Add Product</button>
            </div>
        </form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

