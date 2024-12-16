<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="aos.dao.DatabaseProvider" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proceed</title>
        <link rel="stylesheet" href="../bootstrap/bootstrap.min.css"/
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
        <%@include file="userNav.jsp"%>
        <div class="my-1">
            <div class="table-responsive">
                <table class="table table-striped table-bordered">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>Product Name</th>
                            <th>Category</th>
                            <th>Quantity</th>
                            <th>Price ($)</th>
                        </tr>
                    </thead><%                        try {
                            Connection con = DatabaseProvider.getConn();
                            String qq = "SELECT * FROM products";
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery(qq);
                            while (rs.next()) {
                    %>
                    <tbody>
                        <tr>
                            <td><%=rs.getInt(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td>2</td>
                            <td><%=rs.getInt(4)%></td>
                            <!--                            <td>
                                                            <a href="cart.jsp?productId=<%=rs.getInt(1)%>" class="btn btn-primary btn-sm">Add to Cart</a>
                                                        </td>-->
                        </tr>
                        <%
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }

                        %>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="form-container">
            <h2 class="text-center mb-4">Payment</h2>
            <form action="" method="post">
                <!-- Payment Method -->
                <div class="mb-3">
                    <label for="paymentMethod" class="form-label">Method</label>
                    <select class="form-select" id="paymentMethod" name="paymentMethod" required>
                        <option selected disabled>Select Method</option>
                        <option class="mobile" value="Telebirr">TeleBirr</option>
                        <option class="mobile" value="Mpesa">M-Pesa</option>
                        <option class="bank" value="Enat">Enat International Bank</option>
                        <option class="bank" value="Coop">CooP International Bank</option>
                        <option class="bank" value="CBE">CBE</option>
                        <option class="bank" value="Awash">Awash International Bank</option>
                        <option class="bank" value="Abysinnia">Abysinnia International Bank</option>
                    </select>
                </div>

                <div id="mobile" class="mb-3">
                    <label for="mobileNumber" class="form-label">Phone Number</label>
                    <input type="tel" name="phoneNum" class="form-control" id="mobileNumber" placeholder="Enter Phone Number" maxlength="10" minlength="10" required>
                </div>

                <div id="bank" class="mb-3">
                    <label for="bankAcc" class="form-label">Bank Account</label>
                    <input type="number" name="bankAcc" class="form-control" id="bankAcc" placeholder="Enter product name" required>
                </div>
                <!-- Price -->
                <div class="mb-3">
                    <label for="productPrice" class="form-label">Total Price ($)= 18000</label>
                    <!--<input type="number" name="price" class="form-control" id="productPrice" placeholder="Enter product price" required>-->
                </div>

                <!-- Submit Button -->
                <div class="d-grid gap-2">
                    <button type="submit" id="mybb" class="mybb btn btn-primary">Proceed</button>
                </div>
            </form>
        </div>

        <script src="../bootstrap/bootstrap.bundle.min.js"></script>
    </body>
</html>
