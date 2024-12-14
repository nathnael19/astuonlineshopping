<%@page import="aos.dao.DatabaseProvider"%>
<%@page import="java.sql.*"%>

<%
            String email = (String)session.getAttribute("loginEmail");
            String pass = (String)session.getAttribute("loginPass");
            
            if(email==null && pass==null){
                response.sendRedirect("../index.jsp?msg=Login First");
            }
        %>
<%
    int productId = Integer.parseInt(request.getParameter("productId"));

    String query = "delete from products where productId='" + productId + "'";

    try {
        Connection connection = DatabaseProvider.getConn();
        Statement stmt = connection.createStatement();
        int row = stmt.executeUpdate(query);

        if (row > 0) {
            response.sendRedirect("adminHomePage.jsp");
        } else {
            response.sendRedirect("adminProfile.jsp");
        }
    } catch (Exception e) {

    }

%>