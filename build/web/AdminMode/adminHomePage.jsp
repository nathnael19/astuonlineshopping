<%-- 
    Document   : adminHomePage
    Created on : Dec 9, 2024, 8:33:48 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
<!--        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
   -->
   <link rel="stylesheet" href="../bootstrap/bootstrap.min.css"/>
   <script src="../bootstrap/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <% if(session.getAttribute("name")==null){
            response.sendRedirect("../index.jsp");
            }%>
        
            <%@include file="adminNav.jsp" %>
    </body>
</html>
