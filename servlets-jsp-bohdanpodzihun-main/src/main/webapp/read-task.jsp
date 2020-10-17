<%@ page import="com.softserve.itacademy.model.Task" %><%--
  Created by IntelliJ IDEA.
  User: Podz9
  Date: 17.10.2020
  Time: 19:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Read existing Task</title>
</head>
<body>
<a href="/tasks/home" style="text-decoration: none">Home</a> |
<a href="/tasks/create-task" style="text-decoration: none">Add new Task</a> |
<a href="/tasks/list" style="text-decoration: none">Show all Tasks</a>

<h1>Read existing Task</h1>

<%
    Task task = (Task) request.getAttribute("task");
%>

<p>Id: <%=task.getId()%></p>
<p>Name: <%=task.getTitle()%></p>
<p>Priority: <%=task.getPriority()%></p>
</body>
</html>
