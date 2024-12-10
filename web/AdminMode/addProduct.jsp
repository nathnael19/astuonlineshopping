<%-- 
    Document   : addProduct
    Created on : Dec 9, 2024, 9:33:42 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Products</title>
    </head>
    <body>
        <% if(session.getAttribute("name")==null){
            response.sendRedirect("../index.jsp");
            }%>
        
            <%@include file="adminNav.jsp" %>
            <form action="addProductAction">
                Name:<br>
                <input type="text" name="name" placeholder="Mouse"><br>
                Category<br>
                <input type="text" name="name" placeholder="Mouse"><br>
                Price<br>
                <input type="text" name="name" placeholder="Mouse"><br>
                Active:<br>
                <select name="active">
                    <option value="Yes">Yes</option>
                    <option value="No">No</option>
                </select><br>
                <input type="submit" class="btn" value="Add"><br>
            </form>
    </body>
</html>
