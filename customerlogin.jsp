<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tourism Management System</title>
   <link rel="icon" type="image/png" href="Assets/images/nature-6740243_1280.jpg">s
    <link rel="stylesheet" href="Assets/css/customer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .login-container {
            background: linear-gradient(45deg, #a18cd1, #fbc2eb);
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: 100px auto;
            width: 100%;
            max-width: 400px;
        }
        .login-container h2 {
            margin-bottom: 20px;
        }
        .login-container input[type="text"],
        .login-container input[type="password"] {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 100%;
            margin-bottom: 10px;
        }
        .customer_login{
            margin-top: 10px;
            padding: 10px;
            background-color: #4CAF50;
            border: none;
            border-radius: 4px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            width: 100%;
        }
        .customer_login:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body class="Registration-form">
    <nav class="nav pt-3">
        <div>
            <img src="Assets/images/a6e72cfd-7606-47fb-b492-bde505694ed0.jpg" class="img-fluid logo pt-1"/>
        </div>
        <div class="justify-content-center d-flex mx-5 pt-2">
            <ul class="list-unstyled d-flex mx-5">
                <li class="text-decoration-none mx-3 fw-bold fs-5 text-white d-none d-lg-block">
                    <a href="index.jsp" class="text-decoration-none text-white">Home</a>
                </li>
                <li class="text-decoration-none mx-5 fw-bold fs-5 text-white d-none d-lg-block">
                    <a href="packages.jsp" class="text-decoration-none text-white">Packages</a>
                </li>
                <li class="text-decoration-none mx-4 fw-bold fs-5 text-white d-none d-lg-block">
                    <a href="Destination.jsp" class="text-decoration-none text-white">Destination</a>
                </li>
                <li class="text-decoration-none mx-4 fw-bold fs-5 text-white d-none d-lg-block">
                    <a href="Gallery.jsp" class="text-decoration-none text-white">Gallery</a>
                </li>
                <li class="text-decoration-none mx-5 fw-bold fs-5 text-white d-none d-lg-block">
                    <a href="poppackages.jsp" class="text-decoration-none text-white">Popular Packages</a>
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
        </div>
        <div class="mx-5">
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
                <button class="btn btn-secondary dropdown-toggle d-none d-lg-block" data-bs-toggle="dropdown" aria-expanded="false">
                    <i class="bi bi-gear"></i>
                </button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="customer.jsp">Customer</a></li>
                    <li><a class="dropdown-item" href="Admin.jsp">Admin</a></li>
                </ul>
            </div>
        </div>
    </nav>
    
    <div class="login-container">
        <h2 class="text-center">Login</h2>
        <form action="customerlogin" method="post">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" class="w-100">
            <br>
            <label for="password">Password</label>
            <input type="password" id="password" name="password" class="w-100">
            <br>
            <input type="submit" value="Login" class='customer_login'>
            <br>
            <p><a class="text-primary" href="customer.jsp">Back to home</a></p>
            <p><a class="text-primary" href="Registration.jsp">Don't have an account?</a></p>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
    