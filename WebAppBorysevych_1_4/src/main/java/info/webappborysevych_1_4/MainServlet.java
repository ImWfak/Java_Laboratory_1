package info.webappborysevych_1_4;

import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.io.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class MainServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
    }
    public void destroy() {
    }
}