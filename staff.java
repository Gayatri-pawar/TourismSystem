package TMS2;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/staff")
public class staff extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public staff() {
        super();
       
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		 try {
	         
				String name = request.getParameter("full-name");
				String email= request.getParameter("email");
				String password = request.getParameter("password");
				
//			 String empId = request.getParameter("empid");
//			 String qualification = request.getParameter("qualification");
//			  Date hire =  java.sql.Date.valueOf(request.getParameter("hire"));
//			  
//			     int experience = Integer.parseInt(request.getParameter("experience"));
//			     
//			    String nationality = request.getParameter("nationality");)
				String role= request.getParameter("role");
				String department = request.getParameter("department");
				String status= request.getParameter("status");
				String profile_picture = request.getParameter("profile-picture");
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/tms2","root","Root24");
				PreparedStatement ps= con.prepareStatement("insert into staff(name,email,password,role,department,status) values(?,?,?,?,?,?)");
				ps.setString(1, name);
				ps.setString(2, email);
				ps.setString(3, password);
				ps.setString(4, role);
				ps.setString(5, department);
				ps.setString(6, status);
//				ps.setString(7, profile_picture);
	     
	          ps.executeUpdate();
	          PrintWriter out = response.getWriter();
	          out.println("<html><head>");
	          out.println("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" \r\n"
				   		+ "    integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\" crossorigin=\"anonymous\">");
			
	          out.println("<body>");
	          out.println("<p class='text-warning shadow p-5 m-5 fs-1 bg-light text-center'>Added Record Successfully</p>");
	          out.println("<div class='text-center'>");
	          out.println("<a href='staff.jsp' class='text-center btn btn-sm btn-primary '>Back To Homepage</a>");
	          out.println("</div>");
	          out.println("</body>");
	          out.println("</head></html>");
	        } catch (Exception e) {
	            e.printStackTrace();
	          
	        }
	    }
}