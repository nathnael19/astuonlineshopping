package aos.controller;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/addProductAction")
public class AddProductAction extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        int price = Integer.parseInt(request.getParameter("price"));
        String active = request.getParameter("active");

        PrintWriter out = response.getWriter();
        out.println(name + " " + category + " " + price + " " + active);
    }
}
