<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.LocalDate" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="menu.jsp"%>
<h1>Hello, JSP with EL and JSTL!</h1>
<br>
<br>
<h2>Borysevych Alex Sergiovich</h2>
<br>
<label>Today: <%=DateTimeFormatter.ofPattern("dd.MM.yyyy").format(LocalDate.now())%></label>
<footer>
    <%@ include file="footer.jsp"%>
</footer>
</body>
</html>
