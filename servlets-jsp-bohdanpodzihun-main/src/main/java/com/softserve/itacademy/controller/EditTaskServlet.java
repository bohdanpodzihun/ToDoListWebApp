package com.softserve.itacademy.controller;

import com.softserve.itacademy.model.Task;
import com.softserve.itacademy.repository.TaskRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/tasks/edit")
public class EditTaskServlet extends HttpServlet {

    private TaskRepository taskRepository;
    private Task task;

    @Override
    public void init() {
        taskRepository = TaskRepository.getTaskRepository();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        task = taskRepository.read(Integer.parseInt(request.getParameter("id")));
        request.setAttribute("task", task);
        request.getRequestDispatcher("edit-task.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        task.setTitle(request.getParameter("Name"));
        //task.setPriority(request.getParameter("Priority"));

        taskRepository.update(task.getId(), task);

        response.sendRedirect("/tasks/list");
    }
}
