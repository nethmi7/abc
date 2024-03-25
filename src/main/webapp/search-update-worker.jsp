<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <title>Update Technician</title>
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
            <a class="nav-link" aria-current="page" href="add-worker.jsp">Add Technician</a>
        </li>
        
        <li class="nav-item">
            <a class="nav-link " aria-current="page" href="Worker">View Technician List</a>
        </li>
        
        <li class="nav-item">
            <a class="nav-link active" href="search-update-worker.jsp">Search & Update Technician</a>
        </li>

    </ul>
    </div>
    </div>
    </nav>

    <br/>
    <br/>
    <div class="container">
    <br><br><br>
        <h3>Search Worker</h3>
        <br/>
        <form method="get" action="worker">
            <label for="idWorker">Worker ID: </label>
            <input type="number" class="form-control" id="idWorker" name="idWorker"/>
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
            <h3>Edit Technician</h3>
            <br/>
			
        <form method="post" action="worker">
            <label for="idWorker">Technician ID:    </label>
           <input type="text" readonly class="form-control" id="idWorker" name="idWorker" value="${worker.idWorker}"/>

            <br/>
            <br/>
            <label for="name">Name:    </label>
            <input type="text" class="form-control" id="name" name="name"  value="${worker.name}"/>
            <br/>
            <br/>
            <label for="email">Email:    </label>
            <input type="text" class="form-control" id="email" name="email"  value="${worker.email}"/>
            <br/>
            <br/>
            <label for="address">Address:    </label>
            <input type="text" class="form-control" id="address" name="address"  value="${worker.address}"/>
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
