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


@WebServlet("/subscribe")
public class subscribe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public subscribe() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email=request.getParameter("email");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tms2","root","Root24");
			 PreparedStatement ps = con.prepareStatement("insert into subscribe(subscriber_name,subscriber_email) values(?,?)");
			
			 ps.setString(1, name);
			 ps.setString(2, email);
			 ps.executeUpdate();
			 PrintWriter out = response.getWriter();
			   out.println("<html><head>");
			   out.println("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" \r\n"
				   		+ "    integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\" crossorigin=\"anonymous\">");
			
			   out.println("<body>");
			  
			   out.println("<p class='text-warning bg-light m-5 p-5 shadow text-center fs-2'>Subscribed ! </p>");
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
