<%-- 
    Document   : homePage
    Created on : Dec 9, 2024, 4:07:09 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </head>

    <body>
        <% if(session.getAttribute("name")==null){
            response.sendRedirect("../index.jsp");
            }%>
            <%@include file="userNav.jsp" %>
        <h1>Hello <%=session.getAttribute("name")%></h1>
        <div class="btn btn-outline-success">btn</div>
        

        <table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Product ID</th>
      <th scope="col">Name</th>
      <th scope="col">Category</th>
      <th scope="col">Price</th>
      <th scope="col">Add to Cart</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mouse</td>
      <td>Accessory</td>
      <td>$20</td>
      <td><a href="#">Add to Cart</a></td>
    </tr>
     <tr>
      <th scope="row">2</th>
      <td>Mouse</td>
      <td>Accessory</td>
      <td>$20</td>
     <td><a href="#">Add to Cart</a></td>
    </tr> <tr>
      <th scope="row">3</th>
      <td>Mouse</td>
      <td>Accessory</td>
      <td>$20</td>
      <td><a href="#">Add to Cart</a></td>
    </tr>
    <tr>
      <th scope="row">1</th>
      <td>Mouse</td>
      <td>Accessory</td>
      <td>$20</td>
      <td><a href="#">Add to Cart</a></td>
    </tr>
     <tr>
      <th scope="row">2</th>
      <td>Mouse</td>
      <td>Accessory</td>
      <td>$20</td>
     <td><a href="#">Add to Cart</a></td>
    </tr> <tr>
      <th scope="row">3</th>
      <td>Mouse</td>
      <td>Accessory</td>
      <td>$20</td>
      <td><a href="#">Add to Cart</a></td>
    </tr>
   
  </tbody>
</table>
        
        <select class="form-select" aria-label="Default select example">
  <option selected>Open this select menu</option>
  <option value="1">One</option>
  <option value="2">Two</option>
  <option value="3">Three</option>
</select>
        
        <footer class="center">
            Developed by Astu Students C 2025
        </footer>
    </body>
</html>
