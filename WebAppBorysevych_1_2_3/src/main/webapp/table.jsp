<%@ page import="info.webappborysevych_1_2_3.enmployees.Employee" %>
<%@ page import="java.util.List" %>
<%@ page import="info.webappborysevych_1_2_3.enmployees.EmployeeList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Hello, Page With Table</h1>
<table style="border: 1px solid black;">
    <tr>
        <th style="border: 1px solid black;">Name</th>
        <th style="border: 1px solid black;">Birthday</th>
        <th style="border: 1px solid black;">Gender</th>
        <th style="border: 1px solid black;">Salary</th>
        <th style="border: 1px solid black;">Programing Language</th>
    </tr>
    <%
        List<Employee> employees = EmployeeList.getInstance();
        for (Employee employee : employees) {
    %>
    <tr>
        <td style="border: 1px solid black;"><%=employee.getName()%></td>
        <td style="border: 1px solid black;"><%=employee.getBirthday()%></td>
        <td style="border: 1px solid black;"><%=employee.getGender()%></td>
        <td style="border: 1px solid black;"><%=employee.getSalary()%></td>
        <td style="border: 1px solid black;"><%=employee.getProgramLanguage()%></td>
    </tr>
    <%
        }
    %>
</table>
<a href="index.jsp">TO START</a>
</body>
</html>
