<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    TH{
        color: blue;
        border: 2px solid black;
    }
    TABLE{
        border: 2px solid black;
    }
    TD{
        border: 2px solid black;
        text-align: center;
    }
</style>
<head>
    <title>Title</title>
</head>
<body>
<h1>Employees (JSP+EI+JSTL)</h1>
<br>
<a href="BorysevychL1_WEB_Main.jsp">To Main</a>
<table>
    <tr>
        <th>Name</th>
        <th>Birthday</th>
        <th>Gender</th>
        <th>Salary</th>
        <th>Programming Language</th>
    </tr>
    <c:forEach items="${employees}" var="employees">
        <tr>
            <td>${employees.name}</td>
            <td <c:if test="${employees.getYoungestEmployee() == true}">bgcolor="green"</c:if>>${employees.birthday}</td>
            <td <c:if test="${!employees.gender}">bgcolor="#ffc0cb" </c:if>>${employees.gender}</td>
            <td><fmt:formatNumber value="${employees.salary}" type="currency" currencySymbol="uah"/></td>
            <td>${employees.programLanguage}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
