<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Dashboard</title>
<%@include file="component/css.jsp" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<%@include file="component/patient-navbar.jsp" %>

<div id="carouselExampleAutoplaying" class="carousel slide" >
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
  <div class="carousel-item active">
      <img src="img/lab6.jpg" class="d-block w-100" alt="lab3" height="900px">
  
        
      
      <div class="carousel-caption carousel1 text-left">
         <p>1 / 3</p>
         <h5>YOUR PATHWAY TO BETTER HEALTH</h5>
         <div class="mt-5 d-flex">
            <input type="text" class="form-control search w-50 round-0" id="floatingInput"
            placeholder="Search...">
            
            <button class="btn btn-light btn-sm justify-content-md-end mx-2 px-3 round-0">
                <i class="fas fa-search"></i> Search</button>
       </div>
     </div>
</div>
 
     <div class="carousel-item">
        <img src="img/doctor.jpg" class="d-block w-100" alt="lab3" height="900px">
      
        <div class="carousel-caption carousel1 text-left">
         <p>2 / 3</p>
         <h5> DISCOVER HEALTHIER LIVING</h5>
        
                
         </div>
    </div>

       
        
      <div class="carousel-item">
        <img src="img/pix2.jpg" class="d-block w-100" alt="lab3" height="900px">
      
        <div class="carousel-caption carousel1 text-left">
         <p>3 / 3</p>
         <h5> EMPOWERING YOUR WELL-BEING</h5>
        
                
         </div>
       </div>
     </div>
     
      
 <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
     <span class="icon">&larr;</span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying " data-bs-slide="next">
    <span class="icon">&rarr;</span>
    <span class="visually-hidden">Next</span>
  </button>
  
  
   <div class="col-md-4 z-1 position-absolute card-bottom card mb-3 card-color rounded-0 bg-dark">
      <div class="row align-items-center">
    
       <div class="col-md-9">
      <div class="card-body">
        <h5 class="card-title text-light">ABC Wellness Check-ups</h5>
        <p class="card-text text-light">Ensure your well-being with our comprehensive health check-up packages, tailored to assess and monitor your overall health status.</p>
        
     </div>
</div>
         <div class="col-md-3">
      <img src="img/lab1.jpeg" class="img-fluid rounded-start" alt="card-img">
    </div>
  </div>
</div>
</div>


<div class="container p-3">
   <p class="text-center fs-2">ABC Laboratory Key Features</p>
   <div class="row">
      <div class="col-md-8 p-5">
          <div class="row">
             <div class="col-md-6">
                <div class="card point-card">
                   <div class="card-body">
                      <p class="fs-5">Expert Medical Team</p>
                      <p> Our laboratory is proud to have a team of experienced and highly qualified medical professionals, including skilled technicians, pathologists, and specialists. With their expertise and dedication, we provide quality care and accurate diagnostics to our patients.</p>
                   </div>
                </div>
             </div>
             <div class="col-md-6">
                <div class="card point-card">
                   <div class="card-body">
                      <p class="fs-5">Advanced Technology</p>
                      <p>ABC Laboratory is at the forefront of diagnostic technology, utilizing state-of-the-art equipment and methodologies to deliver accurate and efficient testing services. Our investment in advanced technology ensures precise results and enhances patient care.</p>  
                   </div>
                </div>
             </div>
             <div class="col-md-6 mt-2">
                <div class="card point-card">
                   <div class="card-body">
                      <p class="fs-5">Personalized Care</p>
                      <p>We understand that each patient is unique, which is why we prioritize personalized care at ABC Laboratory. Our healthcare professionals take the time to listen to patients, understand their concerns, and tailor our services to meet their individual needs, providing compassionate and patient-centered care.</p>  
                   </div>
                </div>
             </div>
             <div class="col-md-6 mt-2">
                <div class="card point-card">
                   <div class="card-body">
                      <p class="fs-5">Safety First</p>
                      <p>Safety is our top priority at ABC Laboratory. We maintain a culture of safety and uphold rigorous safety standards to protect the well-being of our patients, staff, and community. From proper handling of specimens to ensuring a safe work environment, we prioritize safety in everything we do.</p>  
                   </div>
                </div>
             </div>
          </div>
      </div>
       <div class="col-md-4">
           <img alt="" src="img/lab9.jpeg" height="600px" width="500px">
       </div>
   </div>
</div>

<hr>

<div class="container p-2">
   <p class="text-center fs-2">Our Services</p>
   <div class="row">
      <div class="col-md-3">
           <div class="card point-card">
                   <div class="card-body text-center">
                     <img src="img/pix4.jpg" width="250px" height="300px">
                      <p class="fw-bold fs-5">Medical Testing</p>
                      <p class="fs-7"> Comprehensive diagnostic tests are conducted to evaluate various health conditions, providing crucial insights for diagnosis and treatment planning.</p>
                   </div>
                </div>
             </div>
             <div class="col-md-3">
                 <div class="card point-card">
                   <div class="card-body text-center">
                     <img src="img/pix5.jpg" width="250px" height="300px">
                      <p class="fw-bold fs-5">Consultation Services</p>
                      <p class="fs-7">Experienced medical professionals offer expert guidance and support, interpreting test results and addressing patient concerns with care.</p>
                   </div>
                </div>
             </div>
              <div class="col-md-3">
                 <div class="card point-card">
                   <div class="card-body text-center">
                     <img src="img/appointment.jpeg" width="250px" height="300px">
                      <p class="fw-bold fs-5">Appointment Management</p>
                      <p class="fs-7">Patients can easily schedule appointments online,ensuring efficient appointment management for both patients and staff.</p>
                   </div>
                </div>
             </div>
              <div class="col-md-3">
                 <div class="card point-card">
                   <div class="card-body text-center">
                     <img src="img/report.jpeg" width="250px" height="300px">
                      <p class="fw-bold fs-5">Online Report Access</p>
                      <p class="fs-7"> Patients enjoy the convenience of accessing their lab reports and medical records securely through our user-friendly online portal.</p>
          </div>
      </div>
      </div> 
   </div>
</div>

<footer class="bg-dark bg-footer" style="margin-top: 80px;">
       <div class="container">
           <div class="row">
                <div class="col-lg-6">
                   <h5 class="text-light">About Us</h5>
                   <p class="text-light">At ABC Laboratories, we're dedicated to precise diagnostics, personalized care, and community well-being. With cutting-edge technology and a compassionate team, we deliver accurate results and convenient services to empower healthier lives.</p>
                   <p class="text-light"><i class="fa fa-location"></i>123 456 789</p>
                   <p class="text-light"><i class="fa fa-phone"></i>011 556 7789</p>
                   <p class="text-light"><i class="fa fa-envelop"></i> abclaboratory@gmail.com</p>
                </div>
           </div>
       </div>
    
</footer>

</body>
</html>