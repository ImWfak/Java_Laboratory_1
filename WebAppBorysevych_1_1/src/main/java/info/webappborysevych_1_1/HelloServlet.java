package info.webappborysevych_1_1;

import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.io.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
    }
    public void destroy() {
    }
}