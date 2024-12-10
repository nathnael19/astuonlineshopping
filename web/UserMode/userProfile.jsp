<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <link rel="stylesheet" href="../bootstrap/bootstrap.min.css"/>
   <script src="../bootstrap/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <% if(session.getAttribute("name")==null){
            response.sendRedirect("../index.jsp");
            }%>
        
            <%@include file="userNav.jsp" %>
        <form action="Profile" method="post">
                Name:<br>
                <input type="text" value="Nathnael Nigussie" name="name"><br>
                Email:<br>
                <input type="email" value="nathnaelnigussie19@gmail.com" name="email"><br>
                City:<br>
                <input type="text" value="Adama" name="city"><br>
                Region:<br>
                <input type="text" value="Oromia" name="region"><br>
                Phone Number:<br>
                <input type="text" value="0919933640" name="phoneNumber"><br>
                Current Password:<br>
                <input type="text" value="1234" name="currentPassword"><br>
                New Password:<br>
                <input type="text" value="4321" name="newPassword"><br>
                
                <input type="submit" value="Save">
                
            </form>
    </body>
</html>
