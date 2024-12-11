/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aos.controller;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/LoginAction2")
public class LoginAction2 extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("name");
        String pass = request.getParameter("password");

        HttpSession session = request.getSession();
        
        if(name.equals("test") && pass.equals("1234")){
            session.setAttribute("name", name);
            response.sendRedirect("UserMode/homePage.jsp");
        }else if(name.equals("admin") && pass.equals("admin")){
            session.setAttribute("name", name);
            response.sendRedirect("AdminMode/adminHomePage.jsp");
        }
        
        else{
            response.sendRedirect("index.jsp");
           
        }
    }
}
