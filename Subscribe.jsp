<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Tourism Management System</title>
   <link rel="icon" type="image/png" href="Assets/images/nature-6740243_1280.jpg">
    <link rel="stylesheet" href="Assets/css/Blog.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" 
     integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" 
     crossorigin="anonymous" 
     referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <style>
        .subscribe-section {
            padding: 50px 0;
        }
     
    </style>
</head>
<body class="bg-secondary">
    <!-- Navbar -->
    <div class="">
        <ul class="list-unstyled d-flex justify-content-end mx-3">
            <li class="text-decoration-none mx-3 fs-5 text-white  fw-bold d-none d-lg-block">     
                <a href="Blogs.jsp" class="text-decoration-none text-white">Blog</a></li>
            <li class="text-decoration-none mx-2 fs-5 text-white fw-bold d-none d-lg-block">
                <a href="Subscribe.jsp" class="text-decoration-none text-white">Subscribe</a></li>
            <li class="text-decoration-none mx-2 fs-5 text-white fw-bold d-none d-lg-block">
                <a href="Newsletter.jsp" class="text-decoration-none text-white">Newsletter</a></li>
            <hr style="border-color: black;"/>
          </ul>
         </div>
         <div class="nav pt-3 ">
          <div>
               
                  <img src="Assets/images/a6e72cfd-7606-47fb-b492-bde505694ed0.jpg"  class="img-fluid logo"/>
              </div>
         
  <div class="justify-content-center d-flex mx-5">
      <ul class="list-unstyled d-flex mx-5 "></ul>
      <li class="text-decoration-none mx-3 fw-bold fs-5  text-white d-none d-lg-block" >
          <a href="index.jsp" class="text-decoration-none text-white">Home</a></li>
    
      <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
        <a href="packages.jsp" class="text-decoration-none text-white">Packages</a></li>
      <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
        <a href="Destination.jsp" class="text-decoration-none text-white">Destination</a></li>
      <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
        <a href="Gallery.jsp" class="text-decoration-none text-white">Gallery</a></li>
      
      <li class="text-decoration-none mx-4 fw-bold fs-5 text-white  d-none d-lg-block">
        <a href="poppackages.jsp" class="text-decoration-none text-white"> Popular Packages</a></li>
      <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
        <a href="Feedback.jsp" class="text-decoration-none text-white">Feedback</a></li>
  
  </ul>

  <div class="mobile-toggler d-lg-none col-auto">
    <a href="#" data-bs-toggle="offcanvas" data-bs-target="#navbModal">
      <i class="fa fa-bars p-3 text-white"></i>
    </a>
  </div>
  
  <div class="offcanvas offcanvas-start bg-info" tabindex="-1" id="navbModal" aria-labelledby="offcanvasLabel">
    <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasLabel">Tourism Management System</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
    <ul class="text-decoration-none text-white p-3 list-unstyled fw-bold">
    <li class="p-2"> <a href="index.jsp" class="text-decoration-none text-black">Home</a></li>
    <li class="p-2"><a href="packages.jsp" class="text-decoration-none  text-black">Packages</a></li>
    <li class="p-2"><a href="Destination.jsp" class="text-decoration-none  text-black">Destination</a></li>
    <li class="p-2"> <a href="Gallery.jsp" class="text-decoration-none  text-black">Gallery</a></li>
    <li class="p-2"><a href="poppackages.jsp" class="text-decoration-none  text-black">Popular Packages</a></li> 
    <li class="p-2"><a href="Feedback.jsp" class="text-decoration-none  text-black">Feedback</a></li>
    <li class="p-2"><a href="Blogs.jsp" class="text-decoration-none  text-black">Blogs</a></li>
    <li class="p-2"><a href="Subscribe.jsp" class="text-decoration-none  text-black">Subscribe</a></li>
    <li class="p-2"><a href="Newsletter.jsp" class="text-decoration-none  text-black">Newsletter</a></li>
    <li class="p-2"><a href="#" class="text-decoration-none  text-black dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">Settings</a>
      <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="customer.jsp">Customer</a></li>
        <li><a class="dropdown-item" href="Admin.jsp">Admin</a></li>
     
      </ul>
    </li>
    </ul>
    </div>
    </div>
  </div>
  <div class=" mx-5 ">
          
          <div class="d-flex justify-content-end " id="searchForm" >
           <form action="searchServlet" method="get" class="search px-3">
          <input class="form-control mx-3  d-none d-lg-block " list="datalistOptions" id="exampleDataList" name="query" placeholder="Type to search..."   onkeypress="handleKeyPress(event)" >
  <datalist id="datalistOptions">
    <option value="San Francisco">
    <option value="New York">
    <option value="Seattle">
    <option value="Los Angeles">
    <option value="Chicago">
  
  </datalist>
 </form>
  <div class="search-results"></div>
  
   
  <button class="btn btn-secondary  dropdown-toggle  d-none d-lg-block" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="bi bi-gear"></i></button>
      <ul class="dropdown-menu">
          <li><a class="dropdown-item" href="customer.jsp">Customer</a></li>
          <li><a class="dropdown-item" href="Admin.jsp">Admin</a></li>
         
        </ul></button>
      </div>
  </div>
  </div>
    </div>
    
    <div>

  
     <div class="container subscribe-section text-center p-2">
        <h1 class="text-primary pt-5">Subscribe to Our Newsletter</h1>
        <p class="text-muted">Stay updated with the latest travel tips, destination guides, and special offers.</p>
        <form class="needs-validation" novalidate action="subscribe" method="post">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="mb-3 ">
                        <input type="text" class="form-control" id="name" placeholder="Enter your name" name="name" required>
                        <div class="invalid-feedback">
                            Please enter name.
                        </div>
                    </div>
                    <div class="mb-3">
                        <input type="email" class="form-control" id="email" placeholder="Enter your email" name="email" required>
                        <div class="invalid-feedback">
                            Please enter email address.
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Subscribe</button>
                </div>
            </div>
        </form>
    </div>  
    
    
    


    
    <footer class="text-white text-center py-3 mt-5">
        <p class="mt-5 ">&copy; 2024 Tourism Management System. All rights reserved.</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        
        (function () {
            'use strict'
       
            var forms = document.querySelectorAll('.needs-validation')
      
            Array.prototype.slice.call(forms)
                .forEach(function (form) {
                    form.addEventListener('submit', function (event) {
                        if (!form.checkValidity()) {
                            event.preventDefault()
                            event.stopPropagation()
                        }
                        form.classList.add('was-validated')
                    }, false)
                })
        })()
            function handleKeyPress(event) {
            if (event.key === 'Enter') {
                event.preventDefault();
                document.getElementById('searchForm').submit();
            }

    </script>
</body>
</html>
    