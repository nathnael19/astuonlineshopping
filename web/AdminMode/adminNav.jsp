<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">ASTU Online Shopping (Admin)</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="adminHomePage.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="addProduct.jsp">Add Products</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="order.jsp">Orders</a>
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
        <script src="../bootstrap/bootstrap.bundle.min.js"></script>
    </body>
</html>
