<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <meta charset="ISO-8859-1">
    <title>Technician</title>
</head>
<body>
<div class="container-fluid">
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Workers</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="search-update-worker.jsp">Search Specific & Update</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="add-worker.jsp">Add</a>
        </li>
    </ul>
    <br/>
    <p>${message}</p>
    <br/>
    <div class="container">
        <table class="table table-stripped">
            <thead>
            <tr class="table-dark">
                <th>Worker ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Address</th>
                <th>Remove Worker</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="worker" items="${workerList}">
                <tr>
                    <td>${worker.idWorker}</td>
                    <td>${worker.name}</td>
                    <td>${worker.email}</td>
                    <td>${worker.address}</td>
                    <td>
                        <form method="post" action="worker">
                            <input type="hidden" name="workerId" value="${worker.idWorker}"/>
                            <input type="hidden" name="type" value="delete"/>
                            <button type="submit" class="btn btn-danger">Remove</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<br/>
</body>
</html>
