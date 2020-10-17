package com.softserve.itacademy.controller;

import com.softserve.itacademy.model.Priority;
import com.softserve.itacademy.model.Task;
import com.softserve.itacademy.repository.TaskRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/")
public class TestServlet extends HttpServlet {

    private TaskRepository taskRepository;

    @Override
    public void init() {
        taskRepository = TaskRepository.getTaskRepository();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        PrintWriter out = response.getWriter();
        out.print("<!DOCTYPE html>\n" +
                "<html lang=\"en\">\n" +
                "<head>\n" +
                "    <meta charset=\"UTF-8\">\n" +
                "    <title>Home page</title>\n" +
                "</head>\n" +
                "<body>\n" +
                "    <form action=\"/tasks/home\" method=\"post\">\n" +
                "        <a href=\"/tasks/home\" style=\"text-decoration: none\">Home</a> |\n" +
                "        <a href=\"/tasks/create-task\" style=\"text-decoration: none\">Add new Task</a> |\n" +
                "        <a href=\"/tasks/list\" style=\"text-decoration: none\">Show all Tasks</a>\n" +
                "\n" +
                "        <h1>Welcome to awesome To-Do List!!</h1>\n" +
                "    </form>\n" +
                "</body>\n" +
                "</html>");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String title = request.getParameter("Name");
        String priority = request.getParameter("Priority");

        Task task = new Task(title, priority);

        taskRepository.create(task);
    }
}
