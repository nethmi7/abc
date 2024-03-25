<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <%@include file="component/css.jsp" %>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<style type="text/css">
 body{
     background: #fff;
    
}
 .btn{
   font-size: 0.8rem;
   font-weight: 700;
   }
.btn i{
    verticle-align: text-top;
}
   .bg-holder{
     position: absolute;
     width: 100%;
     min-height: 100%;
     top: 0;
     left: 0;
     background-size: conver;
     background-position: center;
     background-repeat: no-repeat;
   }
</style>
</head>
<body>
<%@include file="component/navbar.jsp" %>
<div class="row vh-100 g-0">
      <div class="col-lg-6 position-relative d-done d-lg-block">
          <div class="bg-holder">
              <img alt="back" src="img/admin.jpg" width="100%" height="50%" >
          </div>
      </div>
<div class="col-lg-6">
          <div class="row align-items-center justify-content-center h-100 g-0 px-4 px-sm-0">
             <div class="col col-dm-6 col-lg-7 col=xl-6"></div>
       <div class="text-center mb-5">
                  <h3 class="fw-bold">Admin Login</h3><br><br>
                  <p class="text-secondary">Get access to your account</p>
                   <br>
                   <p>${message}</p>

    <form id="loginForm" action="adminlogincontroller" method="post">
    <div class="input-group mb-3">
        <span class="input-group-text">
           <i class="bx bx-user"></i>
        </span>
        
        <input type="text" id="username" name="username" class="form-control form-control-lg fs-6" placeholder="Username" required><br>
        </div>
        <div class="input-group mb-3">
          <span class="input-group-text">
            <i class="bx bx-user"></i>
          </span>
      
        <input type="password" id="password" name="password" class="form-control form-control-lg fs-6" placeholder="Password" required><br>
        </div>
        <button type="submit" class="btn btn-primary btn-lg w-100">Login</button>
    </form>

    <div id="errorMessage" style="display: none; color: red;"></div>
    </div>
    </div>
    </div>
    </div>
</body>
</html>