<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <title>Add Test Result</title>
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
   <%@include file="component/Worker-navbar.jsp" %>
        <div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 p-5">
				<img src="img/result.jpg" alt="pic" width="400px" height ="600px">
	</div>
	
   <div class="col-md-6">
   <br><br>
	<div class="card paint-card">
	
		<div class="card-body">
	   <p class="text-center fs-3">Test Result</p>
        <p>${message}</p>
        <br/>
            <form method="post" action="testResultController" enctype="multipart/form-data">
    <br/>
    <label for="appointmentID">Appointment ID:</label>
    <input type="text" class="form-control" id="appointmentID" name="appointmentID"/>
    <br/>
    <label for="result">Result:</label>
    <input type="text" class="form-control" id="result" name="result"/>
    <br/>
    <label for="doctorName">Doctor Name:</label>
    <input type="text" class="form-control" id="doctorName" name="doctorName"/>
    <br/>
    <label for="technicianName">Technician Name:</label>
    <input type="text" class="form-control" id="technicianName" name="technicianName"/>
    <br/>
    <label for="report">Report:</label>
    <input type="file" class="form-control" id="report" name="report"/>
    <input type="hidden" name="type" value="add"/>
    <br/>
    <button type="submit" class="col-md-6 offset-md-3 btn btn-success">Submit</button>           
</form>
        </div>      
    </div>
    </div>
    </div>
    </div>
</body>
</html>
