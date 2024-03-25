<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="tag" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container-fluid">
			<ul class="nav nav-tabs">
				<li class="nav-item">
					<a class="nav-link active" aria-current="page" href="#">Store</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="doctor-update.jsp">Search Specific & Update</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="add-doctor.jsp">Add</a>
				</li>
			</ul>
			<br/>
			<p>${message}</p>
			<br/>
			<div class="container">
				<table class="table table-stripped">
					<thead>
						<tr class="table-dark">
							<th>Doctor ID</th>
							<th>Doctor Name</th>
							<th>Doctor Address</th>
							<th>Doctor Email</th>
							<th>Doctor Contact Number</th>
							<th>Specialization</th>
							<th>Password</th>
							<th>Remove from Store!</th>
						</tr>
					</thead>
					<tbody>
						<tag:forEach var="doctor" items="${doctorList}">
						<tr>
							<td>${doctor.doctor_id}</td>
							<td>${doctor.doctor_name}</td>
							<td>${doctor.doctor_address}</td>
							<td>${doctor.doctor_email}</td>
							<td>${doctor.doctor_contactno}</td>
							<td>${doctor.specialization}</td>
							<td>${doctor.password}</td>
							<td>
								<form method="post" action="doctor">
									<input type="hidden" name="doctor_id" value="${doctor.doctor_id}"/>
									<input type="hidden" name="type" value="delete"/>
									<button type="submit" class="btn btn-danger">Remove</button>
								</form>
							</td>
						</tr>
						</tag:forEach>
					</tbody>
				
				</table>
			</div>
		</div>	
		<br/>

</body>
</html>