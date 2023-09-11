<%@ page import="info.webappborysevych_1_2_3.Employee" %>
<%@ page import="java.util.List" %>
<%@ page import="info.webappborysevych_1_2_3.EmployeeList" %><%--
  Created by IntelliJ IDEA.
  User: borus
  Date: 9/11/2023
  Time: 11:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Hello, Page With Table</h1>
<table>
    <tr>
        <th>Name</th>
        <th>Birthday</th>
        <th>Gender</th>
        <th>Salary</th>
        <th>Programing Language</th>
    </tr>
    <%
        List<Employee> employees = EmployeeList.getInstance();
        for (Employee employee : employees) {
    %>
    <tr>
        <td style="padding: 3px"><%=employee.getName()%></td>
        <td style="padding: 3px"><%=employee.getBirthday()%></td>
        <td style="padding: 3px"><%=employee.getGender()%></td>
        <td style="padding: 3px"><%=employee.getSalary()%></td>
        <td style="padding: 3px"><%=employee.getProgramLanguage()%></td>
    </tr>
    <%
        }
    %>
</table>
<a href="index.jsp">TO START</a>
</body>
</html>
