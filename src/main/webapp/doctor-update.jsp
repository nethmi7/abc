<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	<meta charset="ISO-8859-1">
	<title>kfc colombo</title>
</head>
<body>
	<div class="container-fluid">
		<ul class="nav nav-tabs">
			<li class="nav-item">
				<a class="nav-link" href="doctor-index.jsp">Store</a>
			</li>
			<li class="nav-item">
				<a class="nav-link active" aria-current="page" href="#">Search Specific & Update</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="add-doctor.jsp">Add</a>
			</li>
		</ul>
		<br/>
		<br/>
		<div class="container">
			<h3>Search Product-----------------</h3>
			<br/>
			<form method="get" action="doctor">
				<label for="doctor_id">Doctor ID: </label>
				<input type="number" class="form-control" id="doctor_id" name="doctor_id"/>
				<input type="hidden" name="type" value="specific"/>
				<br/>
				<button type="submit" class="btn btn-info">Search</button>			
			</form>
						
			<br/>
			<p>${message}</p>
			<br/>
			<h3>Edit Doctor-----------------</h3>
			<br/>
			<br/>
			<form method="post" action="doctor">
				<label for="doctor_id">Doctor ID:	</label>
				<input type="text" readonly class="form-control" id="doctor_id" name="doctor_id" value="${doctor.doctor_id}"/>
				<br/>
				<br/>
				<label for="doctor_name">Doctor Name:	</label>
				<input type="text" class="form-control" id="doctor_name" name="doctor_name"  value="${doctor.doctor_name}"/>
				<br/>
				<label for="doctor_address">Doctor Address:	</label>
				<input type="text" class="form-control" id="doctor_address" name="doctor_address" value="${doctor.doctor_address }"/>
				<br/>
				<label for="doctor_email">Email:	</label>
				<input type="text" class="form-control" id="doctor_email" name="doctor_email" value="${doctor.doctor_email }"/>
				<br/>
				<label for="doctor_contactno">Contact Number:	</label>
				<input type="number" class="form-control" id="doctor_contactno" name="doctor_contactno" value="${doctor.doctor_contactno}"/>
				<br/>
				<label for="specialization">Specialization:	</label>
				<input type="text" class="form-control" id="specialization" name="specialization" value="${doctor.specialization}"/>
				<br/>
				<label for="password">Password:	</label>
				<input type="password" class="form-control" id="password" name="password" value="${doctor.password}"/>
				<input type="hidden" name="type" value="update"/>
				<br/>
				<br/>
				<button type="submit" class="btn btn-warning">Update</button>			
			</form>		
		</div>		
	</div>
</body>
</html>