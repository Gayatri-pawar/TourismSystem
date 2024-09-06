package TMS2;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/submitReview")
public class submitReview extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public submitReview() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  
		String name = request.getParameter("name");
		int no = Integer.parseInt(request.getParameter("rating"));
		String comment = request.getParameter("comment");
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/tms2","root","Root24");
			PreparedStatement ps = con.prepareStatement("insert into review(reviewer_name,rating,comment) values(?,?,?)");
			
			ps.setString(1, name);
			ps.setInt(2, no);
			ps.setString(3, comment);
			ps.executeUpdate();
			
			PrintWriter out = response.getWriter();
			out.println("<html><head>");
			out.println("<body>");
			out.println("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" \r\n"
			   		+ "    integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\" crossorigin=\"anonymous\">");
			  out.println("<div class=container pt-5>");
		  out.println("<p class='text-center fs-1 text-danger shadow bg-light p-5 mt-5 pb-3'>Submitted Your Review</p>");
		  out.println("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js\" \r\n"
			   		+ "    integrity=\"sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz\" crossorigin=\"anonymous\"></script>");
		  out.println("<div class='text-center'>");
		   out.println("<a href='customer.jsp' class='text-center btn btn-sm btn-primary '>Back To Homepage</a>");
		   out.println("</div>");
		  out.println("</body>");
		  
			out.println("</head></html>");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
