<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Results</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class='bg-transparent'>
    <div class="container mt-4">
        <h1 class="text-center pt-5 "> Search Result</h1>
        <%
            String message = (String) request.getAttribute("message");
            List<String> results = (List<String>) request.getAttribute("results");

            if (message != null) {
                out.print("<p>" + message + "</p>");
            } else if (results != null && !results.isEmpty()) {
                out.println("<ul>");
                for (String result : results) {
                 //   out.println("<li>" + result + "</li>");
                	  out.println("<div class='text-center shadow bg-success p-5'>");
                //      out.println("<p>Your search found:  " +result+"    For information and booking, visit the pages below:</p>");
                out.println("<h3><strong>Your search found: " + result + "</strong></h3>");
out.println("<p>For information and booking, visit the pages below:</p>");
                         out.println("<div class=col-12'>");
                      out.println("<a href='Destination.jsp' class='btn btn-primary mx-2 m-2'>Destinations</a>");
                      out.println("<a href='booking.jsp' class='btn btn-secondary mx-2'>Bookings</a>");
                      out.println("</div>");
                      out.println("</div>");
                }
                out.println("</ul>");
            } else {
                out.print("<p>No results found.</p>");
            }
        %>
    </div>

    <!-- jQuery and Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
