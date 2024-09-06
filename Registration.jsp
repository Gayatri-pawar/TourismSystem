<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Tourism Management System</title>
   <link rel="icon" type="image/png" href="Assets/images/nature-6740243_1280.jpg">
    <link rel="stylesheet" href="Assets/css/customer.css">
    <link rel="stylesheet" href="Assets/css/form.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" 
    referrerpolicy="no-referrer" />
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body class="Registration-form">


  <div class="nav pt-3 ">
    <div>
         
            <img src="Assets/images/a6e72cfd-7606-47fb-b492-bde505694ed0.jpg"  class="img-fluid logo pt-1"/>
        </div>
        <div class="justify-content-center d-flex mx-5 pt-2">
          <ul class="list-unstyled d-flex mx-5 "></ul>
          <li class="text-decoration-none mx-3 fw-bold fs-5  text-white d-none d-lg-block">
          <a href="index.jsp" class="text-decoration-none text-white">Packages</a></li>
          <li class="text-decoration-none mx-4 fw-bold fs-5 text-white  d-none d-lg-block">
            <a href="packages.jsp" class="text-decoration-none text-white">Packages</a></li>
          <li class="text-decoration-none mx-4 fw-bold fs-5 text-white  d-none d-lg-block">
            <a href="Destination.jsp" class="text-decoration-none text-white">Destination</a>
          </li>
          <li class="text-decoration-none mx-4 fw-bold fs-5 text-white  d-none d-lg-block">
            <a href="Gallery.jsp" class="text-decoration-none text-white">Gallery</a>
          </li>
           <li  class="text-decoration-none mx-4 fw-bold fs-5 text-white d-none d-lg-block">
            <a href="poppackages.jsp" class="text-decoration-none text-white"> Popular Packages</a>
           </li>
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
          <input class="form-control   d-none d-lg-block " list="datalistOptions" id="exampleDataList" name="query" placeholder="Type to search..."   onkeypress="handleKeyPress(event)" >
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
    
     <div class="container p-5 col-md-12 col-12 col-lg-12">
    <form class="form-registration   border border-outline-primary offset-lg-3" method="post" action="Registration" >
        <h3 class="text-center p-5">Customer Registration</h3>
        <div>
            <h5 class="text-center">Dont have account : <a href="Registration.jsp" class="btn btn-primary btn-sm">Sign Up</a></h5>
            <h5 class="text-center"> If not : <a href="login.jsp" class="btn btn-primary btn-sm">Sign in </a>
            <!-- <h5 class="text-center"> If not : <button type="button" class="btn btn-primary btn-sm"><a href="login.html">Sign in</a></button></h5> -->
        </div>
       <div class="mb-3">
            <input type="text" class="form-control w-75 mx-5 " id="name" placeholder="enter name" name="name">
          </div>
          <div class="mb-3 ">
            <input type="email" class="form-control w-75 mx-5 " id="email" placeholder="enter your email" name="email">
          </div>
          <div class="mb-3 ">
        <input type="password" class="form-control w-75 mx-5" id="password" placeholder="enter your password" name="password">
          </div>
          <div class="mb-3 ">
          <input type="password" class="form-control w-75 mx-5" id="confirmpassword" placeholder="confirm password" name="cp">
          </div>
          <div class="mb-3 ">
          <input type="text" class="form-control w-75 mx-5" id="phonenumber" placeholder="phone number" name="phone">
          </div>
          <div class="mb-3 ">
          <input type="date" class="form-control w-75 mx-5" id="registrationdate" placeholder="enter registration date" name="regdate">
          </div>
          
          
          
           <div class="mb-3 ">
          <input type="time" class="form-control w-75 mx-5" id="registrationdate" placeholder="enter registration time" name="regtime">
          </div>
          
           <div class="mb-3 ">
          <input type="text" class="form-control w-75 mx-5" id="registrationdate" placeholder="enter address" name="address">
          </div>
             <div class="mb-3 ">
          <input type="text" class="form-control w-75 mx-5" id="registrationdate" placeholder="enter adhar number" name="adhar">
          </div>
               <div class="mb-3 ">
               <label class="mx-5 ">Enter birthdate</label>
          <input type="date" class="form-control w-75 mx-5" id="registrationdate" placeholder="enter birthdate" name="birthdate">
          </div>
               <div class="mb-3 ">
          <input type="text" class="form-control w-75 mx-5" id="registrationdate" placeholder="enter your age" name="age">
          </div>
          
             <div class="mb-3 ">
          <input type="text" class="form-control w-75 mx-5" id="registrationdate" placeholder="enter country" name="country">
          </div>
             <div class="mb-3 ">
          <input type="text" class="form-control w-75 mx-5" id="registrationdate" placeholder="enter state" name="state">
          </div>
          
          <div class="d-flex">
        
          <div class="mb-3">
           <label class="mx-5">  Female
        <input type="radio" class="" name="gender" value="Female">
     
    </label>
    <label>
        <input type="radio" class="" name="gender" value="Male">
    Male
    </label>
          </div></div>
          
          
          
          <div class="mb-3">
          
        <select id="status" name="status" placeholder="status"  class="form-control w-75 mx-5">
            <option value="active">Active</option>
            <option value="inactive">Inactive</option>
        </select></div>
      <div class="mb-3 ">
            <label for="exampleFormControlInput1" class="form-label mx-5">Upload Your Pic</label>
            <input type="file" class="form-control w-75 mx-5" id="picture" placeholder="upload your pic" name="picture">
          </div>
               
          <div class="form-check  ">
            <input class="form-check-input mx-5" type="checkbox" value="" id="flexCheckDefault" name="checkbox1">
            <label class="form-check-label" for="flexCheckDefault">
               Terms and Conditions apply*
            </label>
          </div>
          <div class="form-check mx-5">
            <input class="form-check-input mx-5" type="checkbox" value="" id="flexCheckDefault1" name="checkbox2">
            <label class="form-check-label" for="flexCheckDefault">
             You want to download your information to email
            </label>
          </div>
           <div class="text-center m-3">
            
            <button type="submit" class="btn btn-primary text-center" onclick="submitForm()">Submit</button>
           <p><a href="customer.jsp">Back to Home</a> </p> 
           <p><a href="login.html">Already have an account</a> </p> 
           </div>
           
    </form>
</div>


<script>
  
function submitForm() {
	<!-- 
    var name = document.getElementById("name").value;
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirmpassword").value;
    var checkbox1 = document.getElementById("flexCheckDefault").checked ? "Yes" : "No";

    localStorage.setItem("customerName", name);
    localStorage.setItem("customerEmail", email);
    localStorage.setItem("customerPassword", password);
    localStorage.setItem("customerConfirmPassword", confirmPassword);
    localStorage.setItem("checkbox1",checkbox1);
    -->
  <!--   alert("Registration successful!"); -->
    <!--  window.location.href = "Registration.java";   -->
window.location.href="profile.jsp"; 
}

<!-- 
document.addEventListener('DOMContentLoaded', function () {
   var form = document.querySelector('form');   
    var password = document.getElementById('password');
    var confirmPassword = document.getElementById('confirmpassword');
    var name=document.getElementById('name');
    
    form.addEventListener('submit', function (event) {
        if (password.value !== confirmPassword.value) {
         alert("password do not match");
          event.preventDefault();
        } 
        
    });
 
});    
-->
document.addEventListener('DOMContentLoaded', function () {
    var form = document.querySelector('form');
    var password = document.getElementById('password');
    var confirmPassword = document.getElementById('confirmpassword');
    var name = document.getElementById('name');
    
    form.addEventListener('submit', function (event) {
        var isValid = true;

     
        if (password.value !== confirmPassword.value) {
            alert("Passwords do not match");
            isValid = false;
        }

        if (name.value.trim() === '') {
            alert("Please enter your name");
            isValid = false;
        }
        if (email.value.trim() === '') {
            alert("Please enter your email");
            isValid = false;

        if (!isValid) {
            event.preventDefault();
        }
        else{
        	alert("Registration successful");
        }
    });
});



</script>  

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script> 
</body>
</html> 




    