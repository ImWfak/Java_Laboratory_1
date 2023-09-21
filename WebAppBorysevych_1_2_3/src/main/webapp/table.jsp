<%@ page import="info.webappborysevych_1_2_3.employees.Employee" %>
<%@ page import="info.webappborysevych_1_2_3.employees.EmployeeList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table style="border: 1px solid black">
    <tr>
        <th style="border: 1px solid black;">Name</th>
        <th style="border: 1px solid black;">Birthday</th>
        <th style="border: 1px solid black;">Gender</th>
        <th style="border: 1px solid black;">Salary</th>
        <th style="border: 1px solid black;">Programing Language</th>
    </tr>
    <%
        List<Employee> employeeList = EmployeeList.getInstance();
        for (Employee employee : employeeList) {
    %>
    <tr>
        <td style="border: 1px solid black"><%=employee.getName()%></td>
        <td style="border: 1px solid black"><%=employee.getBirthday()%></td>
        <td style="border: 1px solid black"><%=employee.getGender()%></td>
        <td style="border: 1px solid black"><%=employee.getSalary()%></td>
        <td style="border: 1px solid black"><%=employee.getProgramLanguage()%></td>
    </tr>
    <%
        }
    %>
</table>
<p><a href="index.jsp">TO START</a></p>
</body>
</html>
