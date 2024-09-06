<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tourism Management System</title>
    <link rel="icon" type="image/png" href="Assets/images/nature-6740243_1280.jpg">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
          integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body class='pt-5 bg-transparent'>
    <div class="container text-center shadow p-5 bg-light">
        <h1>Staff Information</h1>
        <%
            String srNoStr = request.getParameter("sr_no");
            if (srNoStr != null && !srNoStr.isEmpty()) {
                int sr_no = Integer.parseInt(srNoStr);

                String url = "jdbc:mysql://localhost:3306/tms2";
                String user = "root";
                String password = "Root24";

                try (Connection conn = DriverManager.getConnection(url, user, password);
                     PreparedStatement ps = conn.prepareStatement("SELECT * FROM staff WHERE sr_no = ?")) {
                    ps.setInt(1, sr_no);
                    ResultSet rs = ps.executeQuery();

                    if (rs.next()) {
                        out.println("<p class='fw-bold'>ID: " + rs.getInt("sr_no") + "</p>");
                        out.println("<p class='fw-bold'>Name: " + rs.getString("name") + "</p>");
                        out.println("<p class='fw-bold'>Email: " + rs.getString("email") + "</p>");
                        out.println("<p class='fw-bold'>Password: " + rs.getString("password") + "</p>");
                        out.println("<p class='fw-bold'>Role: " + rs.getString("role") + "</p>");
                        out.println("<p class='fw-bold'>Department: " + rs.getString("department") + "</p>");
                        out.println("<p class='fw-bold'>Status: " + rs.getString("status") + "</p>");
                    } else {
                        out.println("<p>No record found for ID: " + sr_no + "</p>");
                    }
                } catch (SQLException e) {
                    out.println("<p>Error: " + e.getMessage() + "</p>");
                }
            } else {
                out.println("<p>Invalid ID provided.</p>");
            }
            
            out.println("<a href='report.jsp' class='btn btn-primary'>Back to Homepage</a>");
        %>
    </div>
</body>
</html>
