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

@WebServlet("/add_destination")
public class add_destination extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public add_destination() {
        super();
      
    }


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String Description = request.getParameter("description");
		int prices = Integer.parseInt(request.getParameter("prices"));
		
		 try {
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 Connection  con =DriverManager.getConnection("jdbc:mysql://localhost:3306/tms2","root","Root24");
			 PreparedStatement ps = con.prepareStatement("insert into admin_destination(destination_name,description,Prices) values(?,?,?)");
			 ps.setString(1,name);
			 ps.setString(2, Description);
			 ps.setInt(3, prices);
			 
			 ps.executeUpdate();
			 PrintWriter out = response.getWriter();
			
			 out.print("<html><head>");
			 out.println("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" \r\n"
				   		+ "    integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\" crossorigin=\"anonymous\">");
			 out.print("<body>");
			 out.print("<p class='p-5 m-5 text-danger bg-light shadow fs-1 text-center'>Destination added Successfully</p>");
			  out.println("<div class='text-center'>");
			   out.println("<a href='Admin.jsp' class='text-center btn btn-sm btn-primary '>Back To Homepage</a>");
			   out.println("</div>");
			 out.print("</body>");
			 out.print("</head></html>");
			 		
//			 out.print(name);
//			 out.print(Description);
//			 out.print(prices);
			 
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
		
	}

}
