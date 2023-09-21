<%@ page import="java.time.LocalDate" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body>
<h1>Hello, WEB World!</h1>
<br>
<h2>Borysevych Alex Sergeevich</h2>
<br>
<br>
<p><b><i>SEMIT department, <%= LocalDate.now().getYear() %></i></b></p>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>