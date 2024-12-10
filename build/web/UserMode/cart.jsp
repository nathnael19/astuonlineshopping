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
        <% if(session.getAttribute("name")==null){
            response.sendRedirect("../index.jsp");
            }%>
        
            <%@include file="userNav.jsp" %>
            
    </body>
</html>
