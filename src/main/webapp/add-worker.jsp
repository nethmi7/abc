<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <meta charset="ISO-8859-1">
    <title>Add Technician</title>
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
            <a class="nav-link active" aria-current="page" href="add-worker.jsp">Add Technician</a>
        </li>
        
        
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="Worker">View Technician List</a>
        </li>
        
        <li class="nav-item">
            <a class="nav-link" href="search-update-worker.jsp">Search & Update Technician</a>
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
	   <p class="text-center fs-3">Add Technician</p>
        <p>${message}</p>
        <br/>
        <form method="post" action="worker">
            <br/>
            <label for="name">Name:    </label>
            <input type="text" class="form-control" id="name" name="name"/>
            <br/>
            <br/>
            <label for="email">Email:    </label>
            <input type="text" class="form-control" id="email" name="email"/>
            <br/>
            <br/>
            <label for="address">Address:    </label>
            <input type="text" class="form-control" id="address" name="address"/>
            <input type="hidden" name="type" value="add"/>
            <br/>
            <br/>
            <button type="submit" class="btn btn-primary">Register</button>
        </form>
    </div>
    </div>
    </div>
    </div>
    
</div>
</body>
</html>
