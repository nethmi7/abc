<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>KFC Colombo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Store</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="search-update-payment.jsp">Search Specific & Update</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="add-payment.jsp">Add Payment</a>
        </li>
    </ul>
    <br/>
    <p>${message}</p>
    <br/>
    <div class="container">
        <table class="table table-striped">
            <thead>
                <tr class="table-dark">
                    <th>Payment ID</th>
                    <th>Patient ID</th>
                    <th>Amount [LKR]</th>
                    <th>Payment Date</th>
                    
                    <th>Card Number</th>
                    
                    <th>CVC Number</th>
                    <th>Remove from Store</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="payment" items="${paymentList}">
                    <tr>
                        <td>${payment.idPayment}</td>
                        <td>${payment.patientID}</td>
                        <td>${payment.amount}</td>
                        <td>${payment.paymentDate}</td>
                      
                        <td>${payment.cardNo}</td>
                      
                        <td>${payment.cvcNo}</td>
                        <td>
                            <form method="post" action="paymentController">
                                <input type="hidden" name="paymentId" value="${payment.idPayment}"/>
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
