<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Tourism Management System</title>
   <link rel="icon" type="image/png" href="Assets/images/nature-6740243_1280.jpg">
    <link rel="stylesheet" href="Assets/css/destination.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" 
    integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" 
    crossorigin="anonymous" 
    referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

 <script>
document.addEventListener('DOMContentLoaded', () => {
    function checkdestination() {
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
    checkdestination();
});

</script>
</head>
<body class="destination" onload="checkdestination">
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
    <div>
        <ul class="list-unstyled d-flex justify-content-end mx-3">
          <li class="text-decoration-none mx-3 fs-5 text-white  fw-bold d-none d-lg-block">
            <a href="Blogs.jsp" class="text-decoration-none text-white">Blogs</a></li>
          <li class="text-decoration-none mx-2 fs-5 text-white fw-bold d-none d-lg-block">
                <a href="Blogs.jsp" class="text-decoration-none text-white">Subscribe</a></li>
          <li class="text-decoration-none mx-2 fs-5 text-white fw-bold d-none d-lg-block">
                <a href="Blogs.jsp" class="text-decoration-none text-white">Newsletter</a></li>
          <hr style="border-color: black;"/>
        </ul>
    </div>
    <div class="nav pt-3">
        <div>
           <img src="Assets/images/a6e72cfd-7606-47fb-b492-bde505694ed0.jpg"  class="img-fluid logo"/>
        </div>
        <div class="justify-content-center d-flex mx-5">
            <ul class="list-unstyled d-flex mx-5">
                <li class="text-decoration-none mx-3 fw-bold fs-5  text-white d-none d-lg-block">
                      <a href="index.jsp" class="text-decoration-none text-white">Home</a></li>
                <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
                    <a href="packages.jsp" class="text-decoration-none text-white">Packages</a>
                </li>
                <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
                    <a href="Destination.jsp" class="text-decoration-none text-white">Destination</a>
                </li>
                <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
                    <a href="Gallery.jsp" class="text-decoration-none text-white">Gallery</a>
                </li>
                <li class="text-decoration-none mx-4 fw-bold fs-5 text-white  d-none d-lg-block">
                    <a href="poppackages.jsp" class="text-decoration-none text-white">Popular Packages</a>
                </li>
                <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
                    <a href="Feedback.jsp" class="text-decoration-none text-white">Feedback</a>
                </li>
            </ul> 
        </div>
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
                    <li class="p-2"><a href="index.jsp" class="text-decoration-none text-black">Home</a></li>
                    <li class="p-2"><a href="packages.jsp" class="text-decoration-none text-black">Packages</a></li>
                    <li class="p-2"><a href="Destination.jsp" class="text-decoration-none text-black">Destination</a></li>
                    <li class="p-2"><a href="Gallery.jsp" class="text-decoration-none text-black">Gallery</a></li>
                    <li class="p-2"><a href="poppackages.jsp" class="text-decoration-none text-black">Popular Packages</a></li>
                    <li class="p-2"><a href="Feedback.jsp" class="text-decoration-none text-black">Feedback</a></li>
                    <li class="p-2"><a href="Blogs.jsp" class="text-decoration-none text-black">Blogs</a></li>
                    <li class="p-2"><a href="Subscribe.jsp" class="text-decoration-none text-black">Subscribe</a></li>
                    <li class="p-2"><a href="Newsletter.jsp" class="text-decoration-none text-black">Newsletter</a></li>
                    <li class="p-2">
                        <a href="#" class="text-decoration-none text-black dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">Settings</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="customer.jsp">Customer</a></li>
                            <li><a class="dropdown-item" href="Admin.jsp">Admin</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    <!-- </div> -->
    
    <div class=" mx-5">
        <div class="d-flex justify-content-end">
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
                <i class="bi bi-gear"></i>
            </button>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="customer.jsp">Customer</a></li>
                <li><a class="dropdown-item" href="Admin.jsp">Admin</a></li>
            </ul>
        </div>
    </div>
    <main class="container mt-4">
        <section class="text-center">
            <div class="jumbotron p-5 mb-3">
                <h1 class="display-4">Explore Our Destinations</h1>
                <p class="fs-2 lead">Find your next adventure from our curated list of travel destinations.</p>
            </div>
        </section>
        <section class="row">
            <div class="col-12 col-lg-4 col-md-4 mb-4">
                <div class="card">
                    <img src="Assets/images/water-5173774_1280.jpg" class="card-img-top img-fluid" alt="Destination 1">
                    <div class="card-body">
                        <h5 class="card-title">Tokyo ,Japan </h5>
                        <p class="card-text">Tokyo is known for being a lively and futuristic metropolis. It features a unique mix of the old 
                        and modern that
                         blends perfectly with ancient temples hidden among large, modern architecture..</p>
                        <a href="destination1-details.html" class="btn btn-primary">Read More</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-lg-4 col-md-4 mb-4">
                <div class="card">
                    <img src="Assets/images/ship-8308680_640.jpg" class="card-img-top img-fluid" alt="Destination 2">
                    <div class="card-body">
                        <h5 class="card-title">Seattle,United States</h5>
                        <p class="card-text">Seattle is known for its coffee, music and pleasant weather. The city is not only known for its 
                        breathtaking natural views but also a
                         tech hub with some of the biggest tech companies including Amazon and Microsoft resided here.</p>
                        <a href="destination2-details.html" class="btn btn-primary">Read More</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-lg-4 col-md-4 mb-4">
                <div class="card">
                    <img src="Assets/images/adventure-4381674_1280.jpg" class="card-img-top img-fluid" alt="Destination 3">
                    <div class="card-body">
                        <h5 class="card-title">Washington, D.C.</h5>
                        <p class="card-text">Capital of the United States, Washington city is known for its rich heritage and political scene. Home to Govt. Headquarters, 
                        the city is filled with great museums and awe-inspiring monuments.</p>
                        <a href="destination3-details.html" class="btn btn-primary">Read More</a>
                    </div>
                </div>
            </div>
        </section>
        <section class="row">
            <div class="col-12 col-lg-4 col-md-4 mb-4">
                <div class="card">
                    <img src="Assets/images/autumn-7543217_1280.jpg" class="card-img-top img-fluid" alt="Destination 4">
                    <div class="card-body">
                        <h5 class="card-title">Berlin,Germany</h5>
                        <p class="card-text">Germany is a country of contrasts, where ancient castles and modern cities,
                         alpine peaks and sandy beaches, vibrant culture and tranquil nature coexist.</p>
                        <a href="destination4-details.html" class="btn btn-primary">Read More</a>
                    </div>
                </div>
            </div>
            
            <div class="col-12 col-lg-4 col-md-4 mb-4">
                <div class="card">
                    <img src="Assets/images/hike-6775216_1280.jpg" class="card-img-top img-fluid" alt="Destination 6">
                    <div class="card-body">
                        <h5 class="card-title">Rome,Italy</h5>
                        <p class="card-text">The Eternal City, Rome is worth a visit at least once, with its beautiful architecture and monuments, great works of art, small-town charm, slow pace of life, and world-renowned food, albeit seeing everything it has to offer would take a lifetime.</p>
                        <a href="destination6-details.html" class="btn btn-primary">Read More</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-lg-4 col-md-4 mb-4 ">
                <div class="card ">
                    <img src="Assets/images/bridge-4396131_1280.jpg" class="card-img-top img-fluid" alt="Destination 5">
                    <div class="card-body">
                        <h5 class="card-title">Sydney,Australia</h5>
                        <p class="card-text">The vibrant city, of Sydney, is a place for all. It is full of sophisticated spots like the iconic Opera 
                        Houses, inviting beaches, and trendy areas like The Rocks and Darling Harbor..</p>
                        <a href="destination5-details.html" class="btn btn-primary">Read More</a>
                    </div>
                </div>
            </div>
        </section>
    </main>
   </div>
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
   
</body>
</html>
    