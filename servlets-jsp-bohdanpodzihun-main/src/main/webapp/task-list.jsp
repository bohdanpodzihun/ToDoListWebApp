<%@ page import="com.softserve.itacademy.model.Task" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Podz9
  Date: 17.10.2020
  Time: 14:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Task</title>
</head>
<body>
<form action="/tasks/list" method="post">
<a href="/tasks/home" style="text-decoration: none">Home</a> |
<a href="/tasks/create-task" style="text-decoration: none">Add new Task</a> |
<a href="/tasks/list" style="text-decoration: none">Show all Tasks</a>

<h1>List of Tasks</h1>

<table border="1">
    <tr>
        <th>No.</th>
        <th>Name</th>
        <th>Priority</th>
        <th colspan="3">Operation</th>
    </tr>

    <%
        for (Task task : (List<Task>)request.getAttribute("tasks")) {
    %>
    <tr>
        <td><%=task.getId()%></td>
        <td><%=task.getTitle()%></td>
        <td><%=task.getPriority()%></td>
        <td>
            <a href="tasks/read?id=<%=task.getId()%>">Read</a>
        </td>
        <td>
            <a href="tasks/edit?id=<%=task.getId()%>">Edit</a>
        </td>
        <td>
            <a href="tasks/delete?id=<%=task.getId()%>">Delete</a>
        </td>
    </tr>
    <%
        }
    %>
</table>
</form>
</body>
</html>
