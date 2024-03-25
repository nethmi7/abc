<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <meta charset="ISO-8859-1">
    <title>Update Appointment</title>
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
            <a class="nav-link " aria-current="page" href="Admin-add-appointment.jsp">Add Appointment</a>
        </li>
        
        
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="Appointment">View Appointment List</a>
        </li>
        
        <li class="nav-item">
            <a class="nav-link active" href="search-update-appointment.jsp">Search & Update Appointment</a>
        </li>
    </ul>
    </div>
    </div>
</nav>

    <div class="container">
    <br><br><br>
        <h3>Search Appointment</h3>
        <br/>
        <form method="get" action="appointment">
            <label for="appointmentID">Appointment ID: </label>
            <input type="number" class="form-control" id="appointmentID" name="appointmentID"/>
            <input type="hidden" name="type" value="specific"/>
            <br/>
            <button type="submit" class="btn btn-info">Search</button>
        </form>

        <br/>
         <div class="container-fluid p-3">
               <div class="row">
                <div class="col-md-5 offset-md-4">
				<div class="card paint-card">
				<div class="card-body">
			<p class="fs-3 text-center">Edit Appointment</p>
			<br/>
			<p>${message}</p>
			<br/>
        <form method="post" action="appointment">
            <label for="appointmentID">Appointment ID:    </label>
            <input type="text" readonly class="form-control" id="appointmentID" name="appointmentID" value="${appointment.appointmentID}"/>
            <br/>
            <br/>
            <label for="patientID">Patient ID:    </label>
            <input type="text" class="form-control" id="patientID" name="patientID"  value="${appointment.patientID}"/>
            <br/>
            <br/>
            <label for="date">Appointment Date:    </label>
            <input type="date" class="form-control" id="date" name="date"  value="${appointment.appointmentDate}"/>
            <br/>
            <br/>
            <label for="test">Test Name:    </label>
            <input type="text" class="form-control" id="test" name="test"  value="${appointment.testName}"/>
            <br/>
            <br/>
            <label for="request">Appointment Request:    </label>
            <input type="text" class="form-control" id="request" name="request"  value="${appointment.appointmentRequest}"/>
            <input type="hidden" name="type" value="update"/>
            <br/>
            <br/>
            <button type="submit" class="btn btn-warning">Update</button>
        </form>
        </div>
        </div>
        </div>
        </div>
        
    </div>
</div>
</body>
</html>