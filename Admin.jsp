<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tourism Management System</title>
   <link rel="icon" type="image/png" href="Assets/images/nature-6740243_1280.jpg">
    
    <link rel="stylesheet" href="Assets/css/Admin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" 
     integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" 
     crossorigin="anonymous" 
     referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="body">
<video autoplay muted loop class="video_background">
    <source src="Assets/images/16668409-uhd_3840_2160_24fps.mp4" class="" type="video/mp4"></video>
     </video>
     <div>
      <ul class="list-unstyled d-flex justify-content-end mx-3">
        <li class="text-decoration-none mx-3 fs-5 text-white  fw-bold d-none d-lg-block">
          <a href="Blogs.jsp" class="text-decoration-none text-white">Blogs</a></li>
        <li class="text-decoration-none mx-2 fs-5 text-white fw-bold d-none d-lg-block">
          <a href="Subscribe.jsp" class="text-decoration-none text-white">Subscribe</a></li>
        </li>
        <li class="text-decoration-none mx-2 fs-5 text-white fw-bold d-none d-lg-block">
          <a href="Newsletter.jsp" class="text-decoration-none text-white">Newsletters</a>
        </li>
        <hr style="border-color: black;"/>
      </ul>
     </div>
    



     <div class="nav pt-3 ">
        <div>
        <img src="Assets/images/a6e72cfd-7606-47fb-b492-bde505694ed0.jpg"  class="img-fluid logo"/>
      </div>
       
<div class="justify-content-center d-flex mx-5">
    <ul class="list-unstyled d-flex mx-5 "></ul>
  
    <li class="text-decoration-none mx-4 fw-bold fs-5 text-white  d-none d-lg-block">
      <a href="Admin.jsp" class="text-decoration-none text-white">Admin</a></li>
    <!-- <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
      <a href="adminpackage.jsp" class="text-decoration-none text-white">Packages</a></li>   -->
    <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
      <a href="admindestination.jsp" class="text-decoration-none text-white">Bookings</a></li>
    
    <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
      <a href="Inventory.jsp" class="text-decoration-none text-white">Inventory</a></li>
      <li class="text-decoration-none mx-4 fw-bold fs-5 text-white  d-none d-lg-block">
        <a href="AdminReview.jsp" class="text-decoration-none text-white">Reviews</a></li>
  
     <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
      <a href="report.jsp" class="text-decoration-none text-white">Reports</a></li>
         <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
      <a href="staff.jsp" class="text-decoration-none text-white">Staff</a></li>
       <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
          <a href="Feedback.jsp" class="text-decoration-none text-white">Feedback</a></li>
  
</ul>
<div class="mobile-toggler d-lg-none col-auto">
  <a href="#" data-bs-toggle="offcanvas" data-bs-target="#navbModal">
    <i class="fa fa-bars p-3 text-white"></i>
  </a>
</div>


<div class="offcanvas offcanvas-start bg-info text-white" tabindex="-1" id="navbModal" aria-labelledby="offcanvasLabel">
  <div class="offcanvas-header">
  <h5 class="offcanvas-title" id="offcanvasLabel">Tourism Management System</h5>
  <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
  <ul class="text-decoration-none text-white p-3 list-unstyled fw-bold">
  <li class="p-2"> <a href="index.jsp" class="text-decoration-none text-black">Admin</a></li>
  <!--  <li class="p-2"><a href="adminpackage.jsp" class="text-decoration-none  text-black">Packages</a></li>  -->
  <li class="p-2"><a href="admindestination.jsp" class="text-decoration-none  text-black">Booking</a></li>
  <li class="p-2"> <a href="Inventory.jsp" class="text-decoration-none  text-black">Inventory</a></li>
  <li class="p-2"><a href="AdminReview.jsp" class="text-decoration-none  text-black">Reviews</a></li>
     <li class="p-2"><a href="report.jsp" class="text-decoration-none  text-black">Reports</a></li>
       <li class="p-2"><a href="staff.jsp" class="text-decoration-none  text-black">Staff</a></li>
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
  <!--  
        <div class="d-flex justify-content-end">
        <input class="form-control mx-3  d-none d-lg-block" list="datalistOptions" id="exampleDataList" placeholder="Type to search...">
<datalist id="datalistOptions">
  <option value="San Francisco">
  <option value="New York">
  <option value="Seattle">
  <option value="Los Angeles">
  <option value="Chicago">

</datalist>  -->
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
      
        <li><a class="dropdown-item" href="logout.jsp">Logout</a></li>
      </ul></button>
    </div>
</div>
</div>
  </div>

  <div>
    <div class="background ">
       <div class="text-center">
         <p class="text-center fs-1 pt-3 text-white d-md-block d-lg-block">Welcome To Admin Portal</p>
        <h1 class="pt-5 text-center text-white fs-2 text-decoration-underline ">Welcome to TravelHub!</h1>
        <p class="text-center text-white d-block d-md-none d-lg-none">Discover the world's best Destinations</p> 
        <p class="text-center  fs-3 pt-5 text-white d-none d-md-block d-lg-block">Discover the world's best destinations and book your dream vacation with ease. Our platform offers personalized recommendations, seamless booking, and expert travel guides.</p>
     
      <!--   <button type="button " class="bg-warning" ><a href="Registration.jsp" class="text-decoration-none text-black">Sign Up </a></button>
        <button type="button" class="text-decoration-none text-black bg-warning" ><a href="login.jsp" class="text-decoration-none text-black">Sign in</a></button>
 -->
   
       </div>
        
        <div class="container mt-5 pt-5">
            
            <div class="row">
                <div class="col-md-3">
                    <div class="card admin_card text-white bg-primary mb-3">
                        <div class="card-body">
                            <h5 class="card-title">Total Bookings</h5>
                          <p id="counter" class="counter">1000</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card admin_card  text-white bg-success mb-3">
                        <div class="card-body">
                            <h5 class="card-title">Total Users</h5>
                            <p id="users" class="counter">500</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card admin_card  text-white bg-warning mb-3">
                        <div class="card-body">
                            <h5 class="card-title">Revenue</h5>
                            <p id="Revenue" class="counter">10,000</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card admin_card  text-white bg-danger mb-3">
                        <div class="card-body">
                            <h5 class="card-title">Pending Approvals</h5>
                            <p id="approval" class="counter">5</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
  </div>


   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   
    <script src="https://cdn.jsdelivr.net/npm/jquery.counterup@2.1.0/jquery.counterup.min.js"></script>
  
    <script src="https://cdn.jsdelivr.net/npm/waypoints/lib/jquery.waypoints.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#counter').counterUp({
                delay: 10,          
                time: 2000          
            });
            $('#approval').counterUp({
                delay: 10,          
                time: 2000          
            });
            $('#Revenue').counterUp({
                delay: 10,          
                time: 2000          
            });
            $('#users').counterUp({
                delay: 10,          
                time: 2000          
            });
        });
    </script>
</body>
</html>
    