<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <meta charset="ISO-8859-1">
    <title>Add Patient</title>
    <%@include file="component/css.jsp" %>
    
<style type="text/css">
.paint-card {
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
}

.backImg {
	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
		url("img/lab6.jpg");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
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
            <a class="nav-link active" aria-current="page" href="patient-add.jsp">Add Patient</a>
        </li>
        
        
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="Patient">View Patient List</a>
        </li>
        
        <li class="nav-item">
            <a class="nav-link" href="patient-search-update.jsp">Search & Update Patient</a>
        </li>
    </ul>
    </div>
    </div>
</nav>
   
   <div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 p-5">
				<img src="img/manage.jpg" alt="pic" width="400px" height ="600px">
	</div>
	
   <div class="col-md-6">
  <br><br><br><br>
	<div class="card paint-card">
		<div class="card-body">
	   <p class="text-center fs-3">Add Patient</p>
        <p>${message}</p>
        <br/>
        <form method="post" action="patientController" class="row g-3">
        
           
            <div class="col-md-6">
            <label for="patientName" class="form-label">Patient Name:</label>
            <input type="text" class="form-control" id="patientName" name="patientName"/>
            </div>
           
             <div class="col-md-6">
            <label for="dateOfBirth">Date of Birth:</label>
            <input type="date" class="form-control" id="dateOfBirth" name="dateOfBirth"/>
            </div>
            <br/><br><br>
            <div class="col-md-6">
            <label for="email">Email:</label>
            <input type="email" class="form-control" id="email" name="email"/>
            </div>
            
            <div class="col-md-6">
            <label for="gender">Gender:</label>
            <select class="form-select" id="gender" name="gender">
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>
            </div>
            

           
            
             <div class="col-md-6">
            <label for="username">Username:</label>
            <input type="text" class="form-control" id="username" name="username"/>
            </div>
            
             <div class="col-md-6">
            <label for="password">Password:</label>
            <input type="password" class="form-control" id="password" name="password"/>
            </div>
            <br/>
            
             <div class="col-md-6">
            <input type="hidden" name="type" value="add"/>
            </div>
            <br/><br>
           
            <button type="submit" class="col-md-6 offset-md-3 btn btn-success">Register</button>
        </form>
    </div>
</div>
</div>
</div>
</div>
</body>
</html>
