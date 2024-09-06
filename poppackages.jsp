<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tourism Management System</title>
   <link rel="icon" type="image/png" href="Assets/images/nature-6740243_1280.jpg">
    <link rel="stylesheet" href="Assets/css/poppackages.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" 
     integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" 
     crossorigin="anonymous" 
     referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    
     <script>
document.addEventListener('DOMContentLoaded', () => {
    function checkpoppackage() {
        const isRegistered = false; 
           if (!isRegistered) {
           const modal = new bootstrap.Modal(document.getElementById('registrationModal'));
            modal.show();
            document.getElementById('registerNow').addEventListener('click', () => {
             document.querySelector('.content').style.display= 'block';
              modal.hide();
            });

            document.getElementById('registerLater').addEventListener('click', () => {
                window.location.href = 'Registration.jsp'; 
            });
        } else {
           
            document.querySelector('.content').style.display = 'block';
        }
    }
    checkpoppackage();
});

</script>
</head>
<body class="pp" onload="checkpoppackage">
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
    
   <div class="content" style="display:none;">
    <div class="">
        <ul class="list-unstyled d-flex justify-content-end mx-3">
          <li class="text-decoration-none mx-3 fs-5 text-white  fw-bold d-none d-lg-block">
            <a href="Blogs.jsp" class="text-decoration-none text-white">Blogs</a></li>
          <li class="text-decoration-none mx-2 fs-5 text-white fw-bold d-none d-lg-block">Subscribe</li>
          <li class="text-decoration-none mx-2 fs-5 text-white fw-bold d-none d-lg-block">Newsletters</li>
          <hr style="border-color: black;"/>
        </ul>
       </div>
      
  
  
  
       <div class="nav pt-3 pb-5 ">
          <div>
               
                  <img src="Assets/images/a6e72cfd-7606-47fb-b492-bde505694ed0.jpg"  class="img-fluid logo"/>
              </div>
         
  <div class="justify-content-center d-flex mx-5">
      <ul class="list-unstyled d-flex mx-5 "></ul>
      <li class="text-decoration-none mx-3 fw-bold fs-5  text-white d-none d-lg-block" >Home</li>
    
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
  </div>
  <div class="offcanvas offcanvas-start bg-info text-white" tabindex="-1" id="navbModal" aria-labelledby="offcanvasLabel">
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
   <!--   </div>   -->
   
    <!--  <div>  -->

        <div class="poppackages container p-5">
            <h1 class="my-4 text-center pb-3">Popular Packages</h1>
            <div class="row">
                
                <div class="col-lg-4 col-md-6 package-card">
                    <div class="card">
                        <img src="Assets/images/architecture-7857832_640.jpg" class="card-img-top" alt="Package 1">
                        <div class="card-body">
                            <h5 class="card-title">Beach Paradise</h5>
                            <p class="card-text">Enjoy the sunny beaches and  clear waters.</p>
                            <p class="card-text"><strong>Price: $1,200</strong></p>
                            <p class="card-text rating">&#9733;&#9733;&#9733;&#9733;&#9734; (4.5)</p>
                            <a href="#" class="btn btn-primary">Learn More</a>
                            <a href="Booking.jsp" class="btn btn-success mt-2">Book Now</a>
                        </div>
                    </div>
                </div>
               
                <div class="col-lg-4 col-md-6 package-card">
                    <div class="card">
                        <img src="Assets/images/cathedral-6830526_640.jpg" class="card-img-top" alt="Package 2">
                        <div class="card-body">
                            <h5 class="card-title">Mountain Adventure</h5>
                            <p class="card-text">Experience the thrill of the mountains.</p>
                            <p class="card-text"><strong>Price: $900</strong></p>
                            <p class="card-text rating">&#9733;&#9733;&#9733;&#9733;&#9733; (5.0)</p>
                            <a href="#" class="btn btn-primary">Learn More</a>
                            <a href="Booking.jsp" class="btn btn-success mt-2">Book Now</a>
                        </div>
                    </div>
                </div>
             
                <div class="col-lg-4 col-md-6 package-card">
                    <div class="card">
                        <img src="Assets/images/bali-8838762_640.jpg" class="card-img-top" alt="Package 3">
                        <div class="card-body">
                            <h5 class="card-title">City Exploration</h5>
                            <p class="card-text">Discover the wonders of the city.</p>
                            <p class="card-text"><strong>Price: $700</strong></p>
                            <p class="card-text rating">&#9733;&#9733;&#9733;&#9733;&#9733; (5.0)</p>
                            <a href="#" class="btn btn-primary">Learn More</a>
                            <a href="Booking.jsp" class="btn btn-success mt-2">Book Now</a>
                        </div>
                    </div>
                </div>
              
                <div class="col-lg-4 col-md-6 package-card">
                    <div class="card">
                        <img src="Assets/images/pexels-luke-webb-1336561-2738173.jpg" class="card-img-top" alt="Package 4">
                        <div class="card-body">
                            <h5 class="card-title">Safari Expedition</h5>
                            <p class="card-text">Witness the wild in its natural habitat.</p>
                            <p class="card-text"><strong>Price: $1,500</strong></p>
                            <p class="card-text rating">&#9733;&#9733;&#9733;&#9733;&#9734; (4.5)</p>
                            <a href="#" class="btn btn-primary">Learn More</a>
                            <a href="Booking.jsp" class="btn btn-success mt-2">Book Now</a>
                        </div>
                    </div>
                </div>
              
                <div class="col-lg-4 col-md-6 package-card">
                    <div class="card">
                        <img src="Assets/images/venice-8889871_640.jpg" class="card-img-top" alt="Package 5">
                        <div class="card-body">
                            <h5 class="card-title">Cultural Heritage</h5>
                            <p class="card-text">Immerse yourself in the local culture.</p>
                            <p class="card-text"><strong>Price: $800</strong></p>
                            <p class="card-text rating">&#9733;&#9733;&#9733;&#9733;&#9734; (4.0)</p>
                            <a href="#" class="btn btn-primary">Learn More</a>
                            <a href="Booking.jsp" class="btn btn-success mt-2">Book Now</a>
                        </div>
                    </div>
                </div>
              
                <div class="col-lg-4 col-md-6 package-card">
                    <div class="card">
                        <img src="Assets/images/road-3316883_640.jpg" class="card-img-top" alt="Package 6">
                        <div class="card-body">
                            <h5 class="card-title">Luxury Retreat</h5>
                            <p class="card-text">Relax in luxury and comfort.</p>
                            <p class="card-text"><strong>Price: $2,000</strong></p>
                            <p class="card-text rating">&#9733;&#9733;&#9733;&#9733;&#9733; (5.0)</p>
                            <a href="#" class="btn btn-primary">Learn More</a>
                            <a href="Booking.jsp" class="btn btn-success mt-2">Book Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>


      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
    