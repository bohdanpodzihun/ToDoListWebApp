<%@ page import="com.softserve.itacademy.model.Task" %><%--
  Created by IntelliJ IDEA.
  User: Podz9
  Date: 17.10.2020
  Time: 18:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit existing Task</title>
</head>
<body>
<form action="/tasks/edit" method="post">
    <a href="/tasks/home" style="text-decoration: none">Home</a> |
    <a href="/tasks/create-task" style="text-decoration: none">Add new Task</a> |
    <a href="/tasks/list" style="text-decoration: none">Show all Tasks</a>

    <h1>Create new Task</h1>

    <%
        Task task = (Task) request.getAttribute("task");
    %>

    <table>
        <tr>
            <td>
                <label for="id">Id: </label>
            </td>
            <td>
                <input type="text" id="id" name="id" value="<%=task.getId()%>" disabled>
            </td>
        </tr>
        <tr>
            <td>
                <label for="Name">Name: </label>
            </td>
            <td>
                <input type="text" id="Name" name="Name" value="<%=task.getTitle()%>">
            </td>
        </tr>
        <tr>
            <td>
                <label for="Priority">Priority: </label>
            </td>
            <td>
                <select id="Priority" name="Priority" value="<%=task.getPriority()%>">
                    <option>Low</option>
                    <option>Medium</option>
                    <option>High</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Edit">
            </td>
            <td>
                <input type="reset" value="Clear">
            </td>
        </tr>
    </table>
</form>

</body>
</html>
