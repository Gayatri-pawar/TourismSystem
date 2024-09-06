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


@WebServlet("/Booking")
public class Booking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Booking() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  
		 String destination = request.getParameter("destination");
		 Date start_date = java.sql.Date.valueOf(request.getParameter("start-date"));
		 Date end_date = java.sql.Date.valueOf(request.getParameter("end-date"));
		 int travelers = Integer.parseInt(request.getParameter("travelers"));
		 String packagee = request.getParameter("package");
		
		
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tms2","root","Root24");
			 PreparedStatement ps = con.prepareStatement("insert into booking(destination,start_date,end_date,no_of_travelers,package) values(?,?,?,?,?)");
		    ps.setString(1, destination);
		     ps.setDate(2, start_date);
		     ps.setDate(3, end_date);
		     ps.setInt(4, travelers);
		     ps.setString(5, packagee);
		  
		  ps.executeUpdate();
		  
		  PrintWriter out = response.getWriter();
		  
		  
		   out.println("<html><body>");
		   out.println("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" \r\n"
		   		+ "    integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\" crossorigin=\"anonymous\">");
	
		    out.println("<div class=container pt-5>");
		    out.println("<p class=pt-5>");
		   out.println("<p class='pt-5 text-warning fs-1 shadow text-center p-5 bg-secondary'>Booking successfully Done </p>");
		   
		   out.println("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js\" \r\n"
		   		+ "    integrity=\"sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz\" crossorigin=\"anonymous\"></script>");
		  
//		   out.println("</div>");
		   out.println("<p class='text-center fs-2 '>Your Booking Details : </p>");
		   out.println("<p class='text-center text-secondary fs-5'>Your Destination is : " +destination+ "</p>");
		   out.println("<p class='text-center text-secondary fs-5'>Starting-date is : " +start_date + "</p>");
		   out.println("<p class='text-center text-secondary fs-5'>ending-date is : " +end_date+ "</p>");
		   out.println("<p class='text-center text-secondary fs-5'>No of travelers is : " +travelers + "</p>");
		   out.println("<p class='text-center text-secondary fs-5'>Your package is : " +packagee+ "</p>");
//		   out.println("<a href='customer.jsp' class= 'text-center btn btn-sm btn-primary'>Back To Homepage</a>");
		   out.println("<div class='text-center'>");
		   out.println("<a href='customer.jsp' class='text-center btn btn-sm btn-primary '>Back To Homepage</a>");
           out.println("</div>");
		   out.println("</body>");
		   
		   
		   
		   
		   
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	

}
