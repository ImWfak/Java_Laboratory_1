package info.webappborysevych_1_4.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.io.*;

@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String user = request.getParameter("user");
        String password = request.getParameter("password");
        if (user.equals("user") && password.equals("user")) {
            response.sendRedirect("BorysevychL1_WEB_main.jsp");
        } else {
            response.sendRedirect("BorysevychL1_WEB_start.html");
        }
    }
 }
