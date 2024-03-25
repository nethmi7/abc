<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Register</title>
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
              <img alt="back" src="img/patientlogin.jpg" width="100%" height="100%" >
          </div>
      </div>

      
      <div class="col-lg-6">
          <div class="row align-items-center justify-content-center h-100 g-0 px-4 px-sm-0">
            <div class="col col-dm-6 col-lg-7 col=xl-6"></div>

  <br><br><br>
     <div class="text-center mb-5">
             <h3 class="fw-bold">Patient Register</h3><br><br>
             <p class="text-secondary">Get access to your account</p>
             <br/>
        <p>${message}</p>
        <br/>
        <form method="post" action="patientController">
            <br/>
             <div class="input-group mb-3">
                    <span class="input-group-text">
                       <i class="bx bx-user"></i>
                    </span>
           
            <input type="text" class="form-control" id="patientName" name="patientName" placeholder="Enter Name"/>
            </div>
            <br/>
            
             <div class="input-group mb-3">
                    <span class="input-group-text">
                       <i class="bx bx-user"></i>
                    </span>
            
            <input type="date" class="form-control" id="dateOfBirth" name="dateOfBirth" placeholder="Enter Name"/>
            </div>
            <br/>
             
              <div class="input-group mb-3">
                    <span class="input-group-text">
                       <i class="bx bx-user"></i>
                    </span>
           
            <input type="email" class="form-control" id="email" name="email" placeholder="Enter Name"/>
            </div>
            <br/>
            
             <div class="input-group mb-3">
                    <span class="input-group-text">
                       <i class="bx bx-user"></i>
                    </span>
            
            <select class="form-select" id="gender" name="gender" placeholder="Enter Name">
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select></div>
            <br/>
            

            <div class="input-group mb-3">
                    <span class="input-group-text">
                       <i class="bx bx-user"></i>
                    </span>
            
            <input type="text" class="form-control" id="username" name="username" placeholder="Enter Name"/>
            </div>
            <br/>
            
            <div class="input-group mb-3">
                    <span class="input-group-text">
                       <i class="bx bx-user"></i>
                    </span>
            
            <input type="password" class="form-control" id="password" name="password" placeholder="Enter Name"/>
            </div>
            <br/>
            <input type="hidden" name="type" value="add"/>
            <br/>
            
            <button type="submit" class="btn btn-primary">Register</button>
        </form>
        
        <br>  Have an account? <a href="PatientLogin.jsp" class="text-decoration-none">Log In</a>
        </div>
        </div>
    </div>
</div>
</body>
</html>
