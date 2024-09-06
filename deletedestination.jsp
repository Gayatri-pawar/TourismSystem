<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import= "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>Tourism Management System</title>
   <link rel="icon" type="image/png" href="Assets/images/nature-6740243_1280.jpg">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" 
     integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" 
     crossorigin="anonymous" 
     referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>


 <%
 String dest_no = request.getParameter("dest_no");
 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tms2" , "root" , "Root24");
 PreparedStatement ps = conn.prepareStatement("delete from admin_destination where dest_no=?");
 ps.setString(1, dest_no);
 ps.executeUpdate();

  out.println("<html><head>");
  out.println("<body class='p-5 '>");
  out.println("<div class='text-center shadow bg-success p-5'>");
 out.println("<p class='fw-bold h3'>ID Deleted: " +dest_no + "</p>");
 out.println("<a href='admindestination.jsp' class='btn btn-primary'>Back to Homepage</a>");
out.println("</body>");
out.println("</head></html>");
 %>

 
 
 
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>