<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Login</title>
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
<script>
    function displayErrorMessage(message) {
        var errorMessageDiv = document.getElementById("errorMessage");
        errorMessageDiv.innerText = message;
        errorMessageDiv.style.display = "block";
    }
</script>
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
       <div class="text-center mb-5">
                  <h3 class="fw-bold">Log In</h3><br><br>
                  <p class="text-secondary">Get access to your account</p>
                   <br>
                   <p>${message}</p>
                   
    <form action="patientLoginController" method="post">
    
           
     <div class="input-group mb-3">
                    <span class="input-group-text">
                       <i class="bx bx-user"></i>
                    </span>
        
        <input type="text" id="username" name="username" class="form-control form-control-lg fs-6"  placeholder="Username" required ><br>
        </div>
        
          <div class="input-group mb-3">
                    <span class="input-group-text">
                       <i class="bx bx-lock-alt"></i>
                    </span>
           
        <input type="password" id="password" name="password" class="form-control form-control-lg fs-6" placeholder="Password"  required><br><br>
        </div>
        <input type="submit" value="Login" onclick="return validateForm()" class="btn btn-primary btn-lg w-100">
        
        <div id="errorMessage" style="display: none; color: red;"></div>
    </form>
    <br>
     <br> Don't have an account? <a href="Patient-Register.jsp" class="text-decoration-none">Create One</a>

    <script>
        function validateForm() {
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;
            
            // You can add client-side validation if needed
            
            // If the username or password is empty, display an error message
            if (username.trim() === "" || password.trim() === "") {
                displayErrorMessage("Username and password are required.");
                return false;
            }
            
            // If no validation errors, submit the form
            return true;
        }
    </script>
    </div>
    </div>
    </div>
    </div>
</body>
</html>
