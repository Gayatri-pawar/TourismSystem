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
    <link rel="stylesheet" href="Assets/css/adminpackage.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" 
     integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" 
     crossorigin="anonymous" 
     referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body class="review">

    <div>
        <ul class="list-unstyled d-flex justify-content-end mx-3">
          <li class="text-decoration-none mx-3 fs-5 text-white  fw-bold d-none d-lg-block">
           <a href="Blogs.jsp" class="text-decoration-none text-white">Blogs</a></li>
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
   
    <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
      <a href="Admin.jsp" class="text-decoration-none text-white">Admin</a></li>
    <!--  <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
      <a href="adminpackage.jsp" class="text-decoration-none text-white">Packages</a></li>   -->
    <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
      <a href="Booking.jsp" class="text-decoration-none text-white">Bookings</a></li>
    
    <li class="text-decoration-none mx-4 fw-bold fs-5 text-white  d-none d-lg-block">
      <a href="Inventory.jsp" class="text-decoration-none text-white">Inventory</a></li>
      <li class="text-decoration-none mx-4 fw-bold fs-5 text-white  d-none d-lg-block">
        <a href="Review.jsp" class="text-decoration-none text-white">Review</a></li>
        
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
  
      <li class="p-2"><a class="text-decoration-none  text-black" href="profile.jsp">User</a></li>
 <!--       <li class="p-2"><a class="text-decoration-none  text-black" href="adminpackage.jsp">Packages</a></li>  -->
      <li class="p-2"><a class="text-decoration-none  text-black" href="Booking.jsp">Booking</a></li>
      <li class="p-2"><a class="text-decoration-none  text-black" href="Inventory.jsp">Inventory</a></li>   
      <li class="p-2"><a class="text-decoration-none  text-black" href="Review.jsp">Reviews</a></li>
       <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
      <a href="report.jsp" class="text-decoration-none text-white">Reports</a></li>
         <li class="text-decoration-none mx-3 fw-bold fs-5 text-white  d-none d-lg-block">
      <a href="staff.jsp" class="text-decoration-none text-white">Staff</a></li>
      <li class="p-2"><a class="text-decoration-none  text-black" href="Feedback.jsp">Feedback</a></li>
            <li class="p-2"><a class="text-decoration-none  text-black" href="Blogs.jsp">Blogs</a></li>
                  <li class="p-2"><a class="text-decoration-none  text-black" href="Subscribe.jsp">Subscribe</a></li>
                        <li class="p-2"><a class="text-decoration-none  text-black" href="Newsletter.jsp">Newsletter</a></li>
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
      
        <li><a class="dropdown-item" href="logout.jsp">Logout</a></li>
      </ul></button>
    </div>
</div>
</div>
  </div>
 
  <div>


    <div class="container mt-5">
        <h2 class="text-center mb-4 text-primary pt-5">Manage Customer Reviews</h2>
        
    
        <div class="mb-4">
       
        </div>


        <div class="mb-4">
           
        </div>

    
        <div class="card">
            <div class="card-header">
                Customer Reviews
            </div>
            <div class="card-body table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                          <!--     <th>ID</th>   -->
                            <th>Customer Name</th>
                         <!--  <th>Package/Destination</th>  -->  
                           <th>Email</th>
                            <th>Rating_number</th>
                            <th>Reviewer_name</th>
                            <th>Rating</th>
                            <th>Comment</th>
                        </tr>
                    </thead>    
                    <tbody>
                        <%
       Class.forName("com.mysql.cj.jdbc.Driver");
       Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/tms2" ,  "root", "Root24");
       PreparedStatement ps = conn1.prepareStatement(
   		    "SELECT registration.Name, registration.email, review.review_no, review.reviewer_name, review.rating, review.comment " +
   		    "FROM registration " +
   		    "INNER JOIN review ON registration.Name = review.reviewer_name " +
   		    "where registration.Name = review.reviewer_name"
   		);

        		 ResultSet rs = ps.executeQuery();
        		 
        	     
        	       while(rs.next()){
        	    	   
        	      	 
        	    	   String Name1 = rs.getString("Name");
        	    	   String Email1 = rs.getString("email");
        	    	   String Review_no = rs.getString("review_no"); 
        	    	    String reviewer_name = rs.getString("reviewer_name");
        	    	    String rating = rs.getString("rating");
        	    	    String comment = rs.getString("comment");
        	    	    %>
        	    	    
        	    	    
        	          <tr>
        	            <td><%= Name1 %> </td> 
        	            <td><%= Email1 %></td>  
        	            <td><%=  Review_no %></td>
        	            <td><%= reviewer_name %></td> 
        	            <td><%=  rating%></td> 
        	            <td><%= comment %></td>
        	            
        	       </tr>
        	            <% 
        	             }
        	       
        	            out.print("</table>");
        	          
        	            out.print("</div>");
       
       %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
    