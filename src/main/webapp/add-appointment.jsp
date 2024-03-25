<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1" isELIgnored="false"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <meta charset="ISO-8859-1">
    <title>Patient Appointment</title>
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
<%@include file="component/patient-navbar.jsp" %>
<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 p-5">
				<img src="img/appoint.jpg" alt="pic" width="400px" height ="600px">
	</div>
	
   <div class="col-md-6">
   <br><br><br>
	<div class="card paint-card">
		<div class="card-body">
	   <p class="text-center fs-3">Patient Appointment</p>
        <p>${message}</p>
        <br/>
        <form method="post" action="appointment" class="row g-3">
            <br/>
            
            <label for="patientID" class="form-label">Patient ID:    </label>
            <input type="text" class="form-control" id="patientID" name="patientID"/>
            
            <br/>
            <br/>
             
             <label for="date">Appointment Date:    </label>
            <input type="date" class="form-control" id="date" name="date"/>
            
            <br/>
            <br/>
            
            <label for="test">Test Name:    </label>
            <input type="text" class="form-control" id="test" name="test"/>
            
            <br/>
            <br/>
            <label for="request">Appointment Request:    </label>
            <input type="text" class="form-control" id="request" name="request"/>
            <input type="hidden" name="type" value="add"/>
            <br/>
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
