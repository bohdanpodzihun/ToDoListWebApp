<%--
  Created by IntelliJ IDEA.
  User: Podz9
  Date: 17.10.2020
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Task</title>
</head>
<body>
<form action="/tasks/create" method="post">
    <a href="/tasks/home" style="text-decoration: none">Home</a> |
    <a href="/tasks/create-task" style="text-decoration: none">Add new Task</a> |
    <a href="/tasks/list" style="text-decoration: none">Show all Tasks</a>

    <h1>Create new Task</h1>

    <table>
        <tr>
            <td>
                <label for="Name">Name: </label>
            </td>
            <td>
                <input type="text" id="Name" name="Name">
            </td>
        </tr>
        <tr>
            <td>
                <label for="Priority">Priority: </label>
            </td>
            <td>
                <select id="Priority" name="Priority">
                    <option>Low</option>
                    <option>Medium</option>
                    <option>High</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Create">
            </td>
            <td>
                <input type="reset" value="Clear">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
