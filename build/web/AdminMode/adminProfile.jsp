<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
    </head>
    <body>
        <% if(session.getAttribute("name")==null){
            response.sendRedirect("../index.jsp");
            }%>
        
            <%@include file="adminNav.jsp" %>
        
    </body>
</html>
