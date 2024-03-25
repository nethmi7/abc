<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Patient Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
            <a class="nav-link " aria-current="page" href="patient-add.jsp">Add Patient</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="Patient">View Patient List</a>
        </li>
       
        <li class="nav-item">
            <a class="nav-link" href="patient-search-update.jsp">Search & Update Patient</a>
        </li>
        
       
    </ul>
    </div>
    </div>
    </nav>
    <br/><br><br>
    <p class="text-center fs-3">Patient List</p>
    <p>${message}</p>
    <br/>
    <div class="container">
        <table class="table table-striped">
            <thead>
                <tr class="table-dark">
                    <th>Patient ID</th>
                    <th>Name</th>
                    <th>Date of Birth</th>
                     <th>Email</th>
                    <th>Gender</th>
					<th>Username</th>
                    <th>Password</th>
                    <th>Remove Patient</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="patient" items="${patientList}">
                    <tr>
                        <td>${patient.patientId}</td>
                        <td>${patient.name}</td>
                        <td>${patient.dateOfBirth}</td>
                         <td>${patient.email}</td>
                        <td>${patient.gender}</td>
                       
                    
                        <td>${patient.username}</td>
                        <td>${patient.password}</td>
                        <td>
                            <form method="post" action="patientController">
                                <input type="hidden" name="patientId" value="${patient.patientId}"/>
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