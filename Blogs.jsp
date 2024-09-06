<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        .blog-post {
            margin-bottom: 30px;
        }
        .blog-post img {
            max-width: 100%;
            height: auto;
        }
        .blog-sidebar {
            position: sticky;
            top: 20px;
        }
    </style>
</head>
<body class="bg-secondary">
    <!-- Navbar -->
    <div>
        <ul class="list-unstyled d-flex justify-content-end mx-3">
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
  
  <div>

    
    <div class="blog container-fluid mt-5 pt-5">
        <div class="row">
           
            <div class="col-lg-8">
                <div class="blog-post">
                    <h2 class="blog-post-title">Exploring the Beautiful Beaches of Bali</h2>
                    <p class="blog-post-meta">July 9, 2024 by <a href="Admin.jsp">Admin</a></p>
                    <img src="Assets/images/lmr_650_450.jpg" alt="Bali Beach" class="img-fluid w-50 ">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ut eros hendrerit, consectetur ipsum et, varius nulla. Suspendisse potenti...</p>
                    <a href="#" class="btn btn-primary">Read More</a>
                </div>

                <div class="blog-post">
                    <h2 class="blog-post-title">A Culinary Journey through Italy</h2>
                    <p class="blog-post-meta">June 25, 2024 by <a href="Admin.jsp">Admin</a></p>
                    <img src="Assets/images/pexels-67117688-8285167.jpg" alt="Italy Food" class="img-fluid w-50 ">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ut eros hendrerit, consectetur ipsum et, varius nulla. Suspendisse potenti...</p>
                    <a href="#" class="btn btn-primary">Read More</a>
                </div>
            </div>

            
            <div class="col-lg-4">
                <div class="blog-sidebar">
                    <div class="p-4 mb-3 bg-light rounded">
                        <h4 class="fst-italic">About</h4>
                        <p class="mb-0">Welcome to our travel blog! Discover the world's best destinations, travel tips, and experiences from our expert writers.</p>
                    </div>

                    <div class="p-4">
                        <h4 class="fst-italic">Categories</h4>
                        <ol class="list-unstyled mb-0">
                            <li><a href="#">Travel Tips</a></li>
                            <li><a href="#">Destinations</a></li>
                            <li><a href="#">Food & Drink</a></li>
                            <li><a href="#">Culture</a></li>
                        </ol>
                    </div>

                    <div class="p-4">
                        <h4 class="fst-italic">Recent Posts</h4>
                        <ol class="list-unstyled">
                            <li><a href="#">Exploring the Beautiful Beaches of Bali</a></li>
                            <li><a href="#">A Culinary Journey through Italy</a></li>
                            <li><a href="#">Top 10 Hidden Gems in Europe</a></li>
                            <li><a href="#">How to Travel on a Budget</a></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
    