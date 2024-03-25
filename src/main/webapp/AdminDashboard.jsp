<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<%@include file="component/css.jsp" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
<%@include file="component/admin-navbar.jsp" %>
<br><br><br><br>
<div class="container p-5">
		<p class="text-center fs-3">Admin Dashboard</p>
		
		<br><br>
		<div class="row">
			


			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-circle fa-3x"></i><br>
						<p class="fs-4 text-center">
						    Patient <br>
							
						</p>
					</div>
				</div>
			</div>
			
			
			<div class="col-md-4">

				<div class="card paint-card ">
					<div class="card-body text-center text-success">
						<i class="far fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
						    Appoinment <br>
							
						</p>
					</div>
				</div>

			</div>

			<div class="col-md-4 " >
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-circle fa-3x"></i><br>
						<p class="fs-4 text-center">
						     Technician <br>
							
						</p>
					</div>
				</div>
			</div>

			
			
			<div class="col-md-4 mt-2">
			<br>

				<div class="card paint-card " data-bs-toggle="modal"
					data-bs-target="#exampleModal">
					<div class="card-body text-center text-success">
						<i class="far fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
						    Tests <br>
							
						</p>
					</div>
				</div>

			</div>

		</div>
	</div>


</body>
</html>