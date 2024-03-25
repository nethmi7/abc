<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <title>Search and Update Test Result</title>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    
    <%@include file="component/css.jsp" %>
</head>
<body>
<%@include file="component/Worker-navbar.jsp" %>

    
        <br/>
        <br/>
        <div class="container">
        <br><br><br>
            <h3>Search Test Result</h3>
            <br/>
            <form method="get" action="testResultController">
                Enter Result ID: <input type="text" name="resultID">
                <input type="hidden" name="type" value="specific">
                <button type="submit" class="btn btn-info">Search</button>            
            </form>
                        
            <br/>
            <div class="container-fluid p-3">
               <div class="row">
                <div class="col-md-5 offset-md-4">
				<div class="card paint-card">
				<div class="card-body">
			<p class="fs-3 text-center">Edit Test Result</p>
			<br/>
			<p>${message}</p>
			<br/>
            <form method="post" action="testResultController">
                <label for="resultID">Result ID:</label>
                <input type="text" readonly class="form-control" id="resultID" name="resultID" value="${not empty testResult ? testResult.resultID : ''}"/>
                <br/>
                <label for="appointmentID">Appointment ID:</label>
                <input type="text" class="form-control" id="appointmentID" name="appointmentID"  value="${not empty testResult ? testResult.appointmentID : ''}"/>
                <br/>
                <label for="result">Result:</label>
                <input type="text" class="form-control" id="result" name="result"  value="${not empty testResult ? testResult.result : ''}"/>
                <br/>
                <label for="doctorName">Doctor Name:</label>
                <input type="text" class="form-control" id="doctorName" name="doctorName"  value="${not empty testResult ? testResult.doctorName : ''}"/>
                <br/>
                <label for="technicianName">Technician Name:</label>
                <input type="text" class="form-control" id="technicianName" name="technicianName"  value="${not empty testResult ? testResult.technicianName : ''}"/>
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
