package info.webappborysevych_1_4.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CheckLoginServlet", value = "/login")
public class CheckLoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("user") && password.equals("user"))
            request.getServletContext().getRequestDispatcher("/BorysevychL1_WEB_Main.jsp").forward(request, response);
        else
            request.getServletContext().getRequestDispatcher("/BorysevychL1_WEB_Start.html").forward(request, response);
    }
}
