package com.hirucode.abc.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.hirucode.abc.model.TestResult;
import com.hirucode.abc.service.TestResultService;


@WebServlet("/testResultController")
public class TestResultController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String type = request.getParameter("type");
        TestResultService testResultService = TestResultService.getTestResultServiceInstance();

        if (type != null && type.equals("specific")) {
            getSpecificTestResult(request, response, testResultService);
        } else {
            getAllTestResults(request, response, testResultService);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String type = request.getParameter("type");
        TestResultService testResultService = TestResultService.getTestResultServiceInstance();

        if (type != null && type.equals("update")) {
            updateTestResult(request, response, testResultService);
        } else if (type != null && type.equals("add")) {
            addTestResult(request, response, testResultService);
        } else if (type != null && type.equals("delete")) {
            deleteTestResult(request, response, testResultService);
        }
    }

    private void getAllTestResults(HttpServletRequest request, HttpServletResponse response,
            TestResultService service) throws ServletException, IOException {
        String message = "";
        List<TestResult> testResultList;

        try {
            testResultList = service.getAllTestResults();
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
            testResultList = new ArrayList<>();
        }

        request.setAttribute("message", message);
        request.setAttribute("testResultList", testResultList);

        RequestDispatcher rd = request.getRequestDispatcher("TestResult.jsp");
        rd.forward(request, response);
    }

    private void getSpecificTestResult(HttpServletRequest request, HttpServletResponse response,
            TestResultService service) throws ServletException, IOException {
        String resultIDStr = request.getParameter("resultID");
        int resultID;
        TestResult testResult;
        String message = "";

        if (resultIDStr != null && !resultIDStr.isEmpty()) {
            try {
                resultID = Integer.parseInt(resultIDStr);
                testResult = service.getSpecificTestResult(resultID);
            } catch (NumberFormatException | ClassNotFoundException | SQLException e) {
                message = e.getMessage();
                testResult = new TestResult();
            }
        } else {
            message = "Result ID is missing or invalid.";
            testResult = new TestResult();
        }

        request.setAttribute("testResult", testResult);
        request.setAttribute("message", message);

        RequestDispatcher rd = request.getRequestDispatcher("search-update-result.jsp");
        rd.forward(request, response);
    }

    private void updateTestResult(HttpServletRequest request, HttpServletResponse response,
            TestResultService service) throws ServletException, IOException {
        int resultID = Integer.parseInt(request.getParameter("resultID"));
        int appointmentID = Integer.parseInt(request.getParameter("appointmentID"));
        String result = request.getParameter("result");
        String doctorName = request.getParameter("doctorName");
        String technicianName = request.getParameter("technicianName");
        // Assuming report is a file upload field in the form
        byte[] report = null; // You need to handle file upload and get byte[] data
        
        TestResult testResult = new TestResult(resultID, appointmentID, result, doctorName, technicianName, report);

        boolean resultUpdate;
        String message = "";
        try {
            resultUpdate = service.editTheTestResult(testResult);
            if (resultUpdate) {
                message = "Test result " + resultID + " has been successfully updated!";
            } else {
                message = "Failed to update the test result! Result ID: " + resultID;
            }
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
        }

        request.setAttribute("message", message);

        RequestDispatcher rd = request.getRequestDispatcher("search-update-result.jsp");
        rd.forward(request, response);
    }

    private void addTestResult(HttpServletRequest request, HttpServletResponse response,
            TestResultService service) throws ServletException, IOException {
        System.out.println("Inside addTestResult method");

        int appointmentID = Integer.parseInt(request.getParameter("appointmentID"));
        String result = request.getParameter("result");
        String doctorName = request.getParameter("doctorName");
        String technicianName = request.getParameter("technicianName");
        System.out.println("Appointment ID: " + appointmentID);
        System.out.println("Result: " + result);
        System.out.println("Doctor Name: " + doctorName);
        System.out.println("Technician Name: " + technicianName);

        Part reportPart = request.getPart("report");
        byte[] report = null;

        if (reportPart != null) {
            try (InputStream inputStream = reportPart.getInputStream();
                    ByteArrayOutputStream outputStream = new ByteArrayOutputStream()) {
                byte[] buffer = new byte[4096];
                int bytesRead;
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                }
                report = outputStream.toByteArray();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        TestResult testResult = new TestResult(appointmentID, result, doctorName, technicianName, report);

        boolean resultAdd;
        String message = "";
        try {
            resultAdd = service.registerTestResult(testResult);
            if (resultAdd) {
                message = "Test result has been successfully added!";
            } else {
                message = "Failed to add the test result!";
            }
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
        }

        request.setAttribute("message", message);
        RequestDispatcher rd = request.getRequestDispatcher("add-result.jsp");
        rd.forward(request, response);
    }

    private void deleteTestResult(HttpServletRequest request, HttpServletResponse response,
            TestResultService service) throws ServletException, IOException {
        int resultID = Integer.parseInt(request.getParameter("resultID"));

        boolean resultDelete;
        String message = "";
        try {
            resultDelete = service.deleteTheTestResult(resultID);
            if (resultDelete) {
                message = "Test result " + resultID + " has been successfully deleted!";
            } else {
                message = "Failed to delete the test result! Result ID: " + resultID;
            }
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
        }

        request.setAttribute("message", message);

        RequestDispatcher rd = request.getRequestDispatcher("TestResult.jsp");
        rd.forward(request, response);
    }

}
