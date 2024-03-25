<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <title>Search and Update Patient</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-white fixed-top">
<div class="container-fluid">
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
            <a class="nav-link" aria-current="page" href="patient-add.jsp">Add Patient</a>
        </li>
        
        <li class="nav-item">
            <a class="nav-link " aria-current="page" href="Patient">View Patient List</a>
        </li>
        
        <li class="nav-item">
            <a class="nav-link active" href="patient-search-update.jsp">Search & Update Patient</a>
        </li>

    </ul>
    </div>
    </div>
    </nav>
 
        <div class="container">
         <br><br><br>
            <h3>Search Patient</h3>
            <br/>
            <form method="get" action="patientController">
                Enter Patient ID: 
                <input type="text" name="patientId">
                <input type="hidden" name="type" value="specific">
                
                <button type="submit" class="btn btn-info">Search</button>            
            </form>
                        
            <br/>
            <p>${searchResult}</p>
            <br/>
             <div class="container-fluid p-3">
               <div class="row">
                <div class="col-md-5 offset-md-4">
				<div class="card paint-card">
				<div class="card-body">
            <h3>Edit Patient</h3>
            <br/>
			<p>${message}</p>
			
            <br/>
            <form method="post" action="patientController">
                <label for="patientId">Patient ID:</label>
                <input type="text" readonly class="form-control" id="patientId" name="patientId" value="${not empty patient ? patient.patientId : ''}"/>
                <br/>
                <label for="patientName">Patient Name:</label>
                <input type="text" class="form-control" id="patientName" name="patientName"  value="${not empty patient ? patient.name : ''}"/>
                <br/>
                <label for="dateOfBirth">Date of Birth:</label>
                <input type="date" class="form-control" id="dateOfBirth" name="dateOfBirth"  value="${not empty patient ? patient.dateOfBirth : ''}"/>
                <br/>
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" name="email"  value="${not empty patient ? patient.email : ''}"/>
                <br/>
                <label for="gender">Gender:</label>
                <select class="form-select" id="gender" name="gender">
                    <option value="Male" ${not empty patient && patient.gender == 'Male' ? 'selected' : ''}>Male</option>
                    <option value="Female" ${not empty patient && patient.gender == 'Female' ? 'selected' : ''}>Female</option>
                    <option value="Other" ${not empty patient && patient.gender == 'Other' ? 'selected' : ''}>Other</option>
                </select>
                
                
                
                <label for="username">Username:</label>
                <input type="text" class="form-control" id="username" name="username"  value="${not empty patient ? patient.username : ''}"/>
                <br/>
                <label for="password">Password:</label>
                <input type="password" class="form-control" id="password" name="password"  value="${not empty patient ? patient.password : ''}"/>
                <input type="hidden" name="type" value="update"/>
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