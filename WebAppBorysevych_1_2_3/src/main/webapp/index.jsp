<%@ page import="java.util.Date" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%
    /*String path = "/table.html";
    ServletContext servletContext = request.getServletContext();
    RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher(path);
    requestDispatcher.forward(request, response);*/
    /*String path = request.getContextPath() + "/table.html";
    response.sendRedirect(path);*/
%>
<h1><%= "Hello World!" %></h1>
<p><b>Aleks Borysevych Sergiovich</b></p>
<p><i><b>KN221a student, <%=new Date()%></b></i></p>
<p><a href="table.jsp">table</a></p>
<p><a href="table_forward">forward</a></p>
<p><a href="table_redirect">redirect</a></p>
</body>
</html>