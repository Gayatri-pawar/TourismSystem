<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>filter</title>
    <link rel="stylesheet" href="Assets/css/style.css">
 <link rel="stylesheet" href="Assets/css/customer.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" 
     referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
     rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body class="">
 
 <div class="body2">
   
     <div>
      <ul class="list-unstyled d-flex justify-content-end mx-3 fw-bold">
        <li class="text-decoration-none mx-3 fs-5 text-white  fw-bold d-none d-lg-block">
          <a href="Blogs.jsp" class="text-decoration-none text-white">Blogs</a>
        </li>
        <li class="text-decoration-none mx-2 fs-5 text-white fw-bold d-none d-lg-block">
          <a href="Subscribe.jsp" class="text-decoration-none text-white">Subscribe</a>
        </li>
        <li class="text-decoration-none mx-2 fs-5 text-white fw-bold d-none d-lg-block">
          <a href="Newsletter.jsp" class="text-decoration-none text-white">Newsletter</a>
        </li>
        <hr style="border-color: black;"/>
      </ul>
     </div>
     <div class="nav pt-3 ">
        <div>
          <img src="Assets/images/a6e72cfd-7606-47fb-b492-bde505694ed0.jpg"  class="img-fluid logo"/>
        </div>
        <div class="justify-content-center d-flex mx-5">
    <ul class="list-unstyled d-flex mx-5 ">
    <li class="text-decoration-none mx-3 fw-bold fs-5  text-black d-none d-lg-block"><a href="index.jsp" class="text-decoration-none text-white ">Home</a></li>
  

    <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
      <a href="packages.jsp" class="text-decoration-none text-white">Packages</a></li>
    <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
      <a href="Destination.jsp" class="text-decoration-none text-white">Destination</a>
    </li>
    <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
      <a href="Gallery.jsp" class="text-decoration-none text-white">Gallery</a></li>
    
    <li class="text-decoration-none mx-4 fw-bold fs-5 text-white  d-none d-lg-block">
      <a href="poppackages.jsp" class="text-decoration-none text-white"> Popular Packages</a>

    </li>
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

  <li class="p-2"><a class="text-decoration-none  text-black" href="profile.jsp">Profile</a></li>
  <li class="p-2"><a class="text-decoration-none  text-black" href="Booking.jsp">Booking</a></li>
  <li class="p-2"><a class="text-decoration-none  text-black" href="Review.jsp">Reviews</a></li>
  <li class="p-2"><a class="text-decoration-none  text-black" href="Orders.jsp">Orders</a></li>   
  <li class="p-2"><a class="text-decoration-none  text-black" href="Wishlist.jsp">Wishlist</a></li>
  <li class="p-2"><a class="text-decoration-none  text-black" href="Payment.jsp">Payment</a></li>
  <li class="p-2"><a class="text-decoration-none  text-black" href="logout.jsp">Logout</a></li>
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
      
        <li><a class="dropdown-item" href="profile.jsp">Profile</a></li>
        <li><a class="dropdown-item" href="Booking.jsp">Booking</a></li>
        <li><a class="dropdown-item" href="Review.jsp">Reviews</a></li>
        <li><a class="dropdown-item" href="Orders.jsp">Orders</a></li>   
        <li><a class="dropdown-item" href="Wishlist.jsp">Wishlist</a></li>
        <li><a class="dropdown-item" href="Payment.jsp">Payment</a></li>
        <li><a class="dropdown-item" href="logout.jsp">Logout</a></li>
      </ul></button>
    </div>
</div>
</div>
 <div class="modal fade" id="registrationModal" tabindex="-1" aria-labelledby="registrationModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="registrationModalLabel">Registration Required</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    have you registered ? . Please choose an option:
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" id="registerNow">Yes</button>
                    <button type="button" class="btn btn-secondary" id="registerLater">No</button>
                </div>
            </div>
        </div>
    </div>
<script>
document.addEventListener('DOMContentLoaded', () => {
    function checkRegistration() {
        const isRegistered = false; 

        if (!isRegistered) {
          
            const modal = new bootstrap.Modal(document.getElementById('registrationModal'));
            modal.show();

           
            document.getElementById('registerNow').addEventListener('click', () => {
                window.location.href = 'package.jsp'; // Redirect to registration page
            });

            document.getElementById('registerLater').addEventListener('click', () => {
                window.location.href = 'Registration.jsp'; // Redirect to home page
            });
        } else {
         
            document.querySelector('.content').style.display = 'block';
        }
    }

  
    checkRegistration();
});

</script>


   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.min.js"></script>
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script> 
</body>
</html>