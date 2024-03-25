package com.hirucode.abc.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hirucode.abc.model.Patient;
import com.hirucode.abc.service.PatientService;


@WebServlet("/patientController")
public class PatientController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        String type = request.getParameter("type");
	        PatientService patientService = PatientService.getPatientServiceInstance();

	        if (type != null && type.equals("specific")) {
	            getSpecificPatient(request, response, patientService);
	        } else {
	            getAllPatients(request, response, patientService);
	        }
	    }

	 protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        String type = request.getParameter("type");
	        PatientService patientService = PatientService.getPatientServiceInstance();

	        if (type != null && type.equals("update")) {
	            updatePatient(request, response, patientService);
	        
	        } else if (type != null && type.equals("delete")) {
	            deletePatient(request, response, patientService);
	        }else if (type != null && type.equals("add")) {
	            addPatient(request, response, patientService);
	        }
	    }


		private void getAllPatients(HttpServletRequest request, HttpServletResponse response, PatientService service)
	            throws ServletException, IOException {
	        String message = "";
	        List<Patient> patientList;

	        try {
	            patientList = service.getAllPatients();
	        } catch (ClassNotFoundException | SQLException e) {
	            message = e.getMessage();
	            patientList = new ArrayList<>();
	        }

	        request.setAttribute("message", message);
	        request.setAttribute("patientList", patientList);

	        RequestDispatcher rd = request.getRequestDispatcher("Patient.jsp");
	        rd.forward(request, response);
	    }

	    private void getSpecificPatient(HttpServletRequest request, HttpServletResponse response,
	            PatientService service) throws ServletException, IOException {
	        String patientIdStr = request.getParameter("patientId");
	        int patientId;
	        Patient patient;
	        String message = "";

	        if (patientIdStr != null && !patientIdStr.isEmpty()) {
	            try {
	                patientId = Integer.parseInt(patientIdStr);
	                patient = service.getSpecificPatient(patientId);
	            } catch (NumberFormatException | ClassNotFoundException | SQLException e) {
	                message = e.getMessage();
	                patient = new Patient();
	            }
	        } else {
	            message = "Patient ID is missing or invalid.";
	            patient = new Patient();
	        }

	        request.setAttribute("patient", patient);
	        request.setAttribute("message", message);

	        RequestDispatcher rd = request.getRequestDispatcher("patient-search-update.jsp");
	        rd.forward(request, response);
	    }
	    private void addPatient(HttpServletRequest request, HttpServletResponse response, PatientService patientService)
	            throws ServletException, IOException {
	        String name = request.getParameter("patientName");
	        String dateOfBirth = request.getParameter("dateOfBirth");
	        String email = request.getParameter("email");
	        String gender = request.getParameter("gender");
	        String username = request.getParameter("username");
	        String password = request.getParameter("password");

	        Patient patient = new Patient(name, dateOfBirth, email ,gender,
	                username, password);

	        boolean result;
	        String message = "";
	        try {
	            result = patientService.registerPatient(patient);
	            if (result) {
	                message = "Patient " + name + " has been successfully added!";
	            } else {
	                message = "Failed to add the patient! Patient: " + name;
	            }
	        } catch (ClassNotFoundException | SQLException e) {
	            message = e.getMessage();
	        }

	        request.setAttribute("message", message);

	        RequestDispatcher rd = request.getRequestDispatcher("Patient.jsp");
	        rd.forward(request, response);
	    }
	    private void updatePatient(HttpServletRequest request, HttpServletResponse response, PatientService service)
	            throws ServletException, IOException {
	        int patientId = Integer.parseInt(request.getParameter("patientId"));
	        String name = request.getParameter("patientName");
	        String dateOfBirth = request.getParameter("dateOfBirth");
	        String email = request.getParameter("email");
	        String gender = request.getParameter("gender");
	        String username = request.getParameter("username");
	        String password = request.getParameter("password");

	        Patient patient = new Patient(patientId, name, dateOfBirth,email, gender,  
	                username, password);

	        boolean result;
	        String message = "";
	        try {
	            result = service.editThePatient(patient);
	            if (result) {
	                message = "Patient " + patientId + " has been successfully updated!";
	            } else {
	                message = "Failed to update the patient! Patient ID: " + patientId;
	            }
	        } catch (ClassNotFoundException | SQLException e) {
	            message = e.getMessage();
	        }

	        request.setAttribute("message", message);

	        RequestDispatcher rd = request.getRequestDispatcher("patient-search-update.jsp");
	        rd.forward(request, response);
	    }

	

	    private void deletePatient(HttpServletRequest request, HttpServletResponse response, PatientService service)
	            throws ServletException, IOException {
	        int patientId = Integer.parseInt(request.getParameter("patientId"));

	        boolean result;
	        String message = "";
	        try {
	            result = service.deleteThePatient(patientId);
	            if (result) {
	                message = "Patient ID " + patientId + " has been successfully deleted!";
	            } else {
	                message = "Failed to delete the patient! Patient ID: " + patientId;
	            }
	        } catch (ClassNotFoundException | SQLException e) {
	            message = e.getMessage();
	        }

	        HttpSession session = request.getSession();

	        try {
	            List<Patient> patientList = service.getAllPatients();
	            session.setAttribute("patientList", patientList);
	        } catch (ClassNotFoundException | SQLException e) {
	            message = e.getMessage();
	        }

	        session.setAttribute("message", message);
	        response.sendRedirect("Patient.jsp");
	    }


}
