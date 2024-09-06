<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Tourism Management System</title>
   <link rel="icon" type="image/png" href="Assets/images/nature-6740243_1280.jpg">
 
    <link rel="stylesheet" href="Assets/css/report.css">
      <!--   <link rel="stylesheet" href="Assets/css/customer.css">
    <link rel="stylesheet" href="Assets/css/adminpackage.css">   -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" 
     integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" 
     crossorigin="anonymous" 
     referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
    .container {
      max-width: 600px;
      margin-top: 20px;
    }
    .btn-submit {
      width: 100%;
    }
   
  </style>
</head>
<body class="staff bg-secondary">
    
     <div class="">
      <ul class="list-unstyled d-flex justify-content-end mx-3">
        <li class="text-decoration-none mx-3 fs-5 text-white  fw-bold d-none d-lg-block">
         <a href="Blogs.jsp" class="text-decoration-none text-white">Blogs</a>
        </li>
        <li class="text-decoration-none mx-2 fs-5 text-white fw-bold d-none d-lg-block">
         <a href="Subscribe.jsp" class="text-decoration-none text-white">Subscribe</a>
        </li>
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
    <ul class="list-unstyled d-flex mx-5 ">
  
    <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
      <a href="Admin.jsp" class="text-decoration-none text-white">Admin</a></li>
   
    <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
      <a href="admindestination.jsp" class="text-decoration-none text-white">Bookings</a></li>
   
    <li class="text-decoration-none mx-4 fw-bold fs-5 text-white  d-none d-lg-block">
      <a href="Inventory.jsp" class="text-decoration-none text-white">Inventory</a></li>
      <li class="text-decoration-none mx-4 fw-bold fs-5 text-white  d-none d-lg-block">
        <a href="Review.jsp" class="text-decoration-none text-white">Reviews</a></li>
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


<div class="offcanvas offcanvas-start bg-info" tabindex="-1" id="navbModal" aria-labelledby="offcanvasLabel">
  <div class="offcanvas-header">
  <h5 class="offcanvas-title" id="offcanvasLabel">Tourism Management System</h5>
  <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
  <ul class="text-decoration-none text-white p-3 list-unstyled fw-bold">
  <li class="p-2"> <a href="Admin.jsp" class="text-decoration-none text-black">admin</a></li>
  <li class="p-2"><a href="adminpackage.jsp" class="text-decoration-none  text-black">Packages</a></li>
  <li class="p-2"><a href="admindestination.jsp" class="text-decoration-none  text-black">Booking</a></li>
  <li class="p-2"> <a href="Inventory.jsp" class="text-decoration-none  text-black">Inventory</a></li>
  <li class="p-2"><a href="Review.jsp" class="text-decoration-none  text-black">Reviews</a></li> 
   <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
      <a href="report.jsp" class="text-decoration-none text-white">Reports</a></li>
         <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
      <a href="staff.jsp" class="text-decoration-none text-white">Staff</a></li>
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
      
        <li><a class="dropdown-item" href="logout.jsp">Logout</a></li>
      </ul></button>
    </div>
</div>
</div>
  </div>
  
<main class="container">
       <div class="row justify-content-around">
          
            <div class="col-12 col-md-6 col-lg-4 mb-3">
                <div class="card bg-light shadow " >
                    <img src="Assets/images/pexels-olly-3801422.jpg" class="card-img-top p-2 " alt="Sales Report">
                    <div class="card-body">
                        <h5 class="card-title">Booking  Report</h5>
                        <p class="card-text"> Booking's report</p>
                        <a href="bookingreport.jsp" class="btn btn-warning" onclick="showReport('sales')">View Report</a>
                    </div>
                </div>
            </div>
            
             <div class="col-12 col-md-6 col-lg-4 ">
                <div class="card bg-light shadow " >
                    <img src="Assets/images/report1 (1).jpg" class="card-img-top p-2" alt="Financial Report">
                    <div class="card-body">
                        <h5 class="card-title">Review Report</h5>
                        <p class="card-text">Summary of Review's.</p>
                        <a href="reviewreport.jsp" class="btn btn-warning" onclick="showReport('financial')">View Report</a>
                    </div>
                </div>
            </div>

<div class="col-12 col-md-6 col-lg-4 mb-3 ">
                <div class="card bg-light shadow " >
                    <img src="Assets/images/pexels-tiger-lily-4481259.jpg" class="card-img-top p-2 " alt="Employee Report">
                    <div class="card-body">
                        <h5 class="card-title">Staff Report</h5>
                        <p class="card-text">Information of Employee's </p>
                        <a href="staffreport.jsp" class="btn btn-warning" onclick="showReport('employee')">View Report</a>
                    </div>
                </div>
            </div>
            
            
            <div class="col-12  col-md-6 col-lg-4  mb-3">
                <div class="card bg-light shadow " >
                    <img src="Assets/images/pexels-wdnet-95916.jpg" class="card-img-top p-2" alt="Inventory Report">
                    <div class="card-body">
                        <h5 class="card-title">Inventory Report</h5>
                        <p class="card-text">Details about inventory levels.</p>
                        <a href="inventoryreport.jsp" class="btn btn-warning" onclick="showReport('inventory')">View Report</a>
                    </div>
                </div>
            </div>

            

            <div class="col-12 col-md-6 col-lg-4  ">
                <div class="card bg-light shadow " >
                    <img src="Assets/images/pexels-pixabay-50987.jpg" class="card-img-top p-2" alt="Financial Report">
                    <div class="card-body">
                        <h5 class="card-title">Payment Report</h5>
                        <p class="card-text">Summary of Payment's</p>
                        <a href="#" class="btn btn-warning" onclick="showReport('financial')">View Report</a>
                    </div>
                </div>
            </div>
       
         
     
         <div class="col-12 col-md-6 col-lg-4 ">
                <div class="card bg-light shadow " >
                    <img src="Assets/images/report1 (2).jpg" class="card-img-top p-2" alt="Financial Report">
                    <div class="card-body">
                        <h5 class="card-title">Customer Report</h5>
                        <p class="card-text">Summary of Customer's.</p>
                     <!--  <a href="customerreport.jsp" class="btn btn-warning" onclick="showReport('financial')">View Report</a>  -->
                     <a href="adminpackage.jsp" class="btn btn-warning" onclick="showReport('financial')">View Report</a>
                    </div>
                </div>
            </div>
          </div>
      
        </div> 
  
  </main>   
  
  
   
   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
    