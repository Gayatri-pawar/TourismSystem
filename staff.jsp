<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <title>Tourism Management System</title>
   <link rel="icon" type="image/png" href="Assets/images/nature-6740243_1280.jpg">
    <link rel="stylesheet" href="Assets/css/style.css">
    <link rel="stylesheet" href="Assets/css/customer.css">
    <link rel="stylesheet" href="Assets/css/adminpackage.css">
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
        <li class="text-decoration-none mx-3 fs-5 text-white  fw-bold d-none d-lg-block">Blogs</li>
        <li class="text-decoration-none mx-2 fs-5 text-white fw-bold d-none d-lg-block">Subscribe</li>
        <li class="text-decoration-none mx-2 fs-5 text-white fw-bold d-none d-lg-block">Newsletters</li>
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
  
 <div class="container">
    <h1 class="mb-4 text-center text-black pt-3" >Add New Staff</h1>
    <form id="add-staff-form" class="shadow bg-light" method="post" action="staff">
      <div class="form-group p-2">
        <label for="full-name fs-5">Full Name:</label>
        <input type="text" class="form-control" id="full-name" name="full-name" placeholder="enter name" required>
      </div>

      <div class="form-group p-2">
        <label for="email fs-5">Email Address:</label>
        <input type="email" class="form-control" id="email" name="email" placeholder="enter email address" required>
      </div>

      <div class="form-group p-2">
        <label for="password fs-5">Password:</label>
        <input type="password" class="form-control" id="password" name="password" placeholder="password" required>
      </div>
       
       
    <!--    ------------  --> 
    <!--  
       <div class="form-group p-2">
        <label for="password fs-5">Employee ID:</label>
        <input type="text" class="form-control" id="empid" name="empid" placeholder="Enter Employee Id" required>
      </div>
      
        <div class="form-group p-2">
        <label for="password fs-5">Qualification:</label>
        <input type="text" class="form-control" id="qualificationr" name="qualification" placeholder="Enter Qualification" required>
      </div>
      
      
        <div class="form-group p-2">
        <label for="password fs-5">Date of Hire:</label>
        <input type="date" class="form-control" id="hire" name="hire" placeholder="Enter Hiring date" required>
      </div>
 
     <div class="form-group p-2">
        <label for="password fs-5">Experience:</label>
        <input type="number" class="form-control" id="number" name="experience" placeholder="Enter experience" required>
      </div>
      <div class="form-group p-2">
        <label for="nationality  fs-5">Nationality:</label>
        <input type="text" class="form-control" id="number" name="nationality" placeholder="Enter Nationality" required>
      </div> -->
   <!-- ---------------------------- -->
   
      <div class="form-group p-2">
        <label for="role fs-5">Role/Position:</label>
        <select class="form-control" id="role" name="role" required>
          <option value="">Select Role</option>
          <option value="Tour-guide">Tour Guide</option>
          <option value="Travel-agent">Travel Agent</option>
          <option value="customer-service">Customer Service</option>
          <option value="Reservation-agent">Reservation Agent</option>
          <option value="Marketing-specialist">Marketing Specialist</option>
        
        </select>
      </div>

      <div class="form-group p-2">
        <label for="department fs-5">Department:</label>
        <select class="form-control" id="department" name="department" required>
          <option value="">Select Department</option>
          <option value="Tour-operations">Tour Operations</option>
          <option value="Sales">Sales</option>
          <option value="Customer-service">Customer Service</option>
          <option value="Marketing">Marketing</option>
          <option value="Reservations">Reservations</option>
          <!-- Add other departments specific to tourism -->
        </select>
      </div>

      <div class="form-group p-2">
        <label for="status fs-5">Status:</label>
        <select class="form-control" id="status" name="status" required>
          <option value="active">Active</option>
          <option value="inactive">Inactive</option>
        </select>
      </div>

      <div class="form-group p-2">
        <label for="profile-picture text-black fs-5">Profile Picture:</label>
        <input type="file" class="form-control-file" id="profile-picture" name="profile-picture" accept="image/*">
      </div>

      <button type="submit" class="btn btn-primary btn-sm rounded-pill btn-submit">Add Staff</button>
    </form>
  </div>
 

   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
    