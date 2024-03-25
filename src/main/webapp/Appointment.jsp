<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <meta charset="ISO-8859-1">
    <title>Appointment List</title>
    <%@include file="component/css.jsp" %>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-white fixed-top">
<div class="container">
 <a class="navbar-brand" href="index.jsp">ABC</a>
  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      
    <ul class="navbar-nav ms-auto mb-2 mg-lg-0">
    
         <li class="nav-item">
            <a class="nav-link" href="AdminDashboard.jsp">Admin Dashboard</a>
        </li>
        
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="Admin-add-appointment.jsp">Add Appointment</a>
        </li>
        
        
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="Appointment">View Appointment List</a>
        </li>
        
        <li class="nav-item">
            <a class="nav-link" href="search-update-appointment.jsp">Search & Update Appointment</a>
        </li>
    </ul>
    </div>
    </div>
</nav>

   
    <br/><br><br>
    <p class="text-center fs-3">Appointment List</p>
    <p>${message}</p>
    <br/>
     <div class="container">
        <table class="table table-stripped">
            <thead>
            <tr class="table-dark">
                <th>Appointment ID</th>
                <th>Patient ID</th>
                <th>Appointment Date</th>
                <th>Test Name</th>
                <th>Appointment Request</th>
                <th>Remove Appointment</th>
                
            </tr>
            </thead>
            <tbody>
            <c:forEach var="appointment" items="${appointmentList}">
                <tr>
                    <td>${appointment.appointmentID}</td>
                    <td>${appointment.patientID}</td>
                    <td>${appointment.appointmentDate}</td>
                    <td>${appointment.testName}</td>
                    <td>${appointment.appointmentRequest}</td>
                    <td>
                        <form method="post" action="appointment">
                            <input type="hidden" name="appointmentID" value="${appointment.appointmentID}"/>
                            <input type="hidden" name="type" value="delete"/>
                            <button type="submit" class="btn btn-danger">Remove</button>
                        </form>
                    </td>
                    
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

<br/>
</body>
</html>