package info.webappborysevych_1_4.servlet;

import info.webappborysevych_1_4.employee.EmployeeList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import java.io.IOException;

@WebServlet(name = "JSPT_Servlet")
public class JSTL_Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EmployeeList employees = EmployeeList.getInstance();
        request.setAttribute("employees", employees);
        RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/table_jstl.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
