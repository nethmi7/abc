package com.hirucode.abc.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hirucode.abc.model.Worker;
import com.hirucode.abc.service.WorkerService;



public class WorkerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String type = request.getParameter("type");
        WorkerService workerService = WorkerService.getWorkerServiceInstance();

        if (type != null && type.equals("specific")) {
            getSpecificWorker(request, response, workerService);
        } else {
            getAllWorkers(request, response, workerService);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String type = request.getParameter("type");
        WorkerService workerService = WorkerService.getWorkerServiceInstance();

        if (type != null && type.equals("update")) {
            updateWorker(request, response, workerService);
        } else if (type != null && type.equals("add")) {
            addWorker(request, response, workerService);
        } else if (type != null && type.equals("delete")) {
            deleteWorker(request, response, workerService);
        }
    }

    private void getAllWorkers(HttpServletRequest request, HttpServletResponse response,
            WorkerService service) throws ServletException, IOException {

        String message = "";
        List<Worker> workerList;

        try {
            workerList = service.getAllWorkers();
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
            workerList = new ArrayList<Worker>();
        }

        request.setAttribute("message", message);
        request.setAttribute("workerList", workerList);

        RequestDispatcher rd = request.getRequestDispatcher("Worker.jsp");
        rd.forward(request, response);
    }

    private void getSpecificWorker(HttpServletRequest request, HttpServletResponse response,
            WorkerService service) throws ServletException, IOException {
        int idWorker = Integer.parseInt(request.getParameter("idWorker"));
        Worker worker;
        String message = "";

        try {
            worker = service.getSpecificWorker(idWorker);
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
            worker = new Worker(); // Create a new Worker object in case of exception
        }

        request.setAttribute("worker", worker);
        request.setAttribute("message", message);

        RequestDispatcher rd = request.getRequestDispatcher("search-update-worker.jsp");
        rd.forward(request, response);
    }


    private void updateWorker(HttpServletRequest request, HttpServletResponse response,
            WorkerService service) throws ServletException, IOException {

        int workerId = Integer.parseInt(request.getParameter("idWorker"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String address = request.getParameter("address");

        Worker worker = new Worker(workerId, name, email, address);

        boolean result;
        String message = "";
        try {
            result = service.editTheWorker(worker);
            if (result) {
                message = "Worker " + workerId + " has been successfully updated!";
            } else {
                message = "Failed to update the worker! Worker ID: " + workerId;
            }
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
        }

        request.setAttribute("message", message);

        RequestDispatcher rd = request.getRequestDispatcher("search-update-worker.jsp");
        rd.forward(request, response);
    }

    private void addWorker(HttpServletRequest request, HttpServletResponse response,
            WorkerService service) throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String address = request.getParameter("address");

        Worker worker = new Worker(name, email, address);

        boolean result;
        String message = "";
        try {
            result = service.registerWorker(worker);
            if (result) {
                message = "Worker has been successfully added!";
            } else {
                message = "Failed to add the worker!";
            }
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
        }

        request.setAttribute("message", message);

        RequestDispatcher rd = request.getRequestDispatcher("add-worker.jsp");
        rd.forward(request, response);
    }

    private void deleteWorker(HttpServletRequest request, HttpServletResponse response,
            WorkerService service) throws ServletException, IOException {

        int workerId = Integer.parseInt(request.getParameter("workerId"));

        boolean result;
        String message = "";
        try {
            result = service.deleteTheWorker(workerId);
            if (result) {
                message = "Worker ID " + workerId + " has been successfully deleted!";
            } else {
                message = "Failed to delete the worker! Worker ID: " + workerId;
            }
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
        }

        HttpSession session = request.getSession();

        try {
            List<Worker> workerList = service.getAllWorkers();
            session.setAttribute("workerList", workerList);
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
        }

        session.setAttribute("message", message);
        response.sendRedirect("Worker.jsp");
    }

}
