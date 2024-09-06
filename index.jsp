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
   
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" 
     integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" 
     crossorigin="anonymous" 
     referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
     rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body class="body">
  <video autoplay muted loop class="video_background ">
    <source src="Assets/images/8398057-uhd_4096_2160_25fps.mp4" class="" type="video/mp4"></video>
     </video>
 
  
  
     <div>
      <ul class="list-unstyled d-flex justify-content-end mx-3">
        <li class="text-decoration-none mx-3 fs-5 text-white  fw-bold d-none d-lg-block">
          <a href="Blogs.jsp" class="text-decoration-none text-white">Blogs</a></li>
        <li class="text-decoration-none mx-2 fs-5 text-white fw-bold d-none d-lg-block">
           <a href="Subscribe.jsp" class="text-decoration-none text-white">Subscribe</a>
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
    <li><a class="dropdown-item" href="adminbefore.jsp">Admin</a></li>

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
        <li><a class="dropdown-item" href="adminbefore.jsp">Admin</a></li>
       
      </ul></button>
    </div>
</div>
</div>
  </div>
  
  <div>
    <div class="background ">
      
        <h1 class="pt-5 text-center text-white">Welcome to TravelHub!</h1>
        <p class="text-center text-white d-block d-md-none d-lg-none">Discover the world's best Destinations</p> 
        <p class="text-center  fs-3 pt-5 text-white d-none d-md-block d-lg-block">Discover the world's best destinations and book your dream vacation with ease. Our platform offers personalized recommendations, seamless booking, and expert travel guides.</p>
        <p class="text-center"><a href="packages.jsp" class="btn btn-success">Discover Destinations</a></p>
        
    </div>
  </div>

     <h3 class="mx-5 p-5 text-center text-danger ">What TravelHub brings to the table </h3>
     <div>
      <div class=" container row mx-lg-5">
      <div class="col-12 col-lg-3 col-md-6 ">
        <div class="card mb-3" style="width: 18rem;">
          <div class="card-body">
            <h5 class="card-title"><i class="fa-solid fa-tire" style="color: #511f4b;"></i></h5>
            <h6 class="card-subtitle mb-2  fw-bold text-white">Search for the best flight deals</h6>
            <p class="card-text text-white">Search for the best flight deals from 900+ travel sites. No need to search multiple websites,
               we allows you to compare all of them in one place.</p>
            <a href="#" class="card-link text-white">View More</a>

          </div>
        </div>
        </div>
        <div class="col-12 col-lg-3 col-md-6">
          <div class="card mb-3" style="width: 18rem;">
            <div class="card-body">
              <h5 class="card-title"><i class="fa-solid fa-atom" style="color: #511f48;"></i></h5>
              <h6 class="card-subtitle mb-2  fw-bold text-white">Book with flexibility</h6>
              <p class="card-text text-white">Easily find and filter flights that suit your different requirements, like no cancellation fees.
                ipsum dolor sit   ipsum dolor sit
              
              </p>
              <a href="#" class="card-link text-white">View More</a>
            
            </div>
          </div>
          </div>
          <div class="col-12 col-lg-3 col-md-6">
            <div class="card mb-3" style="width: 18rem;">
              <div class="card-body">
                <h5 class="card-title"><i class="fa-solid fa-fan" style="color: #511f4b;"></i></h5>
                <h6 class="card-subtitle mb-2  fw-bold text-white">Trusted and free</h6>
                <p class="card-text text-white">We are completely free to use - no hidden charges or Lorem ipsum dolor sit amet.lorem
                  ipsum dolor sit ipsum dolor sit
                </p>
                <a href="#" class="card-link text-white">View More</a>
             
              </div>
            </div>
            </div>
            <div class="col-12 col-lg-3 col-md-6">
              <div class="card mb-3" style="width: 18rem;">
                <div class="card-body">
                  <h5 class="card-title"><i class="fa-solid fa-hurricane" style="color: #511f3f;"></i></h5>
                  <h6 class="card-subtitle mb-2 text-white fw-bold">Easy to use trip planning tools</h6>
                  <p class="card-text text-white">With useful tools like trip planner, flight tracker and bag measure, 
                    we is more than just a flight search site - it is your complete travel partner.</p>
                  <a href="#" class="card-link text-white">View More</a>
                 
                </div>
              </div>
              </div>
          </div>
     </div>
    

    <h3 class="mx-5 pt-5 text-center text-danger pb-3">Our Trips: </h3>
 <div class="bg">

  <div class="mx-5">
  <div class="container row mx-lg-5">
    
    <div class="col-12 col-lg-4 col-md-6">
      <div class="card m-3 card_second img-fluid" style="width: 20rem;">
        <div class="card-body">
          <h5 class="card-title">
            <video autoplay muted loop class="w-100 h-100">
              <source src="Assets/images/4125025-uhd_3840_2160_24fps.mp4 " >
            </video>
          </h5>
          <h6 class="card-subtitle mb-2 text-white fw-bold">VIP access Properties</h6>
          <p class="card-text text-white">You could earn more onekey cash from top rated stays
            .</p>
          <a href="#" class="card-link text-white">View More</a>
         
        </div>
      </div>
    </div>
    <div class="col-12 col-lg-4 col-md-6">
      <div class="card m-3 card_second img-fluid" style="width: 20rem;">
        <div class="card-body">
          <h5 class="card-title">
          <video autoplay muted loop class="w-100 h-100">
            <source src="Assets/images/16668409-uhd_3840_2160_24fps.mp4">
          </video>
          </h5>
          <h6 class="card-subtitle mb-2 text-white fw-bold pt-3">Bucket List Experiences</h6>
          <p class="card-text text-white">Trips that travel dreams made of
     </p>
          <a href="#" class="card-link text-white">View More</a>
         
        </div>
      </div>
    </div>
    <div class="col-12 col-lg-4 col-md-6">
      <div class="card m-3 card_second img-fluid" style="width: 20rem;">
        <div class="card-body">
          <h5 class="card-title">
            <video autoplay muted loop class="w-100 h-100">
              <source src="Assets/images/2257010-uhd_3840_2160_24fps.mp4">
            </video>
          </h5>
          <h6 class="card-subtitle mb-2 text-white fw-bold">thats the expedia edge</h6>
          <p class="card-text text-white">When you book flights with expedia,yu have an edge
         .</p>
          <a href="#" class="card-link text-white">View More</a>
         
        </div>
      </div>
    </div>
  </div>
</div>


  <div class="mx-5">
 <div class="  container row mx-lg-5">
    <div class="col-12 col-lg-4 col-md-6">
      <div class="card m-3 card_second img-fluid" style="width: 20rem;">
        <div class="card-body">
          <h5 class="card-title">
            <video autoplay muted loop class="w-100 h-100">
              <source src="Assets/images/4763824-sd_426_240_24fps (3).mp4 " >
            </video>
          </h5>
          <h6 class="card-subtitle mb-2 text-white fw-bold">Big trips are better with bundled</h6>
          <p class="card-text text-white">Book your flight+hotel together and save more 
         .</p>
          <a href="#" class="card-link text-white">View More</a>
         
        </div>
      </div>
    </div>
    <div class="col-12 col-lg-4 col-md-6">
      <div class="card m-3 card_second img-fluid" style="width: 20rem;">
        <div class="card-body">
          <h5 class="card-title">
          <video autoplay muted loop class="w-100 h-100">
            <source src="Assets/images/2867873-uhd_3840_2160_24fps.mp4">
          </video>
          </h5>
          <h6 class="card-subtitle mb-2 text-white fw-bold">Save on flights to get going</h6>
          <p class="card-text text-white">Flights deals ready to take you the most loved places 
       .</p>
          <a href="#" class="card-link text-white">View More</a>
         
        </div>
      </div>
    </div>
    <div class="col-12 col-lg-4 col-md-6">
      <div class="card m-3 card_second img-fluid" style="width: 20rem;">
        <div class="card-body">
          <h5 class="card-title">
            <video autoplay muted loop class="w-100 h-100">
              <source src="Assets/images/3115221-hd_1920_1080_24fps.mp4">
            </video>
          </h5>
          <h6 class="card-subtitle mb-2 text-white fw-bold">Easy to use trip planning tools</h6>
          <p class="card-text text-white">With useful tools like trip planner, flight tracker and bag measure. 
      .</p>
          <a href="#" class="card-link text-white">View More</a>
         
        </div>
      </div>
    </div>
  </div>
</div>
</div>

 <div class="container p-5">
  <div class="one text-center pt-5 ">
    <h3>THE BEST OF  TRAVEL DELIVERED TO YOUR INBOX</h3>
     <h6 class="text-center m-1">Get inspired by news, tips, and destinations for dreamers and doers alike, plus updates from National Geographic 
      and The Walt Disney Family of Companies comanany</h6> 
      
    <!--    <button type="button" class="btn-lg btn btn-warning m-3">Sign up</button>   -->  
    <a href='Registration.jsp'  class="btn-lg btn btn-warning m-3">Sign up</a>
   </div>
 </div>


   <div class="container-fluid">
    <h3 class="text-center pb-3">Frequently Asked Questions</h3>
    <div class="row Frequently pb-5 pt-5">
    
       <div class="col-12 col-lg-6">
        <div class="accordion" id="accordionExample">
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
           How Does TravelHub works ?
              </button>
            </h2>
            <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
              <div class="accordion-body">
                We’re a flight, car hire and hotel search engine. We scan all the top airlines and travel providers across the net, so you can compare flight fares and other travel costs in one place.
                 Once you’ve found the best flight, car hire or hotel, you book directly with the provider.
              </div>
            </div>
       </div>
    </div>
   </div>
   <div class="col-12 col-lg-6 pb-3 ">
    <div class="accordion" id="accordionExample">
      <div class="accordion-item">
        <h2 class="accordion-header">
          <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
            How can I find the cheapest flight using TravelHub?  
          </button>
        </h2>
        <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
          <div class="accordion-body">
              <p>Finding flights is easy here – over 100 million savvy travellers come to us each month to find cheap flight tickets, 
                hotels and car hire. Here are a few simple tips on how to get the most out of your flight search.</p>
          </div>
        </div>
   </div>
</div>
</div>

<div class="col-12 col-lg-6 pb-3 ">
  <div class="accordion" id="accordionExample">
    <div class="accordion-item">
      <h2 class="accordion-header">
        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
        Whats a Price Alert
        </button>
      </h2>
      <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
        <div class="accordion-body">
            <p>Finding flights is easy here – over 100 million savvy travellers come to us each month to find cheap flight tickets, 
              hotels and car hire. Here are a few simple tips on how to get the most out of your flight search.</p>
        </div>
      </div>
 </div>
</div>
</div>
<div class="col-12 col-lg-6 pb-3">
<div class="accordion" id="accordionExample">
<div class="accordion-item">
  <h2 class="accordion-header">
    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
     Can i book flights that emits CO2 ? 
    </button>
  </h2>
  <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
    <div class="accordion-body">
     <p>Your flight booking confirmation email and all the other info you'll need will come from the airline or provider you booked with. If you have any follow-up questions 
      about your booking, or want to change or cancel your flight, you’d need to get in touch with them.</p>
    </div>
  </div>
</div>
</div>
</div>

<div class="col-12 col-lg-6 pb-3">
  <div class="accordion" id="accordionExample">
    <div class="accordion-item">
      <h2 class="accordion-header">
        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
         What happens after i have booked my flight ?
        </button>
      </h2>
      <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
        <div class="accordion-body">
          <p>Your flight booking confirmation email and all the other info you'll need will come from the airline or provider you booked with. If you have any 
            follow-up questions about your booking, or want to change or cancel your flight, you’d need to get in touch with them.</p>
        </div>
      </div>
 </div>
</div>
</div>
<div class="col-12 col-lg-6 pb-3">
<div class="accordion" id="accordionExample">
<div class="accordion-item">
  <h2 class="accordion-header">
    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
      Can I book a flexible flight ticket? 
    </button>
  </h2>
  <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
    <div class="accordion-body">
      <p>We understand how important it is to have flexible holiday plans. Sometimes, you can pay an extra fee for an amendable airline ticket, so look out for this option as you book. You can also look 
        for hotels and car hire options with free cancellation, so you can book now and amend or even cancel later if you need to.</p>
    </div>
  </div>
</div>
</div>
</div>

</div>
</div>



 <div class="container-fluid pt-5 bg-dark text-white">
  <div class="row p-5 ">
    <div class="col-12 col-lg-3 col-md-6">
    <p class="fs-5 fw-bold">Legal</p>
    <ul class="list-unstyled">
      <li class="text-decoration-none">Terms Of Use</li>
      <li   class="text-decoration-none">Privacy Policy</li>
      <li  class="text-decoration-none">Your Rights</li>
 
    </ul>
    </div>
    <div class="col-12 col-lg-3 col-md-6">
      <p class="fs-5 fw-bold">Our Sites</p>
      <ul class="list-unstyled">
        <li class="text-decoration-none">Attend a event</li>
        <li   class="text-decoration-none">Book a trip</li>
        <li  class="text-decoration-none">Buy a maps</li>
        <li  class="text-decoration-none">Warch Tv</li>
        <li  class="text-decoration-none">Support Our Mission</li>
      </ul>
      </div>
      <div class="col-12 col-lg-3 col-md-6 ">
        <p class="fs-5 fw-bold">Join Us</p>
        <ul class="list-unstyled">
          <li class="text-decoration-none">Subscriber</li>
          <li   class="text-decoration-none">Customer Service</li>
          <li  class="text-decoration-none">Renew Subscription</li>
          <li  class="text-decoration-none">Manage your Subscription</li>
          <li  class="text-decoration-none">Sign up for the newsletters</li>
        </ul>
        </div>
        <div class="col-12 col-lg-3 col-md-6  ">
          <p class="fs-5 fw-bold">Follow us :</p>
          <div class="d-flex">
            <p><i class="fa-brands fa-square-twitter"></i>
              <i class="fa-brands fa-instagram"></i>
              <i class="fa-brands fa-facebook"></i>
              <i class="fa-brands fa-pinterest"></i>
            </p>
          </div>
          
          </div>

          <p class="text-center pt-5">Copyright by TravelHub </p>
  </div>
 </div>
  <script src="javascript/style.js"></script>
  <script src="javascript/include.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>